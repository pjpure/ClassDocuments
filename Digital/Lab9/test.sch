<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="In1(7:0)" />
        <signal name="In2(7:0)" />
        <signal name="XLXN_1(0:7)" />
        <signal name="XLXN_2(0:3)" />
        <signal name="clock" />
        <signal name="XLXN_6" />
        <signal name="com0" />
        <signal name="com1" />
        <signal name="com3" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="a" />
        <signal name="SW(0:7)" />
        <signal name="DP(1:8)" />
        <signal name="XLXN_14" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="com0" />
        <port polarity="Output" name="com1" />
        <port polarity="Output" name="com3" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <port polarity="Input" name="SW(0:7)" />
        <port polarity="Input" name="DP(1:8)" />
        <blockdef name="add8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
        </blockdef>
        <blockdef name="Mux16">
            <timestamp>2020-11-4T13:34:56</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <blockdef name="BCD27">
            <timestamp>2020-11-4T12:45:5</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
        </blockdef>
        <blockdef name="DIV">
            <timestamp>2020-10-29T8:0:24</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="selectCommon">
            <timestamp>2020-11-4T8:10:29</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="input1">
            <timestamp>2020-11-4T12:22:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
        </blockdef>
        <blockdef name="input2">
            <timestamp>2020-11-4T13:20:56</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="add8" name="XLXI_1">
            <blockpin signalname="In1(7:0)" name="A(7:0)" />
            <blockpin signalname="In2(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_14" name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_1(0:7)" name="S(7:0)" />
        </block>
        <block symbolname="Mux16" name="XLXI_2">
            <blockpin signalname="XLXN_6" name="Clock" />
            <blockpin signalname="XLXN_1(0:7)" name="Inp(0:7)" />
            <blockpin signalname="XLXN_2(0:3)" name="S(0:3)" />
        </block>
        <block symbolname="BCD27" name="XLXI_3">
            <blockpin signalname="a" name="A_7" />
            <blockpin signalname="XLXN_2(0:3)" name="bit(0:3)" />
            <blockpin signalname="b" name="B_7" />
            <blockpin signalname="c" name="C_7" />
            <blockpin signalname="d" name="D_7" />
            <blockpin signalname="e" name="E_7" />
            <blockpin signalname="f" name="F_7" />
            <blockpin signalname="g" name="G_7" />
        </block>
        <block symbolname="DIV" name="XLXI_4">
            <blockpin signalname="clock" name="CI" />
            <blockpin signalname="XLXN_6" name="CO" />
        </block>
        <block symbolname="selectCommon" name="XLXI_5">
            <blockpin signalname="XLXN_6" name="Clock" />
            <blockpin signalname="com0" name="com0" />
            <blockpin signalname="com1" name="com1" />
            <blockpin name="com2" />
            <blockpin name="com3" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="com3" name="P" />
        </block>
        <block symbolname="input1" name="XLXI_7">
            <blockpin signalname="In1(7:0)" name="In1(0:7)" />
            <blockpin signalname="SW(0:7)" name="SW(0:7)" />
        </block>
        <block symbolname="input2" name="XLXI_8">
            <blockpin signalname="DP(1:8)" name="DP(1:8)" />
            <blockpin signalname="In2(7:0)" name="In2(8:1)" />
        </block>
        <block symbolname="gnd" name="XLXI_9">
            <blockpin signalname="XLXN_14" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1264" y="1152" name="XLXI_1" orien="R0" />
        <branch name="In1(7:0)">
            <wire x2="1232" y1="832" y2="832" x1="1152" />
            <wire x2="1264" y1="832" y2="832" x1="1232" />
        </branch>
        <branch name="In2(7:0)">
            <wire x2="1232" y1="960" y2="960" x1="1152" />
            <wire x2="1264" y1="960" y2="960" x1="1232" />
        </branch>
        <instance x="1840" y="992" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(0:7)">
            <wire x2="1840" y1="896" y2="896" x1="1712" />
        </branch>
        <instance x="2272" y="1312" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2(0:3)">
            <wire x2="2272" y1="896" y2="896" x1="2224" />
        </branch>
        <instance x="1296" y="1232" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clock">
            <wire x2="1296" y1="1200" y2="1200" x1="1264" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1760" y1="1200" y2="1200" x1="1680" />
            <wire x2="1760" y1="1200" y2="1344" x1="1760" />
            <wire x2="1776" y1="1344" y2="1344" x1="1760" />
            <wire x2="1760" y1="960" y2="1200" x1="1760" />
            <wire x2="1840" y1="960" y2="960" x1="1760" />
        </branch>
        <instance x="1776" y="1568" name="XLXI_5" orien="R0">
        </instance>
        <branch name="com0">
            <wire x2="2192" y1="1344" y2="1344" x1="2160" />
        </branch>
        <branch name="com1">
            <wire x2="2192" y1="1408" y2="1408" x1="2160" />
        </branch>
        <instance x="1840" y="1744" name="XLXI_6" orien="R0" />
        <branch name="com3">
            <wire x2="1904" y1="1744" y2="1792" x1="1904" />
            <wire x2="2144" y1="1792" y2="1792" x1="1904" />
            <wire x2="1904" y1="1792" y2="1904" x1="1904" />
            <wire x2="2144" y1="1904" y2="1904" x1="1904" />
        </branch>
        <branch name="g">
            <wire x2="2688" y1="896" y2="896" x1="2656" />
        </branch>
        <branch name="f">
            <wire x2="2688" y1="960" y2="960" x1="2656" />
        </branch>
        <branch name="e">
            <wire x2="2688" y1="1024" y2="1024" x1="2656" />
        </branch>
        <branch name="d">
            <wire x2="2688" y1="1088" y2="1088" x1="2656" />
        </branch>
        <branch name="c">
            <wire x2="2688" y1="1152" y2="1152" x1="2656" />
        </branch>
        <branch name="b">
            <wire x2="2688" y1="1216" y2="1216" x1="2656" />
        </branch>
        <branch name="a">
            <wire x2="2688" y1="1280" y2="1280" x1="2656" />
        </branch>
        <instance x="768" y="864" name="XLXI_7" orien="R0">
        </instance>
        <instance x="768" y="992" name="XLXI_8" orien="R0">
        </instance>
        <branch name="SW(0:7)">
            <wire x2="768" y1="832" y2="832" x1="736" />
        </branch>
        <branch name="DP(1:8)">
            <wire x2="768" y1="960" y2="960" x1="736" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1264" y1="592" y2="592" x1="1200" />
            <wire x2="1264" y1="592" y2="704" x1="1264" />
        </branch>
        <instance x="1136" y="720" name="XLXI_9" orien="R0" />
        <iomarker fontsize="28" x="1264" y="1200" name="clock" orien="R180" />
        <iomarker fontsize="28" x="2192" y="1344" name="com0" orien="R0" />
        <iomarker fontsize="28" x="2192" y="1408" name="com1" orien="R0" />
        <iomarker fontsize="28" x="2144" y="1792" name="com3" orien="R0" />
        <iomarker fontsize="28" x="2144" y="1904" name="com3" orien="R0" />
        <iomarker fontsize="28" x="2688" y="896" name="g" orien="R0" />
        <iomarker fontsize="28" x="2688" y="960" name="f" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1024" name="e" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1088" name="d" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1152" name="c" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1216" name="b" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1280" name="a" orien="R0" />
        <iomarker fontsize="28" x="736" y="832" name="SW(0:7)" orien="R180" />
        <iomarker fontsize="28" x="736" y="960" name="DP(1:8)" orien="R180" />
    </sheet>
</drawing>