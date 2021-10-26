<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_8" />
        <signal name="XLXN_16" />
        <signal name="XLXN_20" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_31" />
        <signal name="C" />
        <signal name="Jb" />
        <signal name="A" />
        <signal name="CLR" />
        <signal name="Ka" />
        <signal name="Ja" />
        <signal name="B" />
        <signal name="Jc" />
        <signal name="CLK" />
        <signal name="XLXN_9" />
        <signal name="XLXN_28" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="A" />
        <port polarity="Input" name="CLR" />
        <port polarity="Output" name="B" />
        <port polarity="Input" name="CLK" />
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="Ka" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="Ja" name="P" />
        </block>
        <block symbolname="fjkc" name="XLXI_2">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="Jb" name="J" />
            <blockpin signalname="A" name="K" />
            <blockpin signalname="B" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_3">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="Ja" name="J" />
            <blockpin signalname="Ka" name="K" />
            <blockpin signalname="A" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="Jc" name="J" />
            <blockpin signalname="A" name="K" />
            <blockpin signalname="C" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="Jc" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="Jb" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1664" y="656" name="XLXI_11" orien="R0" />
        <instance x="1840" y="688" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="80" y="1376" name="CLR" orien="R180" />
        <iomarker fontsize="28" x="80" y="1104" name="CLK" orien="R180" />
        <instance x="1312" y="1216" name="XLXI_2" orien="R0" />
        <instance x="2000" y="1216" name="XLXI_3" orien="R0" />
        <instance x="528" y="1232" name="XLXI_1" orien="R0" />
        <branch name="CLR">
            <wire x2="528" y1="1376" y2="1376" x1="80" />
            <wire x2="1312" y1="1376" y2="1376" x1="528" />
            <wire x2="2000" y1="1376" y2="1376" x1="1312" />
            <wire x2="528" y1="1200" y2="1376" x1="528" />
            <wire x2="1312" y1="1184" y2="1376" x1="1312" />
            <wire x2="2000" y1="1184" y2="1376" x1="2000" />
        </branch>
        <branch name="Ka">
            <wire x2="1808" y1="656" y2="656" x1="1728" />
            <wire x2="1808" y1="656" y2="960" x1="1808" />
            <wire x2="1904" y1="960" y2="960" x1="1808" />
            <wire x2="2000" y1="960" y2="960" x1="1904" />
        </branch>
        <branch name="Ja">
            <wire x2="1904" y1="688" y2="768" x1="1904" />
            <wire x2="1904" y1="768" y2="896" x1="1904" />
            <wire x2="2000" y1="896" y2="896" x1="1904" />
        </branch>
        <branch name="CLK">
            <wire x2="352" y1="1104" y2="1104" x1="80" />
            <wire x2="400" y1="1104" y2="1104" x1="352" />
            <wire x2="528" y1="1104" y2="1104" x1="400" />
            <wire x2="352" y1="1104" y2="1264" x1="352" />
            <wire x2="928" y1="1264" y2="1264" x1="352" />
            <wire x2="1920" y1="1264" y2="1264" x1="928" />
            <wire x2="928" y1="1088" y2="1264" x1="928" />
            <wire x2="1248" y1="1088" y2="1088" x1="928" />
            <wire x2="1312" y1="1088" y2="1088" x1="1248" />
            <wire x2="2000" y1="1088" y2="1088" x1="1920" />
            <wire x2="1920" y1="1088" y2="1264" x1="1920" />
        </branch>
        <instance x="672" y="480" name="XLXI_6" orien="R0" />
        <instance x="272" y="448" name="XLXI_5" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="672" y1="352" y2="352" x1="528" />
        </branch>
        <branch name="B">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="112" y="384" type="branch" />
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="960" type="branch" />
            <wire x2="272" y1="384" y2="384" x1="112" />
            <wire x2="112" y1="384" y2="672" x1="112" />
            <wire x2="1776" y1="672" y2="672" x1="112" />
            <wire x2="1776" y1="672" y2="960" x1="1776" />
            <wire x2="1776" y1="960" y2="1680" x1="1776" />
            <wire x2="1776" y1="960" y2="960" x1="1696" />
        </branch>
        <branch name="Jc">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="400" y="912" type="branch" />
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="384" type="branch" />
            <wire x2="400" y1="640" y2="912" x1="400" />
            <wire x2="528" y1="912" y2="912" x1="400" />
            <wire x2="1024" y1="640" y2="640" x1="400" />
            <wire x2="1024" y1="384" y2="384" x1="928" />
            <wire x2="1024" y1="384" y2="640" x1="1024" />
        </branch>
        <instance x="624" y="224" name="XLXI_9" orien="R0" />
        <instance x="960" y="256" name="XLXI_7" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="880" y1="192" y2="192" x1="848" />
            <wire x2="960" y1="192" y2="192" x1="880" />
        </branch>
        <branch name="C">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="560" y="192" type="branch" />
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="576" y="416" type="branch" />
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="992" y="976" type="branch" />
            <wire x2="560" y1="32" y2="192" x1="560" />
            <wire x2="624" y1="192" y2="192" x1="560" />
            <wire x2="1232" y1="32" y2="32" x1="560" />
            <wire x2="1232" y1="32" y2="976" x1="1232" />
            <wire x2="1232" y1="976" y2="1632" x1="1232" />
            <wire x2="672" y1="416" y2="416" x1="576" />
            <wire x2="576" y1="416" y2="688" x1="576" />
            <wire x2="992" y1="688" y2="688" x1="576" />
            <wire x2="992" y1="688" y2="976" x1="992" />
            <wire x2="1232" y1="976" y2="976" x1="992" />
            <wire x2="992" y1="976" y2="976" x1="912" />
        </branch>
        <branch name="A">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="128" type="branch" />
            <wire x2="112" y1="320" y2="320" x1="64" />
            <wire x2="128" y1="320" y2="320" x1="112" />
            <wire x2="272" y1="320" y2="320" x1="128" />
            <wire x2="64" y1="320" y2="528" x1="64" />
            <wire x2="320" y1="528" y2="528" x1="64" />
            <wire x2="320" y1="528" y2="976" x1="320" />
            <wire x2="400" y1="976" y2="976" x1="320" />
            <wire x2="528" y1="976" y2="976" x1="400" />
            <wire x2="1200" y1="528" y2="528" x1="320" />
            <wire x2="1200" y1="528" y2="960" x1="1200" />
            <wire x2="1248" y1="960" y2="960" x1="1200" />
            <wire x2="1312" y1="960" y2="960" x1="1248" />
            <wire x2="2496" y1="528" y2="528" x1="1200" />
            <wire x2="2496" y1="528" y2="960" x1="2496" />
            <wire x2="2496" y1="960" y2="1696" x1="2496" />
            <wire x2="848" y1="80" y2="128" x1="848" />
            <wire x2="960" y1="128" y2="128" x1="848" />
            <wire x2="2496" y1="80" y2="80" x1="848" />
            <wire x2="2496" y1="80" y2="528" x1="2496" />
            <wire x2="2496" y1="960" y2="960" x1="2384" />
            <wire x2="2496" y1="1696" y2="1696" x1="2480" />
        </branch>
        <branch name="Jb">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="896" type="branch" />
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="160" type="branch" />
            <wire x2="1296" y1="160" y2="160" x1="1216" />
            <wire x2="1296" y1="160" y2="512" x1="1296" />
            <wire x2="1248" y1="512" y2="896" x1="1248" />
            <wire x2="1312" y1="896" y2="896" x1="1248" />
            <wire x2="1296" y1="512" y2="512" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1232" y="1632" name="C" orien="R90" />
        <iomarker fontsize="28" x="1776" y="1680" name="B" orien="R90" />
        <iomarker fontsize="28" x="2480" y="1696" name="A" orien="R180" />
    </sheet>
</drawing>