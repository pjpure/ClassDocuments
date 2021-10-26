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
        <instance x="1024" y="1296" name="XLXI_1" orien="R0" />
        <branch name="In1(7:0)">
            <wire x2="992" y1="976" y2="976" x1="912" />
            <wire x2="1024" y1="976" y2="976" x1="992" />
        </branch>
        <branch name="In2(7:0)">
            <wire x2="992" y1="1104" y2="1104" x1="912" />
            <wire x2="1024" y1="1104" y2="1104" x1="992" />
        </branch>
        <instance x="1600" y="1136" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(0:7)">
            <wire x2="1600" y1="1040" y2="1040" x1="1472" />
        </branch>
        <instance x="2032" y="1456" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2(0:3)">
            <wire x2="2032" y1="1040" y2="1040" x1="1984" />
        </branch>
        <instance x="1056" y="1376" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clock">
            <wire x2="1056" y1="1344" y2="1344" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1344" name="clock" orien="R180" />
        <branch name="XLXN_6">
            <wire x2="1520" y1="1344" y2="1344" x1="1440" />
            <wire x2="1520" y1="1344" y2="1488" x1="1520" />
            <wire x2="1536" y1="1488" y2="1488" x1="1520" />
            <wire x2="1520" y1="1104" y2="1344" x1="1520" />
            <wire x2="1600" y1="1104" y2="1104" x1="1520" />
        </branch>
        <instance x="1536" y="1712" name="XLXI_5" orien="R0">
        </instance>
        <branch name="com0">
            <wire x2="1952" y1="1488" y2="1488" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1488" name="com0" orien="R0" />
        <branch name="com1">
            <wire x2="1952" y1="1552" y2="1552" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1552" name="com1" orien="R0" />
        <instance x="1600" y="1888" name="XLXI_6" orien="R0" />
        <branch name="com3">
            <wire x2="1664" y1="1888" y2="1936" x1="1664" />
            <wire x2="1904" y1="1936" y2="1936" x1="1664" />
            <wire x2="1664" y1="1936" y2="2048" x1="1664" />
            <wire x2="1904" y1="2048" y2="2048" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1936" name="com3" orien="R0" />
        <iomarker fontsize="28" x="1904" y="2048" name="com3" orien="R0" />
        <branch name="g">
            <wire x2="2448" y1="1040" y2="1040" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1040" name="g" orien="R0" />
        <branch name="f">
            <wire x2="2448" y1="1104" y2="1104" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1104" name="f" orien="R0" />
        <branch name="e">
            <wire x2="2448" y1="1168" y2="1168" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1168" name="e" orien="R0" />
        <branch name="d">
            <wire x2="2448" y1="1232" y2="1232" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1232" name="d" orien="R0" />
        <branch name="c">
            <wire x2="2448" y1="1296" y2="1296" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1296" name="c" orien="R0" />
        <branch name="b">
            <wire x2="2448" y1="1360" y2="1360" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1360" name="b" orien="R0" />
        <branch name="a">
            <wire x2="2448" y1="1424" y2="1424" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1424" name="a" orien="R0" />
        <instance x="528" y="1008" name="XLXI_7" orien="R0">
        </instance>
        <instance x="528" y="1136" name="XLXI_8" orien="R0">
        </instance>
        <branch name="SW(0:7)">
            <wire x2="528" y1="976" y2="976" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="976" name="SW(0:7)" orien="R180" />
        <branch name="DP(1:8)">
            <wire x2="528" y1="1104" y2="1104" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="1104" name="DP(1:8)" orien="R180" />
        <branch name="XLXN_14">
            <wire x2="1024" y1="736" y2="736" x1="960" />
            <wire x2="1024" y1="736" y2="848" x1="1024" />
        </branch>
        <instance x="896" y="864" name="XLXI_9" orien="R0" />
    </sheet>
</drawing>