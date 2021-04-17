#include <Arduino.h>
/*
  ▽機能概要
  　3軸センサのGセンサの値を取得
  　LDCに表示
  補正値
  XZ = 91.9063636363636
  YZ = 90.1118181818182
*/

#include <WiFi.h>
#include <ESPmDNS.h>

//一度書き込むとEスケに書き込まれるため変えられない
//https://pointofviewpoint.linclip.com/archives/2521
const char ssid[] = "*******"; // SSID
const char pass[] = "*******";  // password

const char hostName1[] = "*******";
const char hostName2[] = "*******";

const IPAddress ip(192, 168, 20, 2);      // IPアドレス
const IPAddress subnet(255, 255, 255, 0); // サブネットマスク
static WiFiUDP wifiUdp;
static const int UdpPort = 8000; //送信先のポート
IPAddress MAC_ip;                // PCのIPアドレス

#include <LiquidCrystal.h>
const int RS_PIN = 23;
//const int RW_PIN = GND;
const int E_PIN = 22;
const int DB4_PIN = 21;
const int DB5_PIN = 17;
const int DB6_PIN = 19;
const int DB7_PIN = 18;
LiquidCrystal lcd = LiquidCrystal(RS_PIN, E_PIN, DB4_PIN, DB5_PIN, DB6_PIN, DB7_PIN);

#include <Wire.h>
// BMX055　加速度センサのI2Cアドレス
#define Addr_Accl 0x19 // (JP1,JP2,JP3 = Openの時)
// BMX055　ジャイロセンサのI2Cアドレス
#define Addr_Gyro 0x69 // (JP1,JP2,JP3 = Openの時)
// BMX055　磁気センサのI2Cアドレス
#define Addr_Mag 0x13 // (JP1,JP2,JP3 = Openの時)

int SDA_pin = 26;
int SCL_pin = 25;

// センサーの値を保存するグローバル関数
float xAccl = 0.00;
float yAccl = 0.00;
float zAccl = 0.00;
//センサ補正値　BMX_AccComp_forESP.pyで補正値確認
float xAccl_comp = 0.26678122109157343;
float yAccl_comp = -0.8199997054058032;
float zAccl_comp = 0.265936463806726;

//xyの角度補正値
float degXZ = 0.0;
float degXY = 0.0;
float degXZ_comp = 0.0;
float degXY_comp = 0.0;

float xGyro = 0.00;
float yGyro = 0.00;
float zGyro = 0.00;

short int xMag = 0;
short int yMag = 0;
short int zMag = 0;

//地磁気補正値
double xMag_comp = -182.94385235431469;
double yMag_comp = 66.0239844634298;
double zMag_comp = -3.955710620370212;

//=====================================================================================//
void BMX055_Init()
{
  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Accl);
  Wire.write(0x0F); // Select PMU_Range register
  Wire.write(0x03); // Range = +/- 2g
  Wire.endTransmission();
  delay(100);
  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Accl);
  Wire.write(0x10); // Select PMU_BW register
  Wire.write(0x08); // Bandwidth = 7.81 Hz
  Wire.endTransmission();
  delay(100);
  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Accl);
  Wire.write(0x11); // Select PMU_LPW register
  Wire.write(0x00); // Normal mode, Sleep duration = 0.5ms
  Wire.endTransmission();
  delay(100);

  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Gyro);
  Wire.write(0x0F); // Select Range register
  Wire.write(0x04); // Full scale = +/- 125 degree/s
  Wire.endTransmission();
  delay(100);
  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Gyro);
  Wire.write(0x10); // Select Bandwidth register
  Wire.write(0x07); // ODR = 100 Hz
  Wire.endTransmission();
  delay(100);
  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Gyro);
  Wire.write(0x11); // Select LPM1 register
  Wire.write(0x00); // Normal mode, Sleep duration = 2ms
  Wire.endTransmission();
  delay(100);

  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Mag);
  Wire.write(0x4B); // Select Mag register
  Wire.write(0x83); // Soft reset
  Wire.endTransmission();
  delay(100);
  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Mag);
  Wire.write(0x4B); // Select Mag register
  Wire.write(0x01); // Soft reset
  Wire.endTransmission();
  delay(100);
  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Mag);
  Wire.write(0x4C); // Select Mag register
  Wire.write(0x00); // Normal Mode, ODR = 10 Hz
  Wire.endTransmission();
  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Mag);
  Wire.write(0x4E); // Select Mag register
  Wire.write(0x84); // X, Y, Z-Axis enabled
  Wire.endTransmission();
  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Mag);
  Wire.write(0x51); // Select Mag register
  Wire.write(0x04); // No. of Repetitions for X-Y Axis = 9
  Wire.endTransmission();
  //------------------------------------------------------------//
  Wire.beginTransmission(Addr_Mag);
  Wire.write(0x52); // Select Mag register
  Wire.write(0x16); // No. of Repetitions for Z-Axis = 15
  Wire.endTransmission();
}

//=====================================================================================//
void BMX055_Accl()
{
  short int data[6];
  for (int i = 0; i < 6; i++)
  {
    Wire.beginTransmission(Addr_Accl);
    Wire.write((2 + i)); // Select data register
    Wire.endTransmission();
    Wire.requestFrom(Addr_Accl, 1); // Request 1 byte of data
    // Read 6 bytes of data
    // xAccl lsb, xAccl msb, yAccl lsb, yAccl msb, zAccl lsb, zAccl msb
    if (Wire.available() == 1)
      data[i] = Wire.read();
  }
  // Convert the data to 12-bits
  xAccl = ((data[1] * 256) + (data[0] & 0xF0)) / 16;
  if (xAccl > 2047)
    xAccl -= 4096;
  yAccl = ((data[3] * 256) + (data[2] & 0xF0)) / 16;
  if (yAccl > 2047)
    yAccl -= 4096;
  zAccl = ((data[5] * 256) + (data[4] & 0xF0)) / 16;
  if (zAccl > 2047)
    zAccl -= 4096;
  xAccl = xAccl * 0.0098 + xAccl_comp; // renge +-2g
  yAccl = yAccl * 0.0098 + yAccl_comp; // renge +-2g
  zAccl = zAccl * 0.0098 + zAccl_comp; // renge +-2g
}

//=====================================================================================//
void BMX055_Gyro()
{
  short int data[6];
  for (int i = 0; i < 6; i++)
  {
    Wire.beginTransmission(Addr_Gyro);
    Wire.write((2 + i)); // Select data register
    Wire.endTransmission();
    Wire.requestFrom(Addr_Gyro, 1); // Request 1 byte of data
    // Read 6 bytes of data
    // xGyro lsb, xGyro msb, yGyro lsb, yGyro msb, zGyro lsb, zGyro msb
    if (Wire.available() == 1)
      data[i] = Wire.read();
  }
  // Convert the data
  xGyro = (data[1] * 256) + data[0];
  if (xGyro > 32767)
    xGyro -= 65536;
  yGyro = (data[3] * 256) + data[2];
  if (yGyro > 32767)
    yGyro -= 65536;
  zGyro = (data[5] * 256) + data[4];
  if (zGyro > 32767)
    zGyro -= 65536;

  xGyro = xGyro * 0.0038; //  Full scale = +/- 125 degree/s
  yGyro = yGyro * 0.0038; //  Full scale = +/- 125 degree/s
  zGyro = zGyro * 0.0038; //  Full scale = +/- 125 degree/s
}
//=====================================================================================//

void BMX055_Mag()
{
  short int data[8];
  for (int i = 0; i < 8; i++)
  {
    Wire.beginTransmission(Addr_Mag);
    Wire.write((0x42 + i)); // Select data register
    Wire.endTransmission();
    Wire.requestFrom(Addr_Mag, 1); // Request 1 byte of data
    // Read 6 bytes of data
    // xMag lsb, xMag msb, yMag lsb, yMag msb, zMag lsb, zMag msb
    if (Wire.available() == 1)
      data[i] = Wire.read();
  }

  // Convert the data
  xMag = ((data[1] << 5) | (data[0] >> 3));
  if (xMag > 4095)
    xMag -= 8192;
  xMag -= xMag_comp; //オフセット補正

  yMag = ((data[3] << 5) | (data[2] >> 3));
  if (yMag > 4095)
    yMag -= 8192;
  yMag -= yMag_comp; //オフセット補正

  zMag = ((data[5] << 7) | (data[4]));
  if (zMag > 16383)
    zMag -= 32768;
  zMag -= zMag_comp; //オフセット補正
}

//=====================================================================================//
void transmitDataViaWifi(float transData1,float transData2)
{
  int sentAng;
  byte sentData;
  wifiUdp.beginPacket(MAC_ip, UdpPort);

  //送信データをLSBをかけて物理値からRAM値に変換
  sentAng = (transData1 * 256);
  //[符号][上位８ビット][下位８ビット]
  //  符号を先頭の1バイトとして送信
  if (sentAng >= 0)
  {
    wifiUdp.write(0xff);
  }
  else
  {
    wifiUdp.write(0x00);
  }
  //unsignedに変換
  sentAng = abs(sentAng);
  //上位８ビット
  sentData = uint16_t((sentAng & 0xff00) >> 8);
  wifiUdp.write(sentData); //10進数のaskiiで送信される
  //下位８ビット
  sentData = (sentAng & 0x00ff);
  wifiUdp.write(sentData); //10進数のaskiiで送信される

  //送信データをLSBをかけて物理値からRAM値に変換
  sentAng = (transData2 * 256);
  //[符号][上位８ビット][下位８ビット]
  //  符号を先頭の1バイトとして送信
  if (sentAng >= 0)
  {
    wifiUdp.write(0xff);
  }
  else
  {
    wifiUdp.write(0x00);
  }
  //unsignedに変換
  sentAng = abs(sentAng);
  //上位８ビット
  sentData = uint16_t((sentAng & 0xff00) >> 8);
  wifiUdp.write(sentData); //10進数のaskiiで送信される
  //下位８ビット
  sentData = (sentAng & 0x00ff);
  wifiUdp.write(sentData); //10進数のaskiiで送信される

  wifiUdp.endPacket();
}
//=====================================================================================//
void WifiInit()
{
  //Wifi
  IPAddress notFoundIP(0, 0, 0, 0);
  const char clientName[] = "epsclient";
  WiFi.softAP(ssid, pass);           // SSIDとパスの設定
  delay(100);                        // 追記：このdelayを入れないと失敗する場合がある
  WiFi.softAPConfig(ip, ip, subnet); // IPアドレス、ゲートウェイ、サブネットマスクの設定
  IPAddress myIP = WiFi.softAPIP();  // WiFi.softAPIP()でWiFi起動

  //MDNS
  Serial.println("Setting up mDNS...");
  if (MDNS.begin(clientName))
  {
    Serial.println("mDNS started");
  }
  else
  {
    // 失敗したらリセット
    Serial.println("mDNS failed to start");
    Serial.println("Reboot...");

    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("mDNS failed");
    delay(1000);

    ESP.restart();
  }

  // 相手のIPアドレス取得
  MAC_ip = notFoundIP;
  int tryCount = 0;
  while (MAC_ip == notFoundIP)
  {
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Wating for");
    lcd.setCursor(1, 1);
    lcd.print("PC Connection..");

    MAC_ip = MDNS.queryHost(hostName1);
    if (MAC_ip == notFoundIP)
    {
      MAC_ip = MDNS.queryHost(hostName2);
    }
    Serial.println("Connecting now..");
    Serial.println(MAC_ip);
    // 接続成功
    if (MAC_ip != notFoundIP)
    {
      lcd.clear();
      lcd.setCursor(0, 0);
      lcd.print("Connected!");
      delay(1000);
      break;
    }
    // 10回失敗したらリブート
    else if (tryCount >= 10)
    {
      Serial.println("Reboot..");
      delay(1000);
      ESP.restart();
    }
    delay(1000);
    tryCount++;
  }

  lcd.setCursor(0, 1);
  lcd.print(MAC_ip);

  Serial.println("PC Host name");
  Serial.println(MAC_ip); //見つからな場合は0.0.0.0

  //UDP
  wifiUdp.begin(9000);
}

//=====================================================================================//
//ESPのリセットにより現在角度を取得してかえす
float CompensateAccDeg(char ax)
{
  int calNum = 16; //平均回数
  float deg_comp_temp = 0;
  for (int i = 0; i < calNum; i++)
  {
    BMX055_Accl();
    if (ax == 'x')
    {
      deg_comp_temp += (atan2(xAccl, zAccl) * 57.324840764331206);
    }
    else if (ax == 'y')
    {
      deg_comp_temp += (atan2(xAccl, yAccl) * 57.324840764331206);
    }
    else
    {
      deg_comp_temp = 0;
    }
    delay(100);
    lcd.print(".");
  }
  return deg_comp_temp / calNum; //平均化
}

void setup()
{
  pinMode(SDA_pin, INPUT_PULLUP); //デフォルトのPIN21,22を使用しない場合
  pinMode(SCL_pin, INPUT_PULLUP);
  // Wire(Arduino-I2C)の初期化
  Wire.begin(SDA_pin, SCL_pin); //デフォルトのPIN21,22を使用しない場合
  // デバック用シリアル通信
  Serial.begin(9600);
  while (!Serial)
  {
  }
  lcd.begin(16, 2);
  WifiInit();

  //BMX055 初期化
  BMX055_Init();
  delay(1000);

  degXZ_comp = 91.9063636363636;
  degXY_comp = 90.1118181818182;
}
//=====================================================================================//

float scatteringSigma = 0.036; //ノイズでパタつく標準偏差
float degXZ_temp = 0;
float degXY_temp = 0;
int loop_count = 0;
void loop()
{
  //BMX055 加速度の読み取り
  BMX055_Accl();
  degXZ = (atan2(xAccl, zAccl) * 57.324840764331206);
  degXY = (atan2(xAccl, yAccl) * 57.324840764331206);
  degXZ_temp += (atan2(xAccl, zAccl) * 57.324840764331206);
  degXY_temp += (atan2(xAccl, yAccl) * 57.324840764331206);

  loop_count++;

  if (loop_count >= 10)
  {
    degXZ = degXZ_temp / 10;
    degXY = degXY_temp / 10;

    lcd.clear();
    lcd.setCursor(0, 0);
    if (degXZ - degXZ_comp < -2 * scatteringSigma)
    {
      lcd.print("Nega: ");
    }
    else if (degXZ - degXZ_comp > 2 * scatteringSigma)
    {
      lcd.print("Posi: ");
    }
    else
    {
      lcd.print("Just: ");
    }

    lcd.print(abs(degXZ - degXZ_comp), 2);
    lcd.print("deg");
    lcd.setCursor(0, 1);
    lcd.print("InstAng: ");
    lcd.print(degXY - degXY_comp, 1);
    lcd.print("deg");
    //  Serial.println(deg - degXZ_comp);

    loop_count = 0;
    degXZ_temp = 0;
    degXY_temp = 0;

    transmitDataViaWifi((degXZ - degXZ_comp),(degXY - degXY_comp));
  }
  delay(50);
}
