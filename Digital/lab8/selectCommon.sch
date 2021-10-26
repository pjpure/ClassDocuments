<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_19" />
        <signal name="XLXN_22" />
        <signal name="Clock" />
        <signal name="XLXN_34" />
        <signal name="XLXN_39" />
        <signal name="XLXN_41" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="com0" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="com1" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="com2" />
        <signal name="com3" />
        <port polarity="Input" name="Clock" />
        <port polarity="Output" name="com0" />
        <port polarity="Output" name="com1" />
        <port polarity="Output" name="com2" />
        <port polarity="Output" name="com3" />
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
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
        <block symbolname="cb2ce" name="XLXI_5">
            <blockpin signalname="Clock" name="C" />
            <blockpin signalname="XLXN_22" name="CE" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_50" name="Q0" />
            <blockpin signalname="XLXN_46" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_19" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="XLXN_22" name="P" />
        </block>
        <block symbolname="or2" name="XLXI_20">
            <blockpin signalname="XLXN_46" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="com0" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_46" name="I" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_22">
            <blockpin signalname="XLXN_47" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="com1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="XLXN_50" name="I" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_24">
            <blockpin signalname="XLXN_46" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="com2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_25">
            <blockpin signalname="XLXN_47" name="I0" />
            <blockpin signalname="XLXN_51" name="I1" />
            <blockpin signalname="com3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="768" y="1008" name="XLXI_5" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="768" y1="976" y2="1008" x1="768" />
        </branch>
        <instance x="704" y="1136" name="XLXI_6" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="768" y1="816" y2="816" x1="736" />
        </branch>
        <instance x="736" y="880" name="XLXI_8" orien="R270" />
        <branch name="Clock">
            <wire x2="768" y1="880" y2="880" x1="608" />
        </branch>
        <iomarker fontsize="28" x="608" y="880" name="Clock" orien="R180" />
        <instance x="1952" y="720" name="XLXI_20" orien="R0" />
        <branch name="com0">
            <wire x2="2240" y1="624" y2="624" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2240" y="624" name="com0" orien="R0" />
        <instance x="1296" y="848" name="XLXI_21" orien="R0" />
        <branch name="XLXN_46">
            <wire x2="1264" y1="752" y2="752" x1="1152" />
            <wire x2="1568" y1="752" y2="752" x1="1264" />
            <wire x2="1568" y1="752" y2="1248" x1="1568" />
            <wire x2="1952" y1="1248" y2="1248" x1="1568" />
            <wire x2="1264" y1="752" y2="816" x1="1264" />
            <wire x2="1296" y1="816" y2="816" x1="1264" />
            <wire x2="1568" y1="656" y2="752" x1="1568" />
            <wire x2="1952" y1="656" y2="656" x1="1568" />
        </branch>
        <instance x="1952" y="1024" name="XLXI_22" orien="R0" />
        <branch name="XLXN_47">
            <wire x2="1728" y1="816" y2="816" x1="1520" />
            <wire x2="1728" y1="816" y2="960" x1="1728" />
            <wire x2="1952" y1="960" y2="960" x1="1728" />
            <wire x2="1840" y1="816" y2="816" x1="1728" />
            <wire x2="1840" y1="816" y2="1488" x1="1840" />
            <wire x2="1952" y1="1488" y2="1488" x1="1840" />
        </branch>
        <branch name="com1">
            <wire x2="2240" y1="928" y2="928" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2240" y="928" name="com1" orien="R0" />
        <instance x="1280" y="592" name="XLXI_23" orien="R0" />
        <branch name="XLXN_50">
            <wire x2="1264" y1="688" y2="688" x1="1152" />
            <wire x2="1552" y1="688" y2="688" x1="1264" />
            <wire x2="1552" y1="688" y2="896" x1="1552" />
            <wire x2="1952" y1="896" y2="896" x1="1552" />
            <wire x2="1280" y1="560" y2="560" x1="1264" />
            <wire x2="1264" y1="560" y2="688" x1="1264" />
            <wire x2="1552" y1="592" y2="688" x1="1552" />
            <wire x2="1952" y1="592" y2="592" x1="1552" />
        </branch>
        <instance x="1952" y="1312" name="XLXI_24" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="1712" y1="560" y2="560" x1="1504" />
            <wire x2="1712" y1="560" y2="1184" x1="1712" />
            <wire x2="1952" y1="1184" y2="1184" x1="1712" />
            <wire x2="1824" y1="560" y2="560" x1="1712" />
            <wire x2="1824" y1="560" y2="1424" x1="1824" />
            <wire x2="1952" y1="1424" y2="1424" x1="1824" />
        </branch>
        <branch name="com2">
            <wire x2="2240" y1="1216" y2="1216" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1216" name="com2" orien="R0" />
        <instance x="1952" y="1552" name="XLXI_25" orien="R0" />
        <branch name="com3">
            <wire x2="2240" y1="1456" y2="1456" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1456" name="com3" orien="R0" />
    </sheet>
</drawing>