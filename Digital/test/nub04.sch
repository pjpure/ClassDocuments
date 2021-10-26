<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sw" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="a" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_16" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="com2" />
        <signal name="com1" />
        <signal name="com3" />
        <signal name="XLXN_27" />
        <signal name="Buz" />
        <signal name="com0" />
        <signal name="XLXN_19" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <port polarity="Input" name="sw" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="com2" />
        <port polarity="Output" name="com1" />
        <port polarity="Output" name="com3" />
        <port polarity="Output" name="Buz" />
        <port polarity="Output" name="com0" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nub15">
            <timestamp>2020-11-26T7:5:24</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
        </blockdef>
        <block symbolname="BCD27" name="XLXI_4">
            <blockpin signalname="a" name="A_7" />
            <blockpin signalname="XLXN_10" name="Bit_0" />
            <blockpin signalname="XLXN_9" name="Bit_1" />
            <blockpin signalname="XLXN_8" name="Bit_2" />
            <blockpin name="Bit_3" />
            <blockpin signalname="b" name="B_7" />
            <blockpin signalname="c" name="C_7" />
            <blockpin signalname="d" name="D_7" />
            <blockpin signalname="e" name="E_7" />
            <blockpin signalname="f" name="F_7" />
            <blockpin signalname="g" name="G_7" />
        </block>
        <block symbolname="or3" name="XLXI_9">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_10" name="I2" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="XLXN_21" name="P" />
        </block>
        <block symbolname="obuf" name="XLXI_13">
            <blockpin signalname="XLXN_21" name="I" />
            <blockpin signalname="com1" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_14">
            <blockpin signalname="XLXN_21" name="I" />
            <blockpin signalname="com2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_15">
            <blockpin signalname="XLXN_21" name="I" />
            <blockpin signalname="com3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="Buz" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_34" name="I1" />
            <blockpin signalname="com0" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_18">
            <blockpin signalname="XLXN_19" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_33" name="I" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="nub15" name="XLXI_22">
            <blockpin signalname="XLXN_10" name="a" />
            <blockpin signalname="XLXN_9" name="b" />
            <blockpin signalname="XLXN_8" name="c" />
            <blockpin signalname="sw" name="sw" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="sw">
            <wire x2="1056" y1="1024" y2="1024" x1="1024" />
        </branch>
        <instance x="1584" y="1424" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_9">
            <wire x2="1008" y1="1296" y2="1424" x1="1008" />
            <wire x2="1072" y1="1424" y2="1424" x1="1008" />
            <wire x2="1488" y1="1296" y2="1296" x1="1008" />
            <wire x2="1488" y1="1088" y2="1088" x1="1440" />
            <wire x2="1488" y1="1088" y2="1296" x1="1488" />
            <wire x2="1488" y1="1072" y2="1088" x1="1488" />
            <wire x2="1584" y1="1072" y2="1072" x1="1488" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1072" y1="1248" y2="1360" x1="1072" />
            <wire x2="1472" y1="1248" y2="1248" x1="1072" />
            <wire x2="1472" y1="1248" y2="1616" x1="1472" />
            <wire x2="2032" y1="1616" y2="1616" x1="1472" />
            <wire x2="1472" y1="1152" y2="1152" x1="1440" />
            <wire x2="1472" y1="1152" y2="1248" x1="1472" />
            <wire x2="1472" y1="1008" y2="1152" x1="1472" />
            <wire x2="1584" y1="1008" y2="1008" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1024" name="sw" orien="R180" />
        <branch name="g">
            <wire x2="2000" y1="1008" y2="1008" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1008" name="g" orien="R0" />
        <branch name="f">
            <wire x2="2000" y1="1072" y2="1072" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1072" name="f" orien="R0" />
        <branch name="e">
            <wire x2="2000" y1="1136" y2="1136" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1136" name="e" orien="R0" />
        <branch name="d">
            <wire x2="2000" y1="1200" y2="1200" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1200" name="d" orien="R0" />
        <branch name="c">
            <wire x2="2000" y1="1264" y2="1264" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1264" name="c" orien="R0" />
        <branch name="b">
            <wire x2="2000" y1="1328" y2="1328" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1328" name="b" orien="R0" />
        <branch name="a">
            <wire x2="2000" y1="1392" y2="1392" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2000" y="1392" name="a" orien="R0" />
        <instance x="1072" y="1552" name="XLXI_9" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="1120" y1="2016" y2="2080" x1="1120" />
            <wire x2="1328" y1="2080" y2="2080" x1="1120" />
            <wire x2="1120" y1="2080" y2="2160" x1="1120" />
            <wire x2="1200" y1="2160" y2="2160" x1="1120" />
            <wire x2="1120" y1="2160" y2="2240" x1="1120" />
            <wire x2="1200" y1="2240" y2="2240" x1="1120" />
        </branch>
        <instance x="1056" y="2016" name="XLXI_12" orien="R0" />
        <instance x="1328" y="2112" name="XLXI_13" orien="R0" />
        <instance x="1200" y="2192" name="XLXI_14" orien="R0" />
        <instance x="1200" y="2272" name="XLXI_15" orien="R0" />
        <branch name="com2">
            <wire x2="1456" y1="2160" y2="2160" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1456" y="2160" name="com2" orien="R0" />
        <branch name="com1">
            <wire x2="1584" y1="2080" y2="2080" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="2080" name="com1" orien="R0" />
        <branch name="com3">
            <wire x2="1456" y1="2240" y2="2240" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1456" y="2240" name="com3" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1072" y1="1488" y2="1568" x1="1072" />
            <wire x2="1504" y1="1568" y2="1568" x1="1072" />
            <wire x2="1504" y1="1024" y2="1024" x1="1440" />
            <wire x2="1504" y1="1024" y2="1136" x1="1504" />
            <wire x2="1584" y1="1136" y2="1136" x1="1504" />
            <wire x2="1504" y1="1136" y2="1568" x1="1504" />
            <wire x2="1568" y1="1024" y2="1024" x1="1504" />
            <wire x2="1568" y1="1024" y2="1552" x1="1568" />
            <wire x2="2032" y1="1552" y2="1552" x1="1568" />
        </branch>
        <instance x="2032" y="1680" name="XLXI_17" orien="R0" />
        <branch name="Buz">
            <wire x2="2320" y1="1584" y2="1584" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2320" y="1584" name="Buz" orien="R0" />
        <instance x="1440" y="1920" name="XLXI_11" orien="R0" />
        <branch name="com0">
            <wire x2="1712" y1="1824" y2="1824" x1="1696" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1376" y1="1760" y2="1824" x1="1376" />
            <wire x2="1408" y1="1760" y2="1760" x1="1376" />
            <wire x2="1408" y1="1760" y2="1856" x1="1408" />
            <wire x2="1440" y1="1856" y2="1856" x1="1408" />
        </branch>
        <instance x="1440" y="1824" name="XLXI_18" orien="R180" />
        <iomarker fontsize="28" x="1712" y="1824" name="com0" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="1344" y1="1424" y2="1424" x1="1328" />
            <wire x2="1344" y1="1424" y2="1600" x1="1344" />
            <wire x2="1344" y1="1600" y2="1600" x1="1328" />
        </branch>
        <instance x="1296" y="1600" name="XLXI_21" orien="R90" />
        <branch name="XLXN_34">
            <wire x2="1328" y1="1824" y2="1968" x1="1328" />
            <wire x2="1424" y1="1968" y2="1968" x1="1328" />
            <wire x2="1424" y1="1792" y2="1968" x1="1424" />
            <wire x2="1440" y1="1792" y2="1792" x1="1424" />
        </branch>
        <instance x="1056" y="1184" name="XLXI_22" orien="R0">
        </instance>
    </sheet>
</drawing>