<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ESP32-DEVKITC">
<packages>
<package name="ESP32-DEVKITC">
<pad name="1" x="-22.87" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="2" x="-20.33" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="3" x="-17.79" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="4" x="-15.25" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="5" x="-12.71" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="6" x="-10.17" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="7" x="-7.63" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="8" x="-5.09" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="9" x="-2.55" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="10" x="-0.01" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="11" x="2.53" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="12" x="5.07" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="13" x="7.61" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="14" x="10.15" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="15" x="12.69" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="16" x="15.23" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="17" x="17.77" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="18" x="20.31" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="19" x="22.85" y="-11.42" drill="1" diameter="1.9304"/>
<pad name="38" x="-22.87" y="11.23" drill="1" diameter="1.9304"/>
<pad name="37" x="-20.33" y="11.23" drill="1" diameter="1.9304"/>
<pad name="36" x="-17.79" y="11.23" drill="1" diameter="1.9304"/>
<pad name="35" x="-15.25" y="11.23" drill="1" diameter="1.9304"/>
<pad name="34" x="-12.71" y="11.23" drill="1" diameter="1.9304"/>
<pad name="33" x="-10.17" y="11.23" drill="1" diameter="1.9304"/>
<pad name="32" x="-7.63" y="11.23" drill="1" diameter="1.9304"/>
<pad name="31" x="-5.09" y="11.23" drill="1" diameter="1.9304"/>
<pad name="30" x="-2.55" y="11.23" drill="1" diameter="1.9304"/>
<pad name="29" x="-0.01" y="11.23" drill="1" diameter="1.9304"/>
<pad name="28" x="2.53" y="11.23" drill="1" diameter="1.9304"/>
<pad name="27" x="5.07" y="11.23" drill="1" diameter="1.9304"/>
<pad name="26" x="7.61" y="11.23" drill="1" diameter="1.9304"/>
<pad name="25" x="10.15" y="11.23" drill="1" diameter="1.9304"/>
<pad name="24" x="12.69" y="11.23" drill="1" diameter="1.9304"/>
<pad name="23" x="15.23" y="11.23" drill="1" diameter="1.9304"/>
<pad name="22" x="17.77" y="11.23" drill="1" diameter="1.9304"/>
<pad name="21" x="20.31" y="11.23" drill="1" diameter="1.9304"/>
<pad name="20" x="22.85" y="11.23" drill="1" diameter="1.9304"/>
<wire x1="-22.85" y1="5.86" x2="-22.85" y2="2.02" width="0.4064" layer="21"/>
<wire x1="-22.85" y1="2.02" x2="-17.73" y2="2.02" width="0.4064" layer="21"/>
<wire x1="-17.73" y1="2.02" x2="-17.73" y2="0.74" width="0.4064" layer="21"/>
<wire x1="-17.73" y1="0.74" x2="-22.85" y2="0.74" width="0.4064" layer="21"/>
<wire x1="-22.85" y1="0.74" x2="-22.85" y2="-0.54" width="0.4064" layer="21"/>
<wire x1="-22.85" y1="-0.54" x2="-17.73" y2="-0.54" width="0.4064" layer="21"/>
<wire x1="-17.73" y1="-0.54" x2="-17.73" y2="-1.82" width="0.4064" layer="21"/>
<wire x1="-17.73" y1="-1.82" x2="-22.85" y2="-1.82" width="0.4064" layer="21"/>
<wire x1="-22.85" y1="-1.82" x2="-22.85" y2="-3.1" width="0.4064" layer="21"/>
<wire x1="-22.85" y1="-3.1" x2="-17.73" y2="-3.1" width="0.4064" layer="21"/>
<wire x1="-17.73" y1="-3.1" x2="-17.73" y2="-4.38" width="0.4064" layer="21"/>
<wire x1="-17.73" y1="-4.38" x2="-22.85" y2="-4.38" width="0.4064" layer="21"/>
<wire x1="-22.85" y1="-4.38" x2="-22.85" y2="-5.66" width="0.4064" layer="21"/>
<wire x1="-22.85" y1="-5.66" x2="-15.17" y2="-5.66" width="0.4064" layer="21"/>
<wire x1="-15.17" y1="-5.66" x2="-15.17" y2="0.74" width="0.4064" layer="21"/>
<text x="-22.21" y="-9.5" size="1.016" layer="21" rot="R90">3V3</text>
<text x="-19.67" y="-9.5" size="1.016" layer="21" rot="R90">EN</text>
<text x="-17.13" y="-9.5" size="1.016" layer="21" rot="R90">SVP</text>
<text x="-14.59" y="-9.5" size="1.016" layer="21" rot="R90">SVN</text>
<text x="-12.05" y="-9.5" size="1.016" layer="21" rot="R90">IO34</text>
<text x="-9.51" y="-9.5" size="1.016" layer="21" rot="R90">IO35</text>
<text x="-6.97" y="-9.5" size="1.016" layer="21" rot="R90">IO32</text>
<text x="-4.43" y="-9.5" size="1.016" layer="21" rot="R90">IO33</text>
<text x="-1.89" y="-9.5" size="1.016" layer="21" rot="R90">IO25</text>
<text x="0.65" y="-9.5" size="1.016" layer="21" rot="R90">IO26</text>
<text x="3.19" y="-9.5" size="1.016" layer="21" rot="R90">IO27</text>
<text x="5.73" y="-9.5" size="1.016" layer="21" rot="R90">IO14</text>
<text x="8.27" y="-9.5" size="1.016" layer="21" rot="R90">IO12</text>
<text x="10.81" y="-9.5" size="1.016" layer="21" rot="R90">GND</text>
<text x="13.35" y="-9.5" size="1.016" layer="21" rot="R90">IO13</text>
<text x="15.89" y="-9.5" size="1.016" layer="21" rot="R90">SD2</text>
<text x="18.43" y="-9.5" size="1.016" layer="21" rot="R90">SD3</text>
<text x="20.97" y="-9.5" size="1.016" layer="21" rot="R90">CMD</text>
<text x="23.51" y="-9.5" size="1.016" layer="21" rot="R90">5V</text>
<text x="-22.19" y="6.52" size="1.016" layer="21" rot="R90">GND</text>
<text x="-19.65" y="6.52" size="1.016" layer="21" rot="R90">IO23</text>
<text x="-17.11" y="6.52" size="1.016" layer="21" rot="R90">IO22</text>
<text x="-14.57" y="6.52" size="1.016" layer="21" rot="R90">TXD0</text>
<text x="-12.03" y="6.52" size="1.016" layer="21" rot="R90">RXD0</text>
<text x="-9.49" y="6.52" size="1.016" layer="21" rot="R90">IO21</text>
<text x="-6.95" y="6.52" size="1.016" layer="21" rot="R90">GND</text>
<text x="-4.41" y="6.52" size="1.016" layer="21" rot="R90">IO19</text>
<text x="-1.87" y="6.52" size="1.016" layer="21" rot="R90">IO18</text>
<text x="0.67" y="6.52" size="1.016" layer="21" rot="R90">IO5</text>
<text x="3.21" y="6.52" size="1.016" layer="21" rot="R90">IO17</text>
<text x="5.75" y="6.52" size="1.016" layer="21" rot="R90">IO16</text>
<text x="8.29" y="6.52" size="1.016" layer="21" rot="R90">IO4</text>
<text x="10.83" y="6.52" size="1.016" layer="21" rot="R90">IO0</text>
<text x="13.37" y="6.52" size="1.016" layer="21" rot="R90">IO2</text>
<text x="15.91" y="6.52" size="1.016" layer="21" rot="R90">IO15</text>
<text x="18.45" y="6.52" size="1.016" layer="21" rot="R90">SD1</text>
<text x="20.99" y="6.52" size="1.016" layer="21" rot="R90">SD0</text>
<text x="23.53" y="6.52" size="1.016" layer="21" rot="R90">CLK</text>
<text x="-4.93" y="-1.18" size="1.9304" layer="21">ESP32-DevkitC</text>
<wire x1="-24.13" y1="12.7" x2="24.13" y2="12.7" width="0.254" layer="21"/>
<wire x1="24.13" y1="12.7" x2="24.13" y2="-12.7" width="0.254" layer="21"/>
<wire x1="24.13" y1="-12.7" x2="-24.13" y2="-12.7" width="0.254" layer="21"/>
<wire x1="-24.13" y1="-12.7" x2="-24.13" y2="12.7" width="0.254" layer="21"/>
<text x="-24.13" y="13.97" size="1.27" layer="21">&gt;NAME</text>
<text x="10.16" y="-15.24" size="1.27" layer="27">ESP32-DEVKITC</text>
</package>
</packages>
<symbols>
<symbol name="ESP32-DEVKITC">
<wire x1="-25.4" y1="-12.7" x2="-25.4" y2="12.7" width="0.254" layer="94"/>
<wire x1="-25.4" y1="12.7" x2="25.4" y2="12.7" width="0.254" layer="94"/>
<wire x1="25.4" y1="12.7" x2="25.4" y2="-12.7" width="0.254" layer="94"/>
<wire x1="25.4" y1="-12.7" x2="-25.4" y2="-12.7" width="0.254" layer="94"/>
<pin name="3V3" x="-22.86" y="-17.78" length="middle" rot="R90"/>
<pin name="EN" x="-20.32" y="-17.78" length="middle" rot="R90"/>
<pin name="SVP" x="-17.78" y="-17.78" length="middle" rot="R90"/>
<pin name="SVN" x="-15.24" y="-17.78" length="middle" rot="R90"/>
<pin name="IO34" x="-12.7" y="-17.78" length="middle" rot="R90"/>
<pin name="IO35" x="-10.16" y="-17.78" length="middle" rot="R90"/>
<pin name="IO32" x="-7.62" y="-17.78" length="middle" rot="R90"/>
<pin name="IO33" x="-5.08" y="-17.78" length="middle" rot="R90"/>
<pin name="IO25" x="-2.54" y="-17.78" length="middle" rot="R90"/>
<pin name="IO26" x="0" y="-17.78" length="middle" rot="R90"/>
<pin name="IO27" x="2.54" y="-17.78" length="middle" rot="R90"/>
<pin name="IO14" x="5.08" y="-17.78" length="middle" rot="R90"/>
<pin name="IO12" x="7.62" y="-17.78" length="middle" rot="R90"/>
<pin name="GND@14" x="10.16" y="-17.78" length="middle" rot="R90"/>
<pin name="IO13" x="12.7" y="-17.78" length="middle" rot="R90"/>
<pin name="SD2" x="15.24" y="-17.78" length="middle" rot="R90"/>
<pin name="SD3" x="17.78" y="-17.78" length="middle" rot="R90"/>
<pin name="CMD" x="20.32" y="-17.78" length="middle" rot="R90"/>
<pin name="5V" x="22.86" y="-17.78" length="middle" rot="R90"/>
<pin name="CLK" x="22.86" y="17.78" length="middle" rot="R270"/>
<pin name="SD0" x="20.32" y="17.78" length="middle" rot="R270"/>
<pin name="SD1" x="17.78" y="17.78" length="middle" rot="R270"/>
<pin name="IO15" x="15.24" y="17.78" length="middle" rot="R270"/>
<pin name="IO2" x="12.7" y="17.78" length="middle" rot="R270"/>
<pin name="IO0" x="10.16" y="17.78" length="middle" rot="R270"/>
<pin name="IO4" x="7.62" y="17.78" length="middle" rot="R270"/>
<pin name="IO16" x="5.08" y="17.78" length="middle" rot="R270"/>
<pin name="IO17" x="2.54" y="17.78" length="middle" rot="R270"/>
<pin name="IO5" x="0" y="17.78" length="middle" rot="R270"/>
<pin name="IO18" x="-2.54" y="17.78" length="middle" rot="R270"/>
<pin name="IO19" x="-5.08" y="17.78" length="middle" rot="R270"/>
<pin name="GND@32" x="-7.62" y="17.78" length="middle" rot="R270"/>
<pin name="IO21" x="-10.16" y="17.78" length="middle" rot="R270"/>
<pin name="RXD0" x="-12.7" y="17.78" length="middle" rot="R270"/>
<pin name="TXD0" x="-15.24" y="17.78" length="middle" rot="R270"/>
<pin name="IO22" x="-17.78" y="17.78" length="middle" rot="R270"/>
<pin name="IO23" x="-20.32" y="17.78" length="middle" rot="R270"/>
<pin name="GND@38" x="-22.86" y="17.78" length="middle" rot="R270"/>
<text x="-26.67" y="5.08" size="1.27" layer="95" rot="R90">&gt;NAME</text>
<text x="27.94" y="-12.7" size="1.27" layer="96" rot="R90">ESP32-DEVKITC</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32DEVKITC">
<gates>
<gate name="G$1" symbol="ESP32-DEVKITC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESP32-DEVKITC">
<connects>
<connect gate="G$1" pin="3V3" pad="1"/>
<connect gate="G$1" pin="5V" pad="19"/>
<connect gate="G$1" pin="CLK" pad="20"/>
<connect gate="G$1" pin="CMD" pad="18"/>
<connect gate="G$1" pin="EN" pad="2"/>
<connect gate="G$1" pin="GND@14" pad="14"/>
<connect gate="G$1" pin="GND@32" pad="32"/>
<connect gate="G$1" pin="GND@38" pad="38"/>
<connect gate="G$1" pin="IO0" pad="25"/>
<connect gate="G$1" pin="IO12" pad="13"/>
<connect gate="G$1" pin="IO13" pad="15"/>
<connect gate="G$1" pin="IO14" pad="12"/>
<connect gate="G$1" pin="IO15" pad="23"/>
<connect gate="G$1" pin="IO16" pad="27"/>
<connect gate="G$1" pin="IO17" pad="28"/>
<connect gate="G$1" pin="IO18" pad="30"/>
<connect gate="G$1" pin="IO19" pad="31"/>
<connect gate="G$1" pin="IO2" pad="24"/>
<connect gate="G$1" pin="IO21" pad="33"/>
<connect gate="G$1" pin="IO22" pad="36"/>
<connect gate="G$1" pin="IO23" pad="37"/>
<connect gate="G$1" pin="IO25" pad="9"/>
<connect gate="G$1" pin="IO26" pad="10"/>
<connect gate="G$1" pin="IO27" pad="11"/>
<connect gate="G$1" pin="IO32" pad="7"/>
<connect gate="G$1" pin="IO33" pad="8"/>
<connect gate="G$1" pin="IO34" pad="5"/>
<connect gate="G$1" pin="IO35" pad="6"/>
<connect gate="G$1" pin="IO4" pad="26"/>
<connect gate="G$1" pin="IO5" pad="29"/>
<connect gate="G$1" pin="RXD0" pad="34"/>
<connect gate="G$1" pin="SD0" pad="21"/>
<connect gate="G$1" pin="SD1" pad="22"/>
<connect gate="G$1" pin="SD2" pad="16"/>
<connect gate="G$1" pin="SD3" pad="17"/>
<connect gate="G$1" pin="SVN" pad="4"/>
<connect gate="G$1" pin="SVP" pad="3"/>
<connect gate="G$1" pin="TXD0" pad="35"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:13874/1" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:13926/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="0000">
<packages>
<package name="0204/5" urn="urn:adsk.eagle:footprint:22991/1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 5 mm</description>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7" urn="urn:adsk.eagle:footprint:22998/1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0207/10" urn="urn:adsk.eagle:footprint:22992/1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12" urn="urn:adsk.eagle:footprint:22993/1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 12 mm</description>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15" urn="urn:adsk.eagle:footprint:22997/1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 15mm</description>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V" urn="urn:adsk.eagle:footprint:22994/1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V" urn="urn:adsk.eagle:footprint:22995/1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 5 mm</description>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7" urn="urn:adsk.eagle:footprint:22996/1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 7.5 mm</description>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0204V" urn="urn:adsk.eagle:footprint:22999/1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 2.5 mm</description>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="B3F-10XX" urn="urn:adsk.eagle:footprint:27476/1" locally_modified="yes">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<wire x1="3.302" y1="-0.762" x2="3.048" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.762" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0.762" x2="3.302" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.762" x2="-3.048" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0.762" x2="-3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.762" x2="-3.302" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="-1.27" y2="-1.27" width="0.0508" layer="51"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.0508" layer="51"/>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="2.794" width="0.0508" layer="21"/>
<wire x1="1.27" y1="2.794" x2="-1.27" y2="2.794" width="0.0508" layer="21"/>
<wire x1="1.27" y1="2.794" x2="1.27" y2="3.048" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.794" x2="-1.27" y2="-2.794" width="0.0508" layer="21"/>
<wire x1="1.143" y1="-2.794" x2="1.143" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="-1.27" y1="-2.794" x2="-1.27" y2="-3.048" width="0.0508" layer="21"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-3.048" x2="-1.27" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.1524" layer="51"/>
<wire x1="2.159" y1="3.048" x2="1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.048" x2="-1.27" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="3.048" x2="-2.159" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.048" x2="1.143" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-3.048" x2="2.159" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-0.762" x2="3.048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.048" y1="0.762" x2="3.048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.762" x2="-3.048" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="0.762" x2="-3.048" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-2.159" x2="1.27" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.286" x2="-1.27" y2="2.286" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="-0.508" x2="-2.413" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-2.413" y1="0.508" x2="-2.159" y2="-0.381" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.1524" layer="21"/>
<circle x="-2.159" y="-2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="2.159" y="-2.032" radius="0.508" width="0.1524" layer="51"/>
<circle x="2.159" y="2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="-2.159" y="2.159" radius="0.508" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.635" width="0.0508" layer="51"/>
<circle x="0" y="0" radius="0.254" width="0.1524" layer="21"/>
<pad name="1" x="-3.2512" y="2.2606" drill="1.016" shape="long"/>
<pad name="3" x="-3.2512" y="-2.2606" drill="1.016" shape="long"/>
<pad name="2" x="3.2512" y="2.2606" drill="1.016" shape="long"/>
<pad name="4" x="3.2512" y="-2.2606" drill="1.016" shape="long"/>
<text x="-3.048" y="3.683" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.048" y="-5.08" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.318" y="1.651" size="1.27" layer="51" ratio="10">1</text>
<text x="3.556" y="1.524" size="1.27" layer="51" ratio="10">2</text>
<text x="-4.572" y="-2.794" size="1.27" layer="51" ratio="10">3</text>
<text x="3.556" y="-2.794" size="1.27" layer="51" ratio="10">4</text>
</package>
<package name="XC10B5" urn="urn:adsk.eagle:footprint:23203/1" locally_modified="yes">
<description>&lt;b&gt;X CAPACITOR&lt;/b&gt;&lt;p&gt;
body 13 x 5 mm, grid 10.16 mm</description>
<wire x1="-3.302" y1="1.27" x2="-3.302" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="0" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.302" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0" x2="-3.302" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.016" y1="0" x2="-2.413" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="0" x2="-2.413" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="0" y="0" drill="1.016" shape="octagon"/>
<text x="-4.953" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.207" y="-3.175" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="0204/5" urn="urn:adsk.eagle:package:23488/1" type="box">
<description>RESISTOR
type 0204, grid 5 mm</description>
<packageinstances>
<packageinstance name="0204/5"/>
</packageinstances>
</package3d>
<package3d name="0204/7" urn="urn:adsk.eagle:package:23498/2" type="model">
<description>RESISTOR
type 0204, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0204/7"/>
</packageinstances>
</package3d>
<package3d name="0207/10" urn="urn:adsk.eagle:package:23491/2" type="model">
<description>RESISTOR
type 0207, grid 10 mm</description>
<packageinstances>
<packageinstance name="0207/10"/>
</packageinstances>
</package3d>
<package3d name="0207/12" urn="urn:adsk.eagle:package:23489/1" type="box">
<description>RESISTOR
type 0207, grid 12 mm</description>
<packageinstances>
<packageinstance name="0207/12"/>
</packageinstances>
</package3d>
<package3d name="0207/15" urn="urn:adsk.eagle:package:23492/1" type="box">
<description>RESISTOR
type 0207, grid 15mm</description>
<packageinstances>
<packageinstance name="0207/15"/>
</packageinstances>
</package3d>
<package3d name="0207/2V" urn="urn:adsk.eagle:package:23490/1" type="box">
<description>RESISTOR
type 0207, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0207/2V"/>
</packageinstances>
</package3d>
<package3d name="0207/5V" urn="urn:adsk.eagle:package:23502/1" type="box">
<description>RESISTOR
type 0207, grid 5 mm</description>
<packageinstances>
<packageinstance name="0207/5V"/>
</packageinstances>
</package3d>
<package3d name="0207/7" urn="urn:adsk.eagle:package:23493/2" type="model">
<description>RESISTOR
type 0207, grid 7.5 mm</description>
<packageinstances>
<packageinstance name="0207/7"/>
</packageinstances>
</package3d>
<package3d name="0204V" urn="urn:adsk.eagle:package:23495/1" type="box">
<description>RESISTOR
type 0204, grid 2.5 mm</description>
<packageinstances>
<packageinstance name="0204V"/>
</packageinstances>
</package3d>
<package3d name="B3F-10XX" urn="urn:adsk.eagle:package:27496/1" type="box">
<description>OMRON SWITCH</description>
<packageinstances>
<packageinstance name="B3F-10XX"/>
</packageinstances>
</package3d>
<package3d name="XC10B5" urn="urn:adsk.eagle:package:23696/1" type="box">
<description>X CAPACITOR
body 13 x 5 mm, grid 10.16 mm</description>
<packageinstances>
<packageinstance name="XC10B5"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="R-US">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="TS2">
<wire x1="0" y1="1.905" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-3.175" y2="1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="-1.905" x2="-3.175" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-4.445" y1="1.905" x2="-4.445" y2="0" width="0.254" layer="94"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="-0.635" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="0" x2="-3.175" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<circle x="0" y="-2.54" radius="0.127" width="0.4064" layer="94"/>
<circle x="0" y="2.54" radius="0.127" width="0.4064" layer="94"/>
<text x="-6.35" y="-2.54" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-3.81" y="3.175" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="P" x="0" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
<pin name="S" x="0" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="S1" x="2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="P1" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="2" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-2.667" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="AGND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="C-EU">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R-US_" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, American symbol</description>
<gates>
<gate name="G$1" symbol="R-US" x="0" y="0"/>
</gates>
<devices>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23488/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="18" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23498/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="48" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23491/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="36" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23489/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="3" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23492/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23490/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23502/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23493/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="22" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0204/2V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23495/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
</devices>
<spice>
<pinmapping spiceprefix="R">
<pinmap gate="G$1" pin="1" pinorder="1"/>
<pinmap gate="G$1" pin="2" pinorder="2"/>
</pinmapping>
</spice>
</deviceset>
<deviceset name="SWITCH" prefix="S" uservalue="yes">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="TS2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B3F-10XX">
<connects>
<connect gate="1" pin="P" pad="3"/>
<connect gate="1" pin="P1" pad="4"/>
<connect gate="1" pin="S" pad="1"/>
<connect gate="1" pin="S1" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27496/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="B3F-1000" constant="no"/>
<attribute name="OC_FARNELL" value="176432" constant="no"/>
<attribute name="OC_NEWARK" value="36M3542" constant="no"/>
<attribute name="POPULARITY" value="72" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAPACITOR" prefix="C" uservalue="yes">
<description>&lt;B&gt;X CAPACITOR&lt;/B&gt;&lt;p&gt;
for power line</description>
<gates>
<gate name="G$1" symbol="C-EU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XC10B5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23696/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="BMX055">
<packages>
<package name="BMX055">
<wire x1="-7" y1="5" x2="7" y2="5" width="0.127" layer="21"/>
<wire x1="7" y1="5" x2="7" y2="-5" width="0.127" layer="21"/>
<wire x1="7" y1="-5" x2="-7" y2="-5" width="0.127" layer="21"/>
<wire x1="-7" y1="-5" x2="-7" y2="5" width="0.127" layer="21"/>
<pad name="VCCIO" x="0" y="3.81" drill="0.6" shape="square"/>
<pad name="VCC" x="-2.54" y="3.81" drill="0.6" shape="square"/>
<pad name="3V3" x="2.54" y="3.81" drill="0.6" shape="square"/>
<pad name="GND" x="-2.54" y="-3.81" drill="0.6" shape="square"/>
<pad name="SDA" x="0" y="-3.81" drill="0.6" shape="square"/>
<pad name="SCL" x="2.54" y="-3.81" drill="0.6" shape="square"/>
<rectangle x1="-1.778" y1="-2.54" x2="2.794" y2="1.016" layer="21"/>
<rectangle x1="3.81" y1="-1.524" x2="5.588" y2="0.254" layer="21"/>
<rectangle x1="-6.35" y1="-2.032" x2="-2.794" y2="0" layer="21"/>
<text x="-6.35" y="1.524" size="1.27" layer="21">BMX055</text>
</package>
</packages>
<symbols>
<symbol name="BMX055">
<pin name="GND" x="-7.62" y="2.54" visible="pad" length="middle"/>
<pin name="SDA" x="-7.62" y="0" visible="pad" length="middle"/>
<pin name="SCL" x="-7.62" y="-2.54" visible="pad" length="middle"/>
<pin name="VCC" x="7.62" y="2.54" visible="pad" length="middle" rot="R180"/>
<pin name="VCCIO" x="7.62" y="0" visible="pad" length="middle" rot="R180"/>
<pin name="3V3" x="7.62" y="-2.54" visible="pad" length="middle" rot="R180"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<text x="-5.08" y="7.62" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BMX055">
<gates>
<gate name="G$1" symbol="BMX055" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BMX055">
<connects>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
<connect gate="G$1" pin="VCCIO" pad="VCCIO"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="LCD">
<packages>
<package name="SC1602BSLB">
<description>SC1602BSLB</description>
<pad name="DB7" x="-48.26" y="7.62" drill="0.6" shape="square"/>
<pad name="DB5" x="-48.26" y="5.08" drill="0.6" shape="square"/>
<pad name="DB3" x="-48.26" y="2.54" drill="0.6" shape="square"/>
<pad name="DB1" x="-48.26" y="0" drill="0.6" shape="square"/>
<pad name="E" x="-48.26" y="-2.54" drill="0.6" shape="square"/>
<pad name="RS" x="-48.26" y="-5.08" drill="0.6" shape="square"/>
<pad name="VSS" x="-48.26" y="-7.62" drill="0.6" shape="square"/>
<pad name="VDD" x="-45.72" y="-7.62" drill="0.6" shape="square"/>
<pad name="VO" x="-45.72" y="-5.08" drill="0.6" shape="square"/>
<pad name="R/W" x="-45.72" y="-2.54" drill="0.6" shape="square"/>
<pad name="DB0" x="-45.72" y="0" drill="0.6" shape="square"/>
<pad name="DB2" x="-45.72" y="2.54" drill="0.6" shape="square"/>
<pad name="DB4" x="-45.72" y="5.08" drill="0.6" shape="square"/>
<pad name="DB6" x="-45.72" y="7.62" drill="0.6" shape="square"/>
<pad name="P$15" x="33.02" y="5.08" drill="0.6" shape="square"/>
<pad name="P$16" x="33.02" y="2.54" drill="0.6" shape="square"/>
<pad name="P$17" x="33.02" y="-2.54" drill="0.6" shape="square"/>
<pad name="P$18" x="33.02" y="-5.08" drill="0.6" shape="square"/>
<text x="-22.86" y="-1.27" size="3.81" layer="27">&gt;VALUE</text>
<text x="-53.34" y="-8.89" size="1.27" layer="21">VSS</text>
<text x="-53.34" y="-6.35" size="1.27" layer="21">RS</text>
<text x="-43.18" y="-1.27" size="1.27" layer="21">DB0</text>
<text x="-53.34" y="-3.81" size="1.27" layer="21">E</text>
<text x="-53.34" y="-1.27" size="1.27" layer="21">DB1</text>
<text x="-53.34" y="1.27" size="1.27" layer="21">DB3</text>
<text x="-53.34" y="3.81" size="1.27" layer="21">DB5</text>
<text x="-53.34" y="6.35" size="1.27" layer="21">DB7</text>
<text x="-43.18" y="6.35" size="1.27" layer="21">DB6</text>
<text x="-43.18" y="3.81" size="1.27" layer="21">DB4</text>
<text x="-43.18" y="1.27" size="1.27" layer="21">DB2</text>
<text x="-43.18" y="-8.89" size="1.27" layer="21">VDD</text>
<text x="-43.18" y="-6.35" size="1.27" layer="21">Vo</text>
<text x="-43.18" y="-3.81" size="1.27" layer="21">R/W</text>
<wire x1="-50.8" y1="15.24" x2="35.56" y2="15.24" width="0.127" layer="21"/>
<wire x1="35.56" y1="15.24" x2="35.56" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-50.8" y1="15.24" x2="-50.8" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-50.8" y1="-15.24" x2="35.56" y2="-15.24" width="0.127" layer="21"/>
<wire x1="-40.64" y1="-10.16" x2="-40.64" y2="10.16" width="0.127" layer="21"/>
<wire x1="-40.64" y1="10.16" x2="27.94" y2="10.16" width="0.127" layer="21"/>
<wire x1="27.94" y1="10.16" x2="27.94" y2="-10.16" width="0.127" layer="21"/>
<wire x1="27.94" y1="-10.16" x2="-40.64" y2="-10.16" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="SC1602BSLB">
<pin name="VDD" x="-20.32" y="20.32" length="middle"/>
<pin name="VSS" x="-20.32" y="17.78" length="middle"/>
<pin name="VO" x="-20.32" y="15.24" length="middle"/>
<pin name="RS" x="-20.32" y="12.7" length="middle"/>
<pin name="R/W" x="-20.32" y="10.16" length="middle"/>
<pin name="E" x="-20.32" y="7.62" length="middle"/>
<pin name="DB0" x="-20.32" y="5.08" length="middle"/>
<pin name="DB1" x="-20.32" y="2.54" length="middle"/>
<pin name="BD2" x="-20.32" y="0" length="middle"/>
<pin name="DB3" x="-20.32" y="-2.54" length="middle"/>
<pin name="DB4" x="-20.32" y="-5.08" length="middle"/>
<pin name="DB5" x="-20.32" y="-7.62" length="middle"/>
<pin name="DB6" x="-20.32" y="-10.16" length="middle"/>
<pin name="DB7" x="-20.32" y="-12.7" length="middle"/>
<wire x1="-17.78" y1="22.86" x2="-17.78" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-15.24" x2="0" y2="-15.24" width="0.254" layer="94"/>
<wire x1="0" y1="-15.24" x2="0" y2="22.86" width="0.254" layer="94"/>
<wire x1="0" y1="22.86" x2="-17.78" y2="22.86" width="0.254" layer="94"/>
<text x="-15.24" y="25.4" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SC1602BSLB" prefix="LCD">
<description>SC1602BSLB</description>
<gates>
<gate name="G$1" symbol="SC1602BSLB" x="7.62" y="-2.54"/>
</gates>
<devices>
<device name="" package="SC1602BSLB">
<connects>
<connect gate="G$1" pin="BD2" pad="DB2"/>
<connect gate="G$1" pin="DB0" pad="DB0"/>
<connect gate="G$1" pin="DB1" pad="DB1"/>
<connect gate="G$1" pin="DB3" pad="DB3"/>
<connect gate="G$1" pin="DB4" pad="DB4"/>
<connect gate="G$1" pin="DB5" pad="DB5"/>
<connect gate="G$1" pin="DB6" pad="DB6"/>
<connect gate="G$1" pin="DB7" pad="DB7"/>
<connect gate="G$1" pin="E" pad="E"/>
<connect gate="G$1" pin="R/W" pad="R/W"/>
<connect gate="G$1" pin="RS" pad="RS"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
<connect gate="G$1" pin="VO" pad="VO"/>
<connect gate="G$1" pin="VSS" pad="VSS"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Resister">
<packages>
<package name="VR">
<circle x="0" y="0" radius="1.85" width="0.1016" layer="21"/>
<text x="3.283" y="-4.064" size="1.27" layer="27" rot="R180">&gt;VALUE</text>
<rectangle x1="-1.3" y1="-0.2" x2="1.35" y2="0.2" layer="21"/>
<rectangle x1="-0.2" y1="-1.35" x2="0.2" y2="1.3" layer="21"/>
<wire x1="-3.5" y1="3.5" x2="-3.5" y2="-3.5" width="0.127" layer="21"/>
<wire x1="-3.5" y1="-3.5" x2="3.5" y2="-3.5" width="0.127" layer="21"/>
<wire x1="3.5" y1="-3.5" x2="3.5" y2="3.5" width="0.127" layer="21"/>
<wire x1="3.5" y1="3.5" x2="-3.5" y2="3.5" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.6" shape="square"/>
<pad name="3" x="2.54" y="0" drill="0.6" shape="square"/>
<pad name="2" x="0" y="2.54" drill="0.6" shape="square"/>
<text x="-2.794" y="4.064" size="1.27" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="VR">
<wire x1="-1.778" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-3.302" y1="2.54" x2="-3.302" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.778" y1="-2.54" x2="-1.778" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-0.889" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="0" x2="-4.4196" y2="1.7526" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-3.302" y2="2.54" width="0.254" layer="94"/>
<wire x1="-3.302" y1="-2.54" x2="-1.778" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-4.826" y1="1.27" x2="-4.191" y2="2.413" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-0.508" x2="-5.588" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-0.508" x2="-4.572" y2="-1.524" width="0.1524" layer="94"/>
<text x="-8.509" y="-3.81" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="-6.35" y="-3.81" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="A" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="E" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="S" x="2.54" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VR" prefix="VR">
<gates>
<gate name="G$1" symbol="VR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="VR">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="E" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Regulator">
<packages>
<package name="REGULATOR">
<pad name="IN" x="-2.54" y="0" drill="0.6" shape="square"/>
<pad name="GND" x="0" y="0" drill="0.6" shape="square"/>
<pad name="OUT" x="2.54" y="0" drill="0.6" shape="square"/>
<wire x1="-5" y1="5" x2="-3" y2="5" width="0.127" layer="21"/>
<wire x1="-3" y1="5" x2="-2" y2="5" width="0.127" layer="21"/>
<wire x1="-2" y1="5" x2="-0.5" y2="5" width="0.127" layer="21"/>
<wire x1="-0.5" y1="5" x2="0.5" y2="5" width="0.127" layer="21"/>
<wire x1="0.5" y1="5" x2="2" y2="5" width="0.127" layer="21"/>
<wire x1="2" y1="5" x2="3" y2="5" width="0.127" layer="21"/>
<wire x1="3" y1="5" x2="5" y2="5" width="0.127" layer="21"/>
<wire x1="5" y1="5" x2="5" y2="13" width="0.127" layer="21"/>
<wire x1="5" y1="13" x2="5" y2="20" width="0.127" layer="21"/>
<wire x1="5" y1="20" x2="-5" y2="20" width="0.127" layer="21"/>
<wire x1="-5" y1="20" x2="-5" y2="13" width="0.127" layer="21"/>
<circle x="0" y="17" radius="1.4142125" width="0.127" layer="21"/>
<wire x1="-5" y1="13" x2="-5" y2="5" width="0.127" layer="21"/>
<wire x1="-5" y1="13" x2="5" y2="13" width="0.127" layer="21"/>
<wire x1="-3" y1="5" x2="-3" y2="0" width="0.127" layer="21"/>
<wire x1="-3" y1="0" x2="-2" y2="0" width="0.127" layer="21"/>
<wire x1="-2" y1="0" x2="-2" y2="5" width="0.127" layer="21"/>
<wire x1="2" y1="5" x2="2" y2="0" width="0.127" layer="21"/>
<wire x1="2" y1="0" x2="3" y2="0" width="0.127" layer="21"/>
<wire x1="3" y1="0" x2="3" y2="5" width="0.127" layer="21"/>
<wire x1="-0.5" y1="5" x2="-0.5" y2="0" width="0.127" layer="21"/>
<wire x1="-0.5" y1="0" x2="0.5" y2="0" width="0.127" layer="21"/>
<wire x1="0.5" y1="0" x2="0.5" y2="5" width="0.127" layer="21"/>
<text x="-3.5" y="8.5" size="1.27" layer="21">TA4805S</text>
</package>
</packages>
<symbols>
<symbol name="REGULATOR">
<pin name="GND" x="0" y="-10.16" visible="pad" length="middle" rot="R90"/>
<pin name="OUT" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
<pin name="IN" x="-12.7" y="0" visible="pad" length="middle"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<text x="-5.08" y="7.62" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="5.08" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="REGULATOR">
<gates>
<gate name="G$1" symbol="REGULATOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="REGULATOR">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="IN" pad="IN"/>
<connect gate="G$1" pin="OUT" pad="OUT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="power_ground">
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-2.667" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="AGND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="V+">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+8V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+05V/2">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-3.81" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+5V/2" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="V+" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="+8V" symbol="V+" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V/2" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+05V/2" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Capacitor">
<packages>
<package name="ELECTROLYTIC">
<pad name="P" x="-1.27" y="0" drill="0.6" shape="square"/>
<pad name="N" x="1.27" y="0" drill="0.6" shape="square"/>
<circle x="0" y="0" radius="2.5" width="0.127" layer="21"/>
<text x="-3.9" y="0.6" size="1.27" layer="21">+</text>
<text x="3.2" y="0.8" size="1.27" layer="21">-</text>
<text x="-3.1" y="3.2" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.6" y="-4" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="ELECTROLYTIC-LAYDWN">
<pad name="P" x="-1.27" y="0" drill="0.6" shape="square"/>
<pad name="N" x="1.27" y="0" drill="0.6" shape="square"/>
<wire x1="2.5" y1="1.5" x2="-2.5" y2="1.5" width="0.127" layer="21"/>
<wire x1="-2.5" y1="1.5" x2="-2.5" y2="12" width="0.127" layer="21"/>
<wire x1="-2.5" y1="12" x2="2.5" y2="12" width="0.127" layer="21"/>
<wire x1="2.5" y1="12" x2="2.5" y2="1.5" width="0.127" layer="21"/>
<rectangle x1="1" y1="1.5" x2="2" y2="11.5" layer="21"/>
<text x="-3.24" y="-2.44" size="1.27" layer="27">&gt;VALUE</text>
<text x="-3.24" y="12.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.51" y="-0.4" size="1.27" layer="21">+</text>
<text x="2.94" y="-0.2" size="1.27" layer="21">-</text>
</package>
<package name="XC10B5" urn="urn:adsk.eagle:footprint:23203/1" locally_modified="yes">
<description>&lt;b&gt;X CAPACITOR&lt;/b&gt;&lt;p&gt;
body 13 x 5 mm, grid 10.16 mm</description>
<wire x1="-3.302" y1="1.27" x2="-3.302" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="0" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.302" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="0" x2="-3.302" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.016" y1="0" x2="-2.413" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="0" x2="-2.413" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1.016" shape="octagon"/>
<pad name="2" x="0" y="0" drill="1.016" shape="octagon"/>
<text x="-4.953" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.207" y="-3.175" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="XC10B5" urn="urn:adsk.eagle:package:23696/1" type="box">
<description>X CAPACITOR
body 13 x 5 mm, grid 10.16 mm</description>
<packageinstances>
<packageinstance name="XC10B5"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="ELECTROLYTIC">
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-1" x2="2.4892" y2="-1.8542" width="0.254" layer="94" curve="-37.878202"/>
<wire x1="-2.4668" y1="-1.8504" x2="0" y2="-1.0161" width="0.254" layer="94" curve="-37.373024"/>
<text x="1.016" y="0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.016" y="-4.191" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="N" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<text x="-3.556" y="0.254" size="2.54" layer="94">+</text>
</symbol>
<symbol name="C-EU">
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<text x="1.016" y="0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.016" y="-4.191" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="N" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.016" x2="2.54" y2="-1.016" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ELECTROLYTIC" prefix="C">
<gates>
<gate name="G$1" symbol="ELECTROLYTIC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ELECTROLYTIC">
<connects>
<connect gate="G$1" pin="N" pad="N"/>
<connect gate="G$1" pin="P" pad="P"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LAYDWN" package="ELECTROLYTIC-LAYDWN">
<connects>
<connect gate="G$1" pin="N" pad="N"/>
<connect gate="G$1" pin="P" pad="P"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAPACITOR" prefix="C" uservalue="yes">
<description>&lt;B&gt;X CAPACITOR&lt;/B&gt;&lt;p&gt;
for power line</description>
<gates>
<gate name="G$1" symbol="C-EU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XC10B5">
<connects>
<connect gate="G$1" pin="N" pad="1"/>
<connect gate="G$1" pin="P" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:23696/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
<attribute name="SPICEPREFIX" value="C" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="ESP32-DEVKITC" deviceset="ESP32DEVKITC" device=""/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="R1" library="0000" deviceset="R-US_" device="0204/7" package3d_urn="urn:adsk.eagle:package:23498/2" value="10K"/>
<part name="S1" library="0000" deviceset="SWITCH" device="" package3d_urn="urn:adsk.eagle:package:27496/1"/>
<part name="SUPPLY1" library="0000" deviceset="GND" device=""/>
<part name="C1" library="0000" deviceset="CAPACITOR" device="" package3d_urn="urn:adsk.eagle:package:23696/1" value="0.1u"/>
<part name="U$3" library="BMX055" deviceset="BMX055" device=""/>
<part name="LCD1" library="LCD" deviceset="SC1602BSLB" device=""/>
<part name="VR1" library="Resister" deviceset="VR" device="" value="10K"/>
<part name="TA4805S" library="Regulator" deviceset="REGULATOR" device=""/>
<part name="SUPPLY2" library="power_ground" deviceset="GND" device=""/>
<part name="SUPPLY3" library="power_ground" deviceset="V+" device="" value="5V"/>
<part name="SUPPLY4" library="power_ground" deviceset="V+" device="" value="5V"/>
<part name="SUPPLY5" library="power_ground" deviceset="V+" device="" value="5V"/>
<part name="SUPPLY7" library="power_ground" deviceset="GND" device=""/>
<part name="SUPPLY6" library="power_ground" deviceset="+5V/2" device="" value="12V"/>
<part name="C2" library="Capacitor" deviceset="ELECTROLYTIC" device="LAYDWN" value="4.7u"/>
<part name="C3" library="Capacitor" deviceset="CAPACITOR" device="" package3d_urn="urn:adsk.eagle:package:23696/1" value="0.33u"/>
<part name="C4" library="Capacitor" deviceset="CAPACITOR" device="" package3d_urn="urn:adsk.eagle:package:23696/1" value="0.1u"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="116.84" y="111.76" smashed="yes" rot="R270"/>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes">
<attribute name="DRAWING_NAME" x="217.17" y="15.24" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="217.17" y="10.16" size="2.286" layer="94"/>
<attribute name="SHEET" x="230.505" y="5.08" size="2.54" layer="94"/>
</instance>
<instance part="R1" gate="G$1" x="68.58" y="137.16" smashed="yes" rot="R90">
<attribute name="NAME" x="67.0814" y="135.89" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="71.882" y="134.62" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="S1" gate="1" x="76.2" y="124.46" smashed="yes">
<attribute name="NAME" x="69.85" y="121.92" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="72.39" y="127.635" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY1" gate="G$1" x="60.96" y="116.84" smashed="yes">
<attribute name="VALUE" x="58.293" y="113.665" size="1.778" layer="96"/>
</instance>
<instance part="C1" gate="G$1" x="60.96" y="124.46" smashed="yes">
<attribute name="NAME" x="55.88" y="125.349" size="1.778" layer="95"/>
<attribute name="VALUE" x="54.864" y="119.761" size="1.778" layer="96"/>
</instance>
<instance part="U$3" gate="G$1" x="86.36" y="86.36" smashed="yes">
<attribute name="VALUE" x="81.28" y="78.74" size="1.27" layer="96"/>
</instance>
<instance part="LCD1" gate="G$1" x="195.58" y="106.68" smashed="yes">
<attribute name="NAME" x="180.34" y="132.08" size="1.778" layer="95"/>
<attribute name="VALUE" x="180.34" y="88.9" size="1.778" layer="96"/>
</instance>
<instance part="VR1" gate="G$1" x="162.56" y="134.62" smashed="yes" rot="R270">
<attribute name="VALUE" x="158.75" y="140.97" size="1.778" layer="96"/>
</instance>
<instance part="TA4805S" gate="G$1" x="78.74" y="45.72" smashed="yes">
<attribute name="NAME" x="76.2" y="43.18" size="1.27" layer="95"/>
</instance>
<instance part="SUPPLY2" gate="G$1" x="78.74" y="25.4" smashed="yes">
<attribute name="VALUE" x="76.073" y="22.225" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY3" gate="+8V" x="114.3" y="48.26" smashed="yes">
<attribute name="VALUE" x="112.395" y="51.435" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY4" gate="+8V" x="109.22" y="76.2" smashed="yes">
<attribute name="VALUE" x="107.315" y="79.375" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY5" gate="+8V" x="177.8" y="139.7" smashed="yes">
<attribute name="VALUE" x="175.895" y="142.875" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY7" gate="G$1" x="167.64" y="86.36" smashed="yes">
<attribute name="VALUE" x="164.973" y="83.185" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY6" gate="G$1" x="45.72" y="48.26" smashed="yes">
<attribute name="VALUE" x="41.91" y="51.435" size="1.778" layer="96"/>
</instance>
<instance part="C2" gate="G$1" x="104.14" y="40.64" smashed="yes">
<attribute name="NAME" x="105.156" y="41.275" size="1.778" layer="95"/>
<attribute name="VALUE" x="105.156" y="36.449" size="1.778" layer="96"/>
</instance>
<instance part="C3" gate="G$1" x="60.96" y="40.64" smashed="yes">
<attribute name="NAME" x="61.976" y="41.275" size="1.778" layer="95"/>
<attribute name="VALUE" x="61.976" y="36.449" size="1.778" layer="96"/>
</instance>
<instance part="C4" gate="G$1" x="96.52" y="40.64" smashed="yes">
<attribute name="NAME" x="97.536" y="41.275" size="1.778" layer="95"/>
<attribute name="VALUE" x="97.536" y="36.449" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="IO23"/>
<wire x1="134.62" y1="132.08" x2="152.4" y2="132.08" width="0.1524" layer="91"/>
<wire x1="152.4" y1="132.08" x2="152.4" y2="119.38" width="0.1524" layer="91"/>
<wire x1="152.4" y1="119.38" x2="175.26" y2="119.38" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="RS"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="IO22"/>
<wire x1="134.62" y1="129.54" x2="149.86" y2="129.54" width="0.1524" layer="91"/>
<wire x1="149.86" y1="129.54" x2="149.86" y2="114.3" width="0.1524" layer="91"/>
<wire x1="149.86" y1="114.3" x2="175.26" y2="114.3" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="IO21"/>
<wire x1="134.62" y1="121.92" x2="147.32" y2="121.92" width="0.1524" layer="91"/>
<wire x1="147.32" y1="121.92" x2="147.32" y2="101.6" width="0.1524" layer="91"/>
<wire x1="147.32" y1="101.6" x2="175.26" y2="101.6" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="DB4"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="IO19"/>
<wire x1="134.62" y1="116.84" x2="144.78" y2="116.84" width="0.1524" layer="91"/>
<wire x1="144.78" y1="116.84" x2="144.78" y2="96.52" width="0.1524" layer="91"/>
<wire x1="144.78" y1="96.52" x2="175.26" y2="96.52" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="DB6"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="IO18"/>
<wire x1="134.62" y1="114.3" x2="142.24" y2="114.3" width="0.1524" layer="91"/>
<wire x1="142.24" y1="114.3" x2="142.24" y2="93.98" width="0.1524" layer="91"/>
<wire x1="142.24" y1="93.98" x2="175.26" y2="93.98" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="DB7"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="U$1" gate="G$1" pin="3V3"/>
<wire x1="68.58" y1="142.24" x2="99.06" y2="142.24" width="0.1524" layer="91"/>
<wire x1="99.06" y1="142.24" x2="99.06" y2="134.62" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="3V3"/>
<wire x1="93.98" y1="83.82" x2="93.98" y2="73.66" width="0.1524" layer="91"/>
<wire x1="93.98" y1="73.66" x2="50.8" y2="73.66" width="0.1524" layer="91"/>
<wire x1="50.8" y1="73.66" x2="50.8" y2="142.24" width="0.1524" layer="91"/>
<wire x1="50.8" y1="142.24" x2="68.58" y2="142.24" width="0.1524" layer="91"/>
<junction x="68.58" y="142.24"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="EN"/>
<wire x1="99.06" y1="132.08" x2="76.2" y2="132.08" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="76.2" y1="132.08" x2="68.58" y2="132.08" width="0.1524" layer="91"/>
<wire x1="60.96" y1="127" x2="60.96" y2="132.08" width="0.1524" layer="91"/>
<wire x1="60.96" y1="132.08" x2="68.58" y2="132.08" width="0.1524" layer="91"/>
<junction x="68.58" y="132.08"/>
<pinref part="S1" gate="1" pin="S"/>
<wire x1="76.2" y1="129.54" x2="76.2" y2="132.08" width="0.1524" layer="91"/>
<junction x="76.2" y="132.08"/>
<pinref part="C1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="AGND" class="0">
<segment>
<pinref part="S1" gate="1" pin="P"/>
<wire x1="60.96" y1="119.38" x2="76.2" y2="119.38" width="0.1524" layer="91"/>
<pinref part="SUPPLY1" gate="G$1" pin="AGND"/>
<pinref part="C1" gate="G$1" pin="2"/>
<junction x="60.96" y="119.38"/>
</segment>
<segment>
<pinref part="TA4805S" gate="G$1" pin="GND"/>
<pinref part="SUPPLY2" gate="G$1" pin="AGND"/>
<wire x1="78.74" y1="35.56" x2="78.74" y2="27.94" width="0.1524" layer="91"/>
<wire x1="60.96" y1="35.56" x2="60.96" y2="27.94" width="0.1524" layer="91"/>
<wire x1="60.96" y1="27.94" x2="78.74" y2="27.94" width="0.1524" layer="91"/>
<junction x="78.74" y="27.94"/>
<wire x1="96.52" y1="35.56" x2="96.52" y2="27.94" width="0.1524" layer="91"/>
<wire x1="96.52" y1="27.94" x2="78.74" y2="27.94" width="0.1524" layer="91"/>
<wire x1="96.52" y1="27.94" x2="104.14" y2="27.94" width="0.1524" layer="91"/>
<junction x="96.52" y="27.94"/>
<wire x1="104.14" y1="27.94" x2="104.14" y2="35.56" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="N"/>
<pinref part="C3" gate="G$1" pin="N"/>
<pinref part="C4" gate="G$1" pin="N"/>
</segment>
<segment>
<pinref part="SUPPLY7" gate="G$1" pin="AGND"/>
<wire x1="167.64" y1="88.9" x2="167.64" y2="116.84" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="R/W"/>
<wire x1="167.64" y1="116.84" x2="175.26" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="78.74" y1="88.9" x2="78.74" y2="101.6" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND@14"/>
<wire x1="78.74" y1="101.6" x2="99.06" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="SDA"/>
<wire x1="78.74" y1="86.36" x2="76.2" y2="86.36" width="0.1524" layer="91"/>
<wire x1="76.2" y1="86.36" x2="76.2" y2="111.76" width="0.1524" layer="91"/>
<wire x1="76.2" y1="111.76" x2="99.06" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IO26"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="SCL"/>
<wire x1="78.74" y1="83.82" x2="73.66" y2="83.82" width="0.1524" layer="91"/>
<wire x1="73.66" y1="83.82" x2="73.66" y2="114.3" width="0.1524" layer="91"/>
<wire x1="73.66" y1="114.3" x2="99.06" y2="114.3" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IO25"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="175.26" y1="99.06" x2="139.7" y2="99.06" width="0.1524" layer="91"/>
<wire x1="139.7" y1="99.06" x2="139.7" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="IO17"/>
<wire x1="139.7" y1="109.22" x2="134.62" y2="109.22" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="DB5"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="175.26" y1="124.46" x2="157.48" y2="124.46" width="0.1524" layer="91"/>
<wire x1="157.48" y1="124.46" x2="157.48" y2="137.16" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="VSS"/>
<pinref part="VR1" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="162.56" y1="132.08" x2="162.56" y2="121.92" width="0.1524" layer="91"/>
<wire x1="162.56" y1="121.92" x2="175.26" y2="121.92" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="VO"/>
<pinref part="VR1" gate="G$1" pin="S"/>
</segment>
</net>
<net name="+8V" class="0">
<segment>
<pinref part="TA4805S" gate="G$1" pin="OUT"/>
<wire x1="91.44" y1="45.72" x2="96.52" y2="45.72" width="0.1524" layer="91"/>
<wire x1="96.52" y1="45.72" x2="104.14" y2="45.72" width="0.1524" layer="91"/>
<wire x1="104.14" y1="45.72" x2="104.14" y2="43.18" width="0.1524" layer="91"/>
<wire x1="96.52" y1="43.18" x2="96.52" y2="45.72" width="0.1524" layer="91"/>
<junction x="96.52" y="45.72"/>
<pinref part="SUPPLY3" gate="+8V" pin="+8V"/>
<wire x1="104.14" y1="45.72" x2="114.3" y2="45.72" width="0.1524" layer="91"/>
<junction x="104.14" y="45.72"/>
<pinref part="C2" gate="G$1" pin="P"/>
<pinref part="C4" gate="G$1" pin="P"/>
</segment>
<segment>
<pinref part="SUPPLY4" gate="+8V" pin="+8V"/>
<wire x1="109.22" y1="73.66" x2="99.06" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="5V"/>
<wire x1="99.06" y1="73.66" x2="99.06" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="175.26" y1="127" x2="167.64" y2="127" width="0.1524" layer="91"/>
<wire x1="167.64" y1="127" x2="167.64" y2="137.16" width="0.1524" layer="91"/>
<pinref part="LCD1" gate="G$1" pin="VDD"/>
<pinref part="VR1" gate="G$1" pin="E"/>
<pinref part="SUPPLY5" gate="+8V" pin="+8V"/>
<wire x1="167.64" y1="137.16" x2="177.8" y2="137.16" width="0.1524" layer="91"/>
<junction x="167.64" y="137.16"/>
</segment>
</net>
<net name="+5V/2" class="0">
<segment>
<wire x1="60.96" y1="43.18" x2="60.96" y2="45.72" width="0.1524" layer="91"/>
<pinref part="TA4805S" gate="G$1" pin="IN"/>
<wire x1="60.96" y1="45.72" x2="66.04" y2="45.72" width="0.1524" layer="91"/>
<wire x1="45.72" y1="45.72" x2="60.96" y2="45.72" width="0.1524" layer="91"/>
<junction x="60.96" y="45.72"/>
<pinref part="SUPPLY6" gate="G$1" pin="+5V/2"/>
<pinref part="C3" gate="G$1" pin="P"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="8.4" severity="warning">
Since Version 8.4, EAGLE supports properties for SPICE simulation. 
Probes in schematics and SPICE mapping objects found in parts and library devices
will not be understood with this version. Update EAGLE to the latest version
for full support of SPICE simulation. 
</note>
</compatibility>
</eagle>
