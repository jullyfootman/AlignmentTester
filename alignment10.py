#!/usr/bin/env python3
'''
UDP_IPで受信をトリガに描画を更新

'''
# -*- coding: utf8 -*-
import tkinter as tk
import datetime
from tkinter import messagebox
from PIL import Image, ImageTk
import socket
import threading
from contextlib import closing
import sys,glob,math
import pandas as pd


def drawComMeter(x,y,r,col,deg):
    needle_deg = (-1*deg + 90 )
    outerOvalRate = 1.1
    r_out = outerOvalRate * r
    canvas.create_oval(x-r_out, y-r_out,x+r_out,y + r_out, fill = col)
    canvas.create_oval(x-r,y-r,x+r,y+r,fill =col,tag='oval_vel')
    # #Draw needle
    hdl_needle = canvas.create_line(x,y,x+0.9*r*math.cos(math.radians(needle_deg)),y+0.9*r*math.sin(math.radians(needle_deg)),width = 3.0,fill='#ff0000')
    canvas.create_oval(x-0.1*r, y-0.1*r, x+0.1*r, y+0.1*r, fill = '#ff0000',tag='oval_vel')

    #Draw Dials
    R = 1
    for i in range(24):
        if i%3 == 0:
            R = 0.85
            W = 3.0
        else:
            R = 0.9
            W = 2.0
        canvas.create_line(
            x+R*r*math.cos(math.radians(i*15)),
            y+R*r*math.sin(math.radians(i*15)),
            x+1.0*r*math.cos(math.radians(i*15)),
            y+1.0*r*math.sin(math.radians(i*15)),
            width = W)
        
    #Draw each char
    list_locandVal4met = [[90,0],[90+45,-45],[180,-90],[180+45,-135],[270,180],[270+45,135],[360,90],[360+45,45]]
    for l in list_locandVal4met:
        canvas.create_text(x+0.65*r*math.cos(math.radians(l[0])), y+0.65*r*math.sin(math.radians(l[0])), text = l[1], font = ('Gothic', 12))
    # センターの文字
    canvas.create_text(x+0.3*r*math.cos(math.radians(90)), y+0.3*r*math.sin(math.radians(90)), text = 'deg', font = ('Gothic', 10), tags = 'ODO_meter')
    return hdl_needle

# 各ポジションの表示の更新
def refleshMeter(disp_value,WHEEL):
    # 棒グラフの中心座標
    NUTRAL_POS = df_pos.loc[WHEEL,'POS_X'] + length_rect / 2
    # 現在座標
    if 'cas' in WHEEL:
        CURRENT_POS = df_pos.loc[WHEEL,'POS_X'] + GRAPH_LSB * disp_value
    else:
        CURRENT_POS = NUTRAL_POS + GRAPH_LSB * disp_value
    #グラフを再描画
    createRectGraph(df_pos.loc[WHEEL,'POS_X'],df_pos.loc[WHEEL,'POS_Y'],WHEEL,df_pos.loc[WHEEL,'TRGT_ANG_UPR'],df_pos.loc[WHEEL,'TRGT_ANG_LWR'])
    # グラフの範囲内であれば線表示
    if (CURRENT_POS < df_pos.loc[WHEEL,'POS_X']+length_rect)&(CURRENT_POS > df_pos.loc[WHEEL,'POS_X']):
        canvas.create_line(CURRENT_POS, df_pos.loc[WHEEL,'POS_Y'], CURRENT_POS, df_pos.loc[WHEEL,'POS_Y'] + hight_rect, fill = '#ff0000',width=3)

#UDP受信をトリガに計算し描画を更新 別スレッド
def udp_receive():
        global CURRENT_WHEEL,RESULT,MODE,df_result,DF_ORIGIN
        print('udp_receive')
        temp_ANG = 0 #平均化するために積算する仮変数
        CNT_MAX = 10 #平均値をとるための回数 
        cnt = CNT_MAX #平均値をとるための回数       
        with closing(sock):
            while cnt > 0:
                try:
                    data,addr = sock.recvfrom(1024)
                except:
                    print('null sock')

            # アライメント値の受信データデコード
                recieved_Value  = int.from_bytes(data[1:3],'big')/256 #1バイト目は符号　値は絶対値
                recieved_Value2  = int.from_bytes(data[4:6],'big')/256 #1バイト目は符号　値は絶対値 

            #計測中の表示
                if (MODE == 'MEASURE') | ('SET' in MODE) | ('CALCULATION' in MODE): #ボタンが押されたら
                    canvas.itemconfig('disp_wheel'+ CURRENT_WHEEL, text = CURRENT_WHEEL,fill='black')
                    if data[0] == 0xff:
                        recieved_sign = 'Positive'
                        temp_ANG += recieved_Value
                        #表示更新
                        refleshMeter(recieved_Value, CURRENT_WHEEL)
                        canvas.itemconfig('disp_'+ CURRENT_WHEEL, text = ' {:.2f}'.format(recieved_Value)+'deg')
                    else:
                        recieved_sign = 'Negative'
                        temp_ANG -= recieved_Value
                        #表示更新
                        refleshMeter(-1*recieved_Value, CURRENT_WHEEL)
                        canvas.itemconfig('disp_'+ CURRENT_WHEEL, text = ' {:.2f}'.format(-1*recieved_Value)+'deg')
                    cnt -= 1
                    print(cnt,recieved_sign,temp_ANG,recieved_Value)
                    
                    #結果の表示
                    if cnt == 0:
                        #キャスタ角の測定
                        if 'cas' in CURRENT_WHEEL:
                            # 外側でセット
                            if MODE == 'SET':
                                DF_ORIGIN.loc[CURRENT_WHEEL,'val'] = temp_ANG/CNT_MAX #０点の値を一時保存
                                CALCULATION_DONE = False
                                DF_ORIGIN.loc[CURRENT_WHEEL,'set'] = True
                                canvas.itemconfig('disp_'+ CURRENT_WHEEL, text = 'origin is set')
                            # 内側で計算 ±20deg前提の計算
                            elif (MODE == 'CALCULATION') & (DF_ORIGIN.loc[CURRENT_WHEEL,'set']): 
                                RESULT = 57.297 * (-temp_ANG/CNT_MAX + DF_ORIGIN.loc[CURRENT_WHEEL,'val']) / 40
                                CALCULATION_DONE = True          
                            # それ以外
                            elif (MODE == 'CALCULATION') & (not DF_ORIGIN.loc[CURRENT_WHEEL,'set']):
                                CALCULATION_DONE = False
                        #それ以外の単純な計測
                        else:
                            RESULT = temp_ANG/CNT_MAX #平均化処理
                            CALCULATION_DONE = True
                        
                        #結果が確定したら    
                        if CALCULATION_DONE:
                            #描画の変更
                            refleshMeter(RESULT, CURRENT_WHEEL)
                            canvas.itemconfig('disp_'+ CURRENT_WHEEL, text = '{:.2f}'.format(RESULT)+'deg')
                            
                            #トレランス判定
                            if (RESULT <= df_pos.loc[CURRENT_WHEEL,'TRGT_ANG_UPR']) & (RESULT >= df_pos.loc[CURRENT_WHEEL,'TRGT_ANG_LWR']):
                                JUDGMENT = 'OK'
                                TXT_COLOR = 'blue'
                            else:
                                JUDGMENT = 'NG'
                                TXT_COLOR = 'red' 
                                print(cnt,recieved_sign,RESULT)
                            #判定結果の表示
                            canvas.itemconfig('disp_wheel'+ CURRENT_WHEEL, text = JUDGMENT,fill=TXT_COLOR)#,activefill="red")
                            
                            df_result = df_result.append(pd.DataFrame({
                                                'date':datetime.datetime.now(),
                                                'wheel':CURRENT_WHEEL,
                                                'ang':RESULT,
                                                'Judgment':JUDGMENT,
                                                'vehicleHeight':df_pos.loc[CURRENT_WHEEL,'vehicleHeight']
                                                },index=[0])
                                                )
                            CALCULATION_DONE = False
                            
                        MODE = 'WAIT'
                        cnt = CNT_MAX
                        temp_ANG = 0
                else:
                # 丸メータの表示　計測中でない時だけ更新
                    # 正負判定 キャンバー側
                    if data[0] != 0xff:
                        recieved_Value_disp = -1*recieved_Value
                    else:
                        recieved_Value_disp = recieved_Value
                    #メータの針更新
                    x = ComMeterPos_x+ComMeterPos_xoffset
                    y = ComMeterPos_y
                    r = ComMeterPos_r
                    needle_deg = (-1*recieved_Value_disp + 90 )
                    canvas.coords(hdl_needle2,x,y,x+0.9*r*math.cos(math.radians(needle_deg)),y+0.9*r*math.sin(math.radians(needle_deg)))
                    canvas.itemconfig('disp_comMet2_TEXT', text = 'CAMBER : {:.1f}'.format(recieved_Value_disp)+'deg')

                    # 正負判定　傾き側
                    recieved_Value2  = int.from_bytes(data[4:6],'big')/256 #1バイト目は符号　値は絶対値 
                    if data[3] != 0xff:
                        recieved_Value2 = -1*recieved_Value2
                    #メータの針更新
                    x = ComMeterPos_x
                    needle_deg = (-1*recieved_Value2 + 90 )
                    canvas.coords(hdl_needle1,x,y,x+0.9*r*math.cos(math.radians(needle_deg)),y+0.9*r*math.sin(math.radians(needle_deg)))
                    canvas.itemconfig('disp_comMet1_TEXT', text = 'TILT : {:.1f}'.format(recieved_Value2)+'deg')

def on_closing():
    if messagebox.askokcancel("Quit", "Do you want to save?"):
        df_result.to_csv('log.txt',index=False)
    sock.close()
    root.destroy()
    sys.exit()

#　各ポジションのグラフの表示・再表示
def createRectGraph(POS_X,POS_Y, WHEEL,TARGET_POSI, TARGET_NEGA):
    NUTRAL_POS = POS_X + length_rect / 2
    TAG_POS_POSI = NUTRAL_POS + GRAPH_LSB * TARGET_POSI
    TAG_POS_NEGA = NUTRAL_POS + GRAPH_LSB * TARGET_NEGA  
    TAG_POS_POSI_CAS = POS_X + GRAPH_LSB * TARGET_POSI
    TAG_POS_NEGA_CAS = POS_X + GRAPH_LSB * TARGET_NEGA         
    #グラフ描画
    canvas.create_rectangle(POS_X, POS_Y, POS_X+length_rect, POS_Y+hight_rect, fill = '#ffffff')#, stipple = 'gray25'
    if 'cas' in WHEEL: #キャスターの場合
        COLOR_TAG = '#00ffbb'  
    else:
        COLOR_TAG = '#00bbff'
        
    #トレランス範囲
    if not('cas' in WHEEL): 
        canvas.create_rectangle(TAG_POS_NEGA, POS_Y, TAG_POS_POSI, POS_Y + hight_rect, fill = COLOR_TAG)#, stipple = 'gray25')
    else:
        canvas.create_rectangle(TAG_POS_NEGA_CAS, POS_Y, TAG_POS_POSI_CAS, POS_Y + hight_rect, fill = COLOR_TAG)#, stipple = 'gray25')
    #目盛り表示
    #センター
    if not('cas' in WHEEL): 
        canvas.create_line(NUTRAL_POS, POS_Y+ hight_rect-15, NUTRAL_POS, POS_Y + hight_rect, fill = '#000000',width=1)
    #目盛り　length_rectを等分
    dividNum = 20 #メモリの数
    pitch = length_rect / dividNum  
    for i in range(dividNum):
        canvas.create_line(POS_X+(i+1)*pitch, POS_Y+ hight_rect-5, POS_X+(i+1)*pitch, POS_Y + hight_rect, fill = '#000000',width=1)
        
    disp_text = 'Height : ' + '{:.1f}'.format(df_pos.loc[WHEEL,'vehicleHeight'])+'mm'
    disp_text2 = 'Low: '+ '{:.1f}'.format(df_pos.loc[WHEEL,'TRGT_ANG_LWR']) +'deg / High:'+ '{:.1f}'.format(df_pos.loc[WHEEL,'TRGT_ANG_UPR'])+'deg'
    canvas.itemconfig('disp_Height'+WHEEL, text = disp_text)
    canvas.itemconfig('disp_TRGT_ANG'+WHEEL, text = disp_text2)

#車高による目標値の変更　
def setTolerance(WHEEL,vehicleHeight):
    global df_pos
    if (328 < vehicleHeight < 377):
        # キャスター角計算
        if ('cas' in WHEEL):
            df_pos.loc[WHEEL,'TRGT_ANG_UPR'] =  12.475 - 0.0228 * vehicleHeight + 0.75
            df_pos.loc[WHEEL,'TRGT_ANG_LWR'] =  12.475 - 0.0228 * vehicleHeight - 0.75
        # キャンバー角計算
        else:
            df_pos.loc[WHEEL,'TRGT_ANG_UPR'] =  0.0342 * vehicleHeight -11.667 + 0.75
            df_pos.loc[WHEEL,'TRGT_ANG_LWR'] =  0.0342 * vehicleHeight -11.667 - 0.75
        canvas.itemconfig('disp_MESS', text = 'Message....')
    else:
            canvas.itemconfig('disp_MESS', text = 'Waring incrrect vehicleHeight Value!!!')
            messagebox.showerror('Err','Incrrect vehicleHeight Value')


def handlerButtom_quit(event):
    on_closing()

def handlerButtom_FR(event):
    global MODE,CURRENT_WHEEL
    if MODE == 'WAIT':
        MODE = 'MEASURE'
        CURRENT_WHEEL = KEY_FR
        print('Pressed '+CURRENT_WHEEL)
        df_pos.loc[CURRENT_WHEEL,'vehicleHeight'] = int(TextBoxes[CURRENT_WHEEL].get())
        setTolerance(CURRENT_WHEEL,df_pos.loc[CURRENT_WHEEL,'vehicleHeight']) 

def handlerButtom_FL(event):
    global MODE,CURRENT_WHEEL
    if MODE == 'WAIT':
        MODE = 'MEASURE'
        CURRENT_WHEEL = KEY_FL
        print('Pressed '+CURRENT_WHEEL)
        df_pos.loc[CURRENT_WHEEL,'vehicleHeight'] = int(TextBoxes[CURRENT_WHEEL].get())
        setTolerance(CURRENT_WHEEL,df_pos.loc[CURRENT_WHEEL,'vehicleHeight']) 

def handlerButtom_FR_CAS(event):
    global MODE,CURRENT_WHEEL
    if MODE == 'WAIT':
        MODE = 'CALCULATION'
        CURRENT_WHEEL = KEY_FRcas
        print('CALCULATION '+CURRENT_WHEEL)
        df_pos.loc[CURRENT_WHEEL,'vehicleHeight'] = int(TextBoxes[CURRENT_WHEEL].get())
        setTolerance(CURRENT_WHEEL,df_pos.loc[CURRENT_WHEEL,'vehicleHeight']) 

def handlerButtom_FR_CAS_SET(event):
    global MODE,CURRENT_WHEEL
    if MODE == 'WAIT':
        MODE = 'SET'
        CURRENT_WHEEL = KEY_FRcas
        print('SET '+CURRENT_WHEEL)
        df_pos.loc[CURRENT_WHEEL,'vehicleHeight'] = int(TextBoxes[CURRENT_WHEEL].get())
        setTolerance(CURRENT_WHEEL,df_pos.loc[CURRENT_WHEEL,'vehicleHeight']) 

def handlerButtom_FL_CAS(event):
    global MODE,CURRENT_WHEEL
    if MODE == 'WAIT':
        MODE = 'CALCULATION'
        CURRENT_WHEEL = KEY_FLcas
        print('CALCULATION '+CURRENT_WHEEL)
        df_pos.loc[CURRENT_WHEEL,'vehicleHeight'] = int(TextBoxes[CURRENT_WHEEL].get())
        setTolerance(CURRENT_WHEEL,df_pos.loc[CURRENT_WHEEL,'vehicleHeight']) 

def handlerButtom_FL_CAS_SET(event):
    global MODE,CURRENT_WHEEL
    if MODE == 'WAIT':
        MODE = 'SET'
        CURRENT_WHEEL = KEY_FLcas
        print('SET '+CURRENT_WHEEL)
        df_pos.loc[CURRENT_WHEEL,'vehicleHeight'] = int(TextBoxes[CURRENT_WHEEL].get())
        setTolerance(CURRENT_WHEEL,df_pos.loc[CURRENT_WHEEL,'vehicleHeight']) 

def handlerButtom_RR(event):
    global MODE,CURRENT_WHEEL
    if MODE == 'WAIT':
        MODE = 'MEASURE'
        CURRENT_WHEEL = KEY_RR
        print('Pressed '+CURRENT_WHEEL)
        df_pos.loc[CURRENT_WHEEL,'vehicleHeight'] = int(TextBoxes[CURRENT_WHEEL].get())
        setTolerance(CURRENT_WHEEL,df_pos.loc[CURRENT_WHEEL,'vehicleHeight']) 

def handlerButtom_RL(event):
    global MODE,CURRENT_WHEEL
    if MODE == 'WAIT':
        MODE = 'MEASURE'
        CURRENT_WHEEL = KEY_RL
        print('Pressed '+CURRENT_WHEEL)
        df_pos.loc[CURRENT_WHEEL,'vehicleHeight'] = int(TextBoxes[CURRENT_WHEEL].get())
        setTolerance(CURRENT_WHEEL,df_pos.loc[CURRENT_WHEEL,'vehicleHeight']) 

#車両イメージのロード
def loadImg():#Loading images
    imgs = []
    for f in glob.glob('vehicle.png'):
        img_background = f #IMAGE
        image = Image.open(img_background) #IMAGE
        img_w, img_h = image.size #IMAGE
        w = 230
        image = image.resize((w,int(img_h*(w/img_w))))
        imgs.append(ImageTk.PhotoImage(image = image)) #IMAGE
    return imgs

if __name__ == '__main__':
    KEY_FR = 'FR'
    KEY_FL = 'FL'
    KEY_FRcas = 'FRcas'
    KEY_FLcas = 'FLcas'
    KEY_RR = 'RR'
    KEY_RL = 'RL'
    
    WHEEL_LIST = [KEY_FR,KEY_FL,KEY_FRcas,KEY_FLcas,KEY_RR,KEY_RL]
    CURRENT_WHEEL = KEY_FR
    MODE = 'WAIT'
    
    # WIfi接続設定　ソケット生成
    UDP_IP=""
    UDP_PORT=8000
    sock=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
    sock.bind((UDP_IP,UDP_PORT))
    
    #Frameサイズ
    cnvs_width = 950 #pix
    cnvs_height = 650 #pix
    length_rect = 200 #pix
    hight_rect = 30 #pix
    X_RANGE = 5 #deg

    #表示位置設定読み込み
    df_pos = pd.read_csv('init.txt', index_col=0)
    
    #結果の格納用
    df_result = pd.DataFrame()
    DF_ORIGIN = pd.DataFrame([[0,False],[0,False]])
    DF_ORIGIN.index = [KEY_FRcas,KEY_FLcas]
    DF_ORIGIN.columns = ['val','set']
    RESULT = -100
    
    #計測が完了したグラグ
    CALCULATION_DONE = False
   
    #1degあたりのグラグピクセル数    
    GRAPH_LSB = length_rect / (2 * X_RANGE)

    # GUIフレーム
    root = tk.Tk()
    root.title('Alignment Tester')
    frame = tk.Frame(root,bg = '#ffffff')
    canvas = tk.Canvas(frame, bg = '#ffffff', width = cnvs_width, height = cnvs_height)
    frame.pack(expand=1)
    canvas.pack(expand=1)
    
    # Loading Image
    imgList = loadImg()
    # イメージの表示
    canvas.create_image(int(cnvs_width/2), int(cnvs_height/2)+90, anchor='center', image=imgList[0], tag='tag_img') #IMAGE >> 'img' must be 
 
    #丸メータ生成
    ComMeterPos_x = cnvs_width/2-80
    ComMeterPos_y = 100
    ComMeterPos_r = 50
    ComMeterPos_col = '#ddffff'
    ComMeterPos_xoffset = 160
    # 傾きグラフの描画
    hdl_needle1 = drawComMeter(ComMeterPos_x,ComMeterPos_y,ComMeterPos_r ,ComMeterPos_col,0)
    hdl_needle2 = drawComMeter(ComMeterPos_x+ComMeterPos_xoffset,ComMeterPos_y,ComMeterPos_r ,ComMeterPos_col,0)
    canvas.create_text(ComMeterPos_x-ComMeterPos_r,ComMeterPos_y+70, text = 'TILT :', font = ('Gothic', 15), tags = 'disp_comMet1_TEXT' ,anchor ='w')
    canvas.create_text(ComMeterPos_x+ComMeterPos_xoffset-ComMeterPos_r,ComMeterPos_y+70, text = 'CAMBER :', font = ('Gothic', 15), tags = 'disp_comMet2_TEXT' ,anchor ='w')  

    # メッセージテキスト
    canvas.create_text(ComMeterPos_x-70,cnvs_height-10, text = 'Message....', font = ('Gothic', 20), tags = 'disp_MESS' ,anchor ='w')  

    #Create button
    #終了ボタン
    BT_QUIT = tk.Button(frame, text=u'QUIT', width=10,height=2)
    BT_QUIT.pack(fill=tk.BOTH)
    BT_QUIT.bind("<ButtonPress>",handlerButtom_quit)
    
    #各計測開始ボタン
    BT_X_OFFSET =120#FR setボタンの横位置
    BT_X_OFFSET2 = 65#FR FL setボタンの横位置
    BT_Y_OFFSET = 105#ボタンの縦位置
    # BT_WIDTH = 18
    BT_WIDTH2 = 6
    BT_HEIGHT = 2
    
    # ボタンのハンドラ関数リスト
    handlers={
        KEY_FR:handlerButtom_FR,
        KEY_FL:handlerButtom_FL,
        KEY_FRcas:handlerButtom_FR_CAS,
        KEY_FRcas+'set':handlerButtom_FR_CAS_SET,
        KEY_FLcas:handlerButtom_FL_CAS,
        KEY_FLcas+'set':handlerButtom_FL_CAS_SET,
        KEY_RR:handlerButtom_RR,
        KEY_RL:handlerButtom_RL
        }
    # ボタン横位置調整
    BT_X_OFFSET_LIST = {
        KEY_FR:150,
        KEY_FL:150,
        KEY_FRcas:120,
        KEY_FRcas+'set':185,
        KEY_FLcas:185,
        KEY_FLcas+'set':120,
        KEY_RR:150,
        KEY_RL:150
        }
    # ボタン幅
    BT_WIDTH_LIST= {
        KEY_FR:8,
        KEY_FL:8,
        KEY_FRcas:6,
        KEY_FRcas+'set':6,
        KEY_FLcas:6,
        KEY_FLcas+'set':6,
        KEY_RR:8,
        KEY_RL:8
        }   

    # ボタン生成
    for pos in WHEEL_LIST:
        BT = tk.Button(frame, text=pos, width=BT_WIDTH_LIST[pos],height=BT_HEIGHT)
        BT.place(x=df_pos.loc[pos,'POS_X']+BT_X_OFFSET_LIST[pos], y=df_pos.loc[pos,'POS_Y']-BT_Y_OFFSET)
        BT.bind("<ButtonPress>",handlers[pos])
        print(pos,BT_WIDTH_LIST[pos],BT_X_OFFSET_LIST[pos])

    BT_FR_CAS2 = tk.Button(frame, text=u'Set', width=BT_WIDTH2,height=BT_HEIGHT)
    BT_FR_CAS2.place(x=df_pos.loc[KEY_FRcas,'POS_X']+BT_X_OFFSET+BT_X_OFFSET2, y=df_pos.loc[KEY_FRcas,'POS_Y']-BT_Y_OFFSET)
    BT_FR_CAS2.bind("<ButtonPress>",handlerButtom_FR_CAS_SET)

    #FL CAS Button
    BT_FL_CAS = tk.Button(frame, text=u'Set', width=BT_WIDTH2,height=BT_HEIGHT)
    BT_FL_CAS.place(x=df_pos.loc[KEY_FLcas,'POS_X']+BT_X_OFFSET, y=df_pos.loc[KEY_FLcas,'POS_Y']-BT_Y_OFFSET)
    BT_FL_CAS.bind("<ButtonPress>",handlerButtom_FL_CAS_SET)

    #Draw Text
    Text_pos_v = 90
    Text_pos_deg = 15
    Text_pos_vehicleHeight = 50
    TextBX_pos_v = -62
    TextBX_pos_h = 90

    TextBoxes  ={
        KEY_FR : tk.Entry(width=5),
        KEY_FL : tk.Entry(width=5),
        KEY_FRcas : tk.Entry(width=5),
        KEY_FLcas : tk.Entry(width=5),
        KEY_RR : tk.Entry(width=5),
        KEY_RL : tk.Entry(width=5)}

    for pos in WHEEL_LIST:
        createRectGraph(df_pos.loc[pos,'POS_X'],df_pos.loc[pos,'POS_Y'],pos,df_pos.loc[pos,'TRGT_ANG_UPR'],df_pos.loc[pos,'TRGT_ANG_LWR'])
        canvas.create_text(df_pos.loc[pos,'POS_X'], df_pos.loc[pos,'POS_Y']-Text_pos_v, text = pos, font = ('Gothic', 40), tags = 'disp_wheel'+ pos,anchor ='w')
        canvas.create_text(df_pos.loc[pos,'POS_X'], df_pos.loc[pos,'POS_Y']-Text_pos_deg, text = '----deg', font = ('Gothic', 25), tags = 'disp_'+ pos ,anchor ='w')
        canvas.create_text(df_pos.loc[pos,'POS_X'], df_pos.loc[pos,'POS_Y']-Text_pos_vehicleHeight, text = 'Height :            mm', font = ('Gothic', 25), tags = 'disp_vehicleHeight' ,anchor ='w')

        # トレタンスと車高の表示
        disp_text = 'Height : ' + str(df_pos.loc[pos,'vehicleHeight'])
        disp_text2 = 'Low: '+ str(df_pos.loc[pos,'TRGT_ANG_LWR'])+'deg / High:'+ str(df_pos.loc[pos,'TRGT_ANG_UPR'])+'deg'
        canvas.create_text(df_pos.loc[pos,'POS_X']+0, df_pos.loc[pos,'POS_Y']+60, text = disp_text, font = ('Gothic', 15), tags = 'disp_Height'+pos ,anchor ='w')
        canvas.create_text(df_pos.loc[pos,'POS_X']+0, df_pos.loc[pos,'POS_Y']+80, text = disp_text2, font = ('Gothic', 15), tags = 'disp_TRGT_ANG'+pos ,anchor ='w')

        # テキストボックスの生成
        TextBoxes[pos].place(x=df_pos.loc[pos,'POS_X'] + TextBX_pos_h, y=df_pos.loc[pos,'POS_Y'] + TextBX_pos_v)
        TextBoxes[pos].insert(tk.END,str(df_pos.loc[pos,'vehicleHeight']))

        if 'cas' in pos: #キャスターの場合
            Text_pos_20deg = 115
            canvas.create_text(df_pos.loc[pos,'POS_X']+110, df_pos.loc[pos,'POS_Y']-Text_pos_20deg, text = '<< 20deg', font = ('Gothic', 15), tags = 'disp_'+ pos+'rec1' ,anchor ='w')
            canvas.create_text(df_pos.loc[pos,'POS_X']+190, df_pos.loc[pos,'POS_Y']-Text_pos_20deg, text = '20deg >>', font = ('Gothic', 15), tags = 'disp_'+ pos+'rec2' ,anchor ='w')
            #目盛り数値
            canvas.create_text(df_pos.loc[pos,'POS_X']-5, df_pos.loc[pos,'POS_Y']+40, text = 0, font = ('Gothic', 15), tags = 'disp_MEM' ,anchor ='w')
            canvas.create_text(df_pos.loc[pos,'POS_X']+length_rect/2-5, df_pos.loc[pos,'POS_Y']+40, text = X_RANGE, font = ('Gothic', 15), tags = 'disp_MEM' ,anchor ='w')
            canvas.create_text(df_pos.loc[pos,'POS_X']+length_rect-5, df_pos.loc[pos,'POS_Y']+40, text = 2*X_RANGE, font = ('Gothic', 15), tags = 'disp_MEM' ,anchor ='w') 
        else:
            #目盛り数値
            canvas.create_text(df_pos.loc[pos,'POS_X']-5, df_pos.loc[pos,'POS_Y']+40, text = -1*X_RANGE, font = ('Gothic', 15), tags = 'disp_MEM' ,anchor ='w')
            canvas.create_text(df_pos.loc[pos,'POS_X']+length_rect/2-5, df_pos.loc[pos,'POS_Y']+40, text = 0, font = ('Gothic', 15), tags = 'disp_MEM' ,anchor ='w')
            canvas.create_text(df_pos.loc[pos,'POS_X']+length_rect-5, df_pos.loc[pos,'POS_Y']+40, text = X_RANGE, font = ('Gothic', 15), tags = 'disp_MEM' ,anchor ='w') 

    th=threading.Thread(target=udp_receive)
    th.setDaemon(True)
    th.start()
    root.protocol("WM_DELETE_WINDOW", on_closing)
    root.mainloop()
