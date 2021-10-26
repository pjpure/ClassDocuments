<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="M" />
        <signal name="D" />
        <signal name="F" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="A">
        </signal>
        <signal name="Aa" />
        <signal name="c" />
        <signal name="dd" />
        <signal name="e" />
        <signal name="g" />
        <signal name="bb" />
        <signal name="ff" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="clock" />
        <signal name="com0" />
        <signal name="com1" />
        <signal name="com2" />
        <signal name="com3" />
        <signal name="XLXN_21" />
        <port polarity="Input" name="M" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="F" />
        <port polarity="Output" name="Aa" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="dd" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="bb" />
        <port polarity="Output" name="ff" />
        <port polarity="Input" name="clock" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
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
        <blockdef name="d6">
            <timestamp>2020-11-26T7:37:31</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
        </blockdef>
        <blockdef name="m2_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="92" y1="-32" y2="-32" x1="208" />
            <line x2="208" y1="-152" y2="-32" x1="208" />
            <line x2="96" y1="-96" y2="-96" x1="144" />
            <line x2="144" y1="-136" y2="-96" x1="144" />
            <line x2="96" y1="-128" y2="-256" x1="96" />
            <line x2="96" y1="-160" y2="-128" x1="256" />
            <line x2="256" y1="-224" y2="-160" x1="256" />
            <line x2="256" y1="-256" y2="-224" x1="96" />
            <line x2="256" y1="-192" y2="-192" x1="320" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="F" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="M" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="M" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="F" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="A" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="M" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="d6" name="XLXI_11">
            <blockpin signalname="Aa" name="a" />
            <blockpin signalname="bb" name="b" />
            <blockpin signalname="c" name="c" />
            <blockpin signalname="dd" name="d" />
            <blockpin signalname="e" name="e" />
            <blockpin signalname="ff" name="f" />
            <blockpin signalname="g" name="g" />
            <blockpin signalname="XLXN_36" name="inputM" />
        </block>
        <block symbolname="m2_1e" name="XLXI_14">
            <blockpin signalname="XLXN_37" name="D0" />
            <blockpin signalname="A" name="D1" />
            <blockpin name="E" />
            <blockpin signalname="clock" name="S0" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="clock" name="I" />
            <blockpin signalname="com0" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_16">
            <blockpin signalname="clock" name="I" />
            <blockpin signalname="com1" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="XLXN_21" name="P" />
        </block>
        <block symbolname="obuf" name="XLXI_19">
            <blockpin signalname="XLXN_21" name="I" />
            <blockpin signalname="com2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_20">
            <blockpin signalname="XLXN_21" name="I" />
            <blockpin signalname="com3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="D">
            <wire x2="496" y1="816" y2="816" x1="288" />
            <wire x2="672" y1="816" y2="816" x1="496" />
            <wire x2="672" y1="448" y2="816" x1="672" />
            <wire x2="864" y1="448" y2="448" x1="672" />
        </branch>
        <branch name="F">
            <wire x2="496" y1="1056" y2="1056" x1="272" />
            <wire x2="800" y1="1056" y2="1056" x1="496" />
            <wire x2="1120" y1="1056" y2="1056" x1="800" />
            <wire x2="800" y1="720" y2="1056" x1="800" />
            <wire x2="1120" y1="720" y2="720" x1="800" />
        </branch>
        <iomarker fontsize="28" x="288" y="496" name="M" orien="R180" />
        <iomarker fontsize="28" x="288" y="816" name="D" orien="R180" />
        <iomarker fontsize="28" x="272" y="1056" name="F" orien="R180" />
        <instance x="1120" y="512" name="XLXI_1" orien="R0" />
        <instance x="1120" y="784" name="XLXI_2" orien="R0" />
        <instance x="1488" y="640" name="XLXI_3" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1424" y1="416" y2="416" x1="1376" />
            <wire x2="1424" y1="416" y2="512" x1="1424" />
            <wire x2="1488" y1="512" y2="512" x1="1424" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1424" y1="688" y2="688" x1="1376" />
            <wire x2="1424" y1="576" y2="688" x1="1424" />
            <wire x2="1488" y1="576" y2="576" x1="1424" />
        </branch>
        <branch name="M">
            <wire x2="496" y1="496" y2="496" x1="288" />
            <wire x2="496" y1="496" y2="656" x1="496" />
            <wire x2="864" y1="656" y2="656" x1="496" />
            <wire x2="496" y1="656" y2="656" x1="464" />
            <wire x2="464" y1="656" y2="992" x1="464" />
            <wire x2="864" y1="992" y2="992" x1="464" />
            <wire x2="864" y1="384" y2="384" x1="496" />
            <wire x2="496" y1="384" y2="496" x1="496" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1120" y1="384" y2="384" x1="1088" />
        </branch>
        <instance x="864" y="416" name="XLXI_4" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1120" y1="448" y2="448" x1="1088" />
        </branch>
        <instance x="864" y="480" name="XLXI_5" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1120" y1="656" y2="656" x1="1088" />
        </branch>
        <instance x="864" y="688" name="XLXI_6" orien="R0" />
        <instance x="1120" y="1120" name="XLXI_7" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1120" y1="992" y2="992" x1="1088" />
        </branch>
        <instance x="864" y="1024" name="XLXI_8" orien="R0" />
        <branch name="A">
            <wire x2="1408" y1="1024" y2="1024" x1="1376" />
            <wire x2="1568" y1="1024" y2="1024" x1="1408" />
            <wire x2="1808" y1="816" y2="816" x1="1568" />
            <wire x2="1568" y1="816" y2="1024" x1="1568" />
        </branch>
        <instance x="2160" y="1200" name="XLXI_11" orien="R0">
        </instance>
        <branch name="Aa">
            <wire x2="2576" y1="784" y2="784" x1="2544" />
        </branch>
        <branch name="c">
            <wire x2="2576" y1="848" y2="848" x1="2544" />
        </branch>
        <branch name="dd">
            <wire x2="2576" y1="912" y2="912" x1="2544" />
        </branch>
        <branch name="e">
            <wire x2="2576" y1="976" y2="976" x1="2544" />
        </branch>
        <branch name="g">
            <wire x2="2576" y1="1040" y2="1040" x1="2544" />
        </branch>
        <branch name="bb">
            <wire x2="2576" y1="1104" y2="1104" x1="2544" />
        </branch>
        <branch name="ff">
            <wire x2="2576" y1="1168" y2="1168" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2576" y="784" name="Aa" orien="R0" />
        <iomarker fontsize="28" x="2576" y="848" name="c" orien="R0" />
        <iomarker fontsize="28" x="2576" y="912" name="dd" orien="R0" />
        <iomarker fontsize="28" x="2576" y="976" name="e" orien="R0" />
        <iomarker fontsize="28" x="2576" y="1040" name="g" orien="R0" />
        <iomarker fontsize="28" x="2576" y="1104" name="bb" orien="R0" />
        <iomarker fontsize="28" x="2576" y="1168" name="ff" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="2160" y1="784" y2="784" x1="2128" />
        </branch>
        <instance x="1808" y="976" name="XLXI_14" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="1776" y1="544" y2="544" x1="1744" />
            <wire x2="1776" y1="544" y2="752" x1="1776" />
            <wire x2="1808" y1="752" y2="752" x1="1776" />
        </branch>
        <branch name="clock">
            <wire x2="1744" y1="1280" y2="1280" x1="1504" />
            <wire x2="1744" y1="1280" y2="1600" x1="1744" />
            <wire x2="1904" y1="1600" y2="1600" x1="1744" />
            <wire x2="1904" y1="1280" y2="1280" x1="1744" />
            <wire x2="1808" y1="880" y2="880" x1="1744" />
            <wire x2="1744" y1="880" y2="1152" x1="1744" />
            <wire x2="1744" y1="1152" y2="1280" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="1504" y="1280" name="clock" orien="R180" />
        <instance x="1904" y="1312" name="XLXI_15" orien="R0" />
        <instance x="1904" y="1632" name="XLXI_16" orien="R0" />
        <branch name="com0">
            <wire x2="2160" y1="1280" y2="1280" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1280" name="com0" orien="R0" />
        <branch name="com1">
            <wire x2="2160" y1="1600" y2="1600" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1600" name="com1" orien="R0" />
        <instance x="416" y="1360" name="XLXI_12" orien="R0" />
        <instance x="560" y="1536" name="XLXI_19" orien="R0" />
        <instance x="560" y="1616" name="XLXI_20" orien="R0" />
        <branch name="com2">
            <wire x2="816" y1="1504" y2="1504" x1="784" />
        </branch>
        <branch name="com3">
            <wire x2="816" y1="1584" y2="1584" x1="784" />
        </branch>
        <iomarker fontsize="28" x="816" y="1504" name="com2" orien="R0" />
        <iomarker fontsize="28" x="816" y="1584" name="com3" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="480" y1="1360" y2="1424" x1="480" />
            <wire x2="480" y1="1424" y2="1504" x1="480" />
            <wire x2="560" y1="1504" y2="1504" x1="480" />
            <wire x2="480" y1="1504" y2="1584" x1="480" />
            <wire x2="560" y1="1584" y2="1584" x1="480" />
        </branch>
    </sheet>
</drawing>