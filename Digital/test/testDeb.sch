<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sw" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="a" />
        <signal name="XLXN_13" />
        <signal name="com2" />
        <signal name="com1" />
        <signal name="com3" />
        <signal name="XLXN_17" />
        <signal name="XLXN_8" />
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
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="BCD27" name="XLXI_1">
            <blockpin signalname="a" name="A_7" />
            <blockpin signalname="XLXN_5" name="Bit_0" />
            <blockpin signalname="XLXN_3" name="Bit_1" />
            <blockpin signalname="XLXN_8" name="Bit_2" />
            <blockpin name="Bit_3" />
            <blockpin signalname="b" name="B_7" />
            <blockpin signalname="c" name="C_7" />
            <blockpin signalname="d" name="D_7" />
            <blockpin signalname="e" name="E_7" />
            <blockpin signalname="f" name="F_7" />
            <blockpin signalname="g" name="G_7" />
        </block>
        <block symbolname="or3" name="XLXI_2">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_13">
            <blockpin signalname="XLXN_13" name="I" />
            <blockpin signalname="com1" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_14">
            <blockpin signalname="XLXN_13" name="I" />
            <blockpin signalname="com2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_15">
            <blockpin signalname="XLXN_13" name="I" />
            <blockpin signalname="com3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="Buz" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
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
            <blockpin signalname="XLXN_5" name="a" />
            <blockpin signalname="XLXN_3" name="b" />
            <blockpin signalname="XLXN_8" name="c" />
            <blockpin signalname="sw" name="sw" />
        </block>
        <block symbolname="gnd" name="XLXI_23">
            <blockpin signalname="XLXN_13" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="sw">
            <wire x2="1072" y1="864" y2="864" x1="1040" />
        </branch>
        <instance x="1600" y="1264" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1024" y1="1136" y2="1264" x1="1024" />
            <wire x2="1088" y1="1264" y2="1264" x1="1024" />
            <wire x2="1504" y1="1136" y2="1136" x1="1024" />
            <wire x2="1504" y1="928" y2="928" x1="1456" />
            <wire x2="1504" y1="928" y2="1136" x1="1504" />
            <wire x2="1504" y1="912" y2="928" x1="1504" />
            <wire x2="1600" y1="912" y2="912" x1="1504" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1088" y1="1088" y2="1200" x1="1088" />
            <wire x2="1488" y1="1088" y2="1088" x1="1088" />
            <wire x2="1488" y1="1088" y2="1456" x1="1488" />
            <wire x2="2048" y1="1456" y2="1456" x1="1488" />
            <wire x2="1488" y1="992" y2="992" x1="1456" />
            <wire x2="1488" y1="992" y2="1088" x1="1488" />
            <wire x2="1488" y1="848" y2="992" x1="1488" />
            <wire x2="1600" y1="848" y2="848" x1="1488" />
        </branch>
        <branch name="g">
            <wire x2="2016" y1="848" y2="848" x1="1984" />
        </branch>
        <branch name="f">
            <wire x2="2016" y1="912" y2="912" x1="1984" />
        </branch>
        <branch name="e">
            <wire x2="2016" y1="976" y2="976" x1="1984" />
        </branch>
        <branch name="d">
            <wire x2="2016" y1="1040" y2="1040" x1="1984" />
        </branch>
        <branch name="c">
            <wire x2="2016" y1="1104" y2="1104" x1="1984" />
        </branch>
        <branch name="b">
            <wire x2="2016" y1="1168" y2="1168" x1="1984" />
        </branch>
        <branch name="a">
            <wire x2="2016" y1="1232" y2="1232" x1="1984" />
        </branch>
        <instance x="1088" y="1392" name="XLXI_2" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1136" y1="1856" y2="1920" x1="1136" />
            <wire x2="1344" y1="1920" y2="1920" x1="1136" />
            <wire x2="1136" y1="1920" y2="2000" x1="1136" />
            <wire x2="1216" y1="2000" y2="2000" x1="1136" />
            <wire x2="1136" y1="2000" y2="2080" x1="1136" />
            <wire x2="1216" y1="2080" y2="2080" x1="1136" />
        </branch>
        <instance x="1344" y="1952" name="XLXI_13" orien="R0" />
        <instance x="1216" y="2032" name="XLXI_14" orien="R0" />
        <instance x="1216" y="2112" name="XLXI_15" orien="R0" />
        <branch name="com2">
            <wire x2="1472" y1="2000" y2="2000" x1="1440" />
        </branch>
        <branch name="com1">
            <wire x2="1600" y1="1920" y2="1920" x1="1568" />
        </branch>
        <branch name="com3">
            <wire x2="1472" y1="2080" y2="2080" x1="1440" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1088" y1="1328" y2="1408" x1="1088" />
            <wire x2="1520" y1="1408" y2="1408" x1="1088" />
            <wire x2="1520" y1="864" y2="864" x1="1456" />
            <wire x2="1520" y1="864" y2="976" x1="1520" />
            <wire x2="1600" y1="976" y2="976" x1="1520" />
            <wire x2="1520" y1="976" y2="1408" x1="1520" />
            <wire x2="1584" y1="864" y2="864" x1="1520" />
            <wire x2="1584" y1="864" y2="1392" x1="1584" />
            <wire x2="2048" y1="1392" y2="1392" x1="1584" />
        </branch>
        <instance x="2048" y="1520" name="XLXI_17" orien="R0" />
        <branch name="Buz">
            <wire x2="2336" y1="1424" y2="1424" x1="2304" />
        </branch>
        <instance x="1456" y="1760" name="XLXI_7" orien="R0" />
        <branch name="com0">
            <wire x2="1728" y1="1664" y2="1664" x1="1712" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1392" y1="1600" y2="1664" x1="1392" />
            <wire x2="1424" y1="1600" y2="1600" x1="1392" />
            <wire x2="1424" y1="1600" y2="1696" x1="1424" />
            <wire x2="1456" y1="1696" y2="1696" x1="1424" />
        </branch>
        <instance x="1456" y="1664" name="XLXI_18" orien="R180" />
        <branch name="XLXN_33">
            <wire x2="1360" y1="1264" y2="1264" x1="1344" />
            <wire x2="1360" y1="1264" y2="1440" x1="1360" />
            <wire x2="1360" y1="1440" y2="1440" x1="1344" />
        </branch>
        <instance x="1312" y="1440" name="XLXI_21" orien="R90" />
        <branch name="XLXN_34">
            <wire x2="1344" y1="1664" y2="1808" x1="1344" />
            <wire x2="1440" y1="1808" y2="1808" x1="1344" />
            <wire x2="1440" y1="1632" y2="1808" x1="1440" />
            <wire x2="1456" y1="1632" y2="1632" x1="1440" />
        </branch>
        <instance x="1072" y="1024" name="XLXI_22" orien="R0">
        </instance>
        <instance x="1200" y="1728" name="XLXI_23" orien="R180" />
        <iomarker fontsize="28" x="1040" y="864" name="sw" orien="R180" />
        <iomarker fontsize="28" x="2016" y="848" name="g" orien="R0" />
        <iomarker fontsize="28" x="2016" y="912" name="f" orien="R0" />
        <iomarker fontsize="28" x="2016" y="976" name="e" orien="R0" />
        <iomarker fontsize="28" x="2016" y="1040" name="d" orien="R0" />
        <iomarker fontsize="28" x="2016" y="1104" name="c" orien="R0" />
        <iomarker fontsize="28" x="2016" y="1168" name="b" orien="R0" />
        <iomarker fontsize="28" x="2016" y="1232" name="a" orien="R0" />
        <iomarker fontsize="28" x="1472" y="2000" name="com2" orien="R0" />
        <iomarker fontsize="28" x="1600" y="1920" name="com1" orien="R0" />
        <iomarker fontsize="28" x="1472" y="2080" name="com3" orien="R0" />
        <iomarker fontsize="28" x="2336" y="1424" name="Buz" orien="R0" />
        <iomarker fontsize="28" x="1728" y="1664" name="com0" orien="R0" />
    </sheet>
</drawing>