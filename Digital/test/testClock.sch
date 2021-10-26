<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_6" />
        <signal name="XLXN_8" />
        <signal name="clock" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="sw" />
        <signal name="led">
        </signal>
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="c" />
        <signal name="d" />
        <signal name="b" />
        <signal name="a" />
        <signal name="XLXN_31" />
        <signal name="com0" />
        <signal name="com1" />
        <signal name="com2" />
        <signal name="com3" />
        <port polarity="Input" name="clock" />
        <port polarity="Input" name="sw" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="com0" />
        <port polarity="Output" name="com1" />
        <port polarity="Output" name="com2" />
        <port polarity="Output" name="com3" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="div8">
            <timestamp>2020-11-25T20:58:46</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="BCD27">
            <timestamp>2020-11-25T21:16:44</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
        </blockdef>
        <blockdef name="counter05">
            <timestamp>2020-11-25T21:15:17</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
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
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <block symbolname="div8" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="CI" />
            <blockpin signalname="XLXN_22" name="CO" />
        </block>
        <block symbolname="div8" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="CI" />
            <blockpin signalname="XLXN_6" name="CO" />
        </block>
        <block symbolname="div8" name="XLXI_5">
            <blockpin signalname="clock" name="CI" />
            <blockpin signalname="XLXN_8" name="CO" />
        </block>
        <block symbolname="BCD27" name="XLXI_10">
            <blockpin signalname="a" name="A_7" />
            <blockpin signalname="XLXN_19" name="Bit_0" />
            <blockpin signalname="XLXN_16" name="Bit_1" />
            <blockpin signalname="XLXN_15" name="Bit_2" />
            <blockpin signalname="XLXN_14" name="Bit_3" />
            <blockpin signalname="b" name="B_7" />
            <blockpin signalname="c" name="C_7" />
            <blockpin signalname="d" name="D_7" />
            <blockpin signalname="e" name="E_7" />
            <blockpin signalname="f" name="F_7" />
            <blockpin signalname="g" name="G_7" />
        </block>
        <block symbolname="counter05" name="XLXI_11">
            <blockpin signalname="XLXN_14" name="A" />
            <blockpin signalname="XLXN_15" name="B" />
            <blockpin signalname="XLXN_16" name="C" />
            <blockpin signalname="led" name="CLK" />
            <blockpin signalname="XLXN_18" name="CLR" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="XLXN_18" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_13">
            <blockpin signalname="XLXN_19" name="G" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="sw" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="led" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_15">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="com0" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_16">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="com1" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_17">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="com2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_18">
            <blockpin signalname="XLXN_31" name="I" />
            <blockpin signalname="com3" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="XLXN_31" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1232" y="656" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="1232" y1="624" y2="624" x1="1200" />
        </branch>
        <instance x="816" y="656" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="816" y1="624" y2="624" x1="784" />
        </branch>
        <instance x="400" y="656" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clock">
            <wire x2="400" y1="624" y2="624" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="624" name="clock" orien="R180" />
        <instance x="2144" y="1088" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_14">
            <wire x2="2144" y1="864" y2="864" x1="2112" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2144" y1="800" y2="800" x1="2112" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2144" y1="736" y2="736" x1="2112" />
        </branch>
        <instance x="1728" y="896" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_18">
            <wire x2="1728" y1="800" y2="800" x1="1440" />
            <wire x2="1440" y1="800" y2="976" x1="1440" />
        </branch>
        <instance x="1376" y="1104" name="XLXI_12" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="2144" y1="640" y2="672" x1="2144" />
        </branch>
        <instance x="2208" y="512" name="XLXI_13" orien="R180" />
        <instance x="1440" y="1344" name="XLXI_2" orien="R0" />
        <branch name="sw">
            <wire x2="1440" y1="1280" y2="1280" x1="1136" />
        </branch>
        <branch name="led">
            <wire x2="1728" y1="736" y2="736" x1="1648" />
            <wire x2="1648" y1="736" y2="976" x1="1648" />
            <wire x2="1728" y1="976" y2="976" x1="1648" />
            <wire x2="1728" y1="976" y2="1248" x1="1728" />
            <wire x2="1728" y1="1248" y2="1248" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1136" y="1280" name="sw" orien="R180" />
        <branch name="XLXN_22">
            <wire x2="1440" y1="1216" y2="1216" x1="1360" />
            <wire x2="1360" y1="1216" y2="1376" x1="1360" />
            <wire x2="1712" y1="1376" y2="1376" x1="1360" />
            <wire x2="1712" y1="624" y2="624" x1="1616" />
            <wire x2="1712" y1="624" y2="1376" x1="1712" />
        </branch>
        <branch name="g">
            <wire x2="2560" y1="672" y2="672" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2560" y="672" name="g" orien="R0" />
        <branch name="f">
            <wire x2="2560" y1="736" y2="736" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2560" y="736" name="f" orien="R0" />
        <branch name="e">
            <wire x2="2560" y1="800" y2="800" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2560" y="800" name="e" orien="R0" />
        <branch name="c">
            <wire x2="2560" y1="928" y2="928" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2560" y="928" name="c" orien="R0" />
        <branch name="d">
            <wire x2="2560" y1="864" y2="864" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2560" y="864" name="d" orien="R0" />
        <branch name="b">
            <wire x2="2560" y1="992" y2="992" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2560" y="992" name="b" orien="R0" />
        <branch name="a">
            <wire x2="2560" y1="1056" y2="1056" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1056" name="a" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="1456" y1="1584" y2="1584" x1="992" />
            <wire x2="1456" y1="1584" y2="1680" x1="1456" />
            <wire x2="1456" y1="1680" y2="1808" x1="1456" />
            <wire x2="1456" y1="1808" y2="1968" x1="1456" />
        </branch>
        <instance x="1456" y="1616" name="XLXI_15" orien="R0" />
        <instance x="1456" y="1712" name="XLXI_16" orien="R0" />
        <instance x="1456" y="1840" name="XLXI_17" orien="R0" />
        <instance x="1456" y="2000" name="XLXI_18" orien="R0" />
        <instance x="928" y="1712" name="XLXI_19" orien="R0" />
        <branch name="com0">
            <wire x2="1712" y1="1584" y2="1584" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1584" name="com0" orien="R0" />
        <branch name="com1">
            <wire x2="1712" y1="1680" y2="1680" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1680" name="com1" orien="R0" />
        <branch name="com2">
            <wire x2="1712" y1="1808" y2="1808" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1808" name="com2" orien="R0" />
        <branch name="com3">
            <wire x2="1712" y1="1968" y2="1968" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1968" name="com3" orien="R0" />
    </sheet>
</drawing>