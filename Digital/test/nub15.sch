<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="b" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="a" />
        <signal name="sw" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="c" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <port polarity="Input" name="sw" />
        <port polarity="Output" name="c" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="fjkc" name="XLXI_1">
            <blockpin signalname="sw" name="C" />
            <blockpin signalname="XLXN_2" name="CLR" />
            <blockpin signalname="XLXN_7" name="J" />
            <blockpin signalname="a" name="K" />
            <blockpin signalname="c" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_2">
            <blockpin signalname="sw" name="C" />
            <blockpin signalname="XLXN_2" name="CLR" />
            <blockpin signalname="XLXN_10" name="J" />
            <blockpin signalname="a" name="K" />
            <blockpin signalname="b" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_3">
            <blockpin signalname="sw" name="C" />
            <blockpin signalname="XLXN_2" name="CLR" />
            <blockpin signalname="XLXN_17" name="J" />
            <blockpin signalname="XLXN_18" name="K" />
            <blockpin signalname="a" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="a" name="I0" />
            <blockpin signalname="b" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="a" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="c" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="XLXN_17" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="c" name="I" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_9">
            <blockpin signalname="XLXN_2" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="1264" name="XLXI_1" orien="R0" />
        <instance x="1728" y="1264" name="XLXI_2" orien="R0" />
        <instance x="2336" y="1264" name="XLXI_3" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1120" y1="1232" y2="1376" x1="1120" />
            <wire x2="1120" y1="1376" y2="1392" x1="1120" />
            <wire x2="1728" y1="1392" y2="1392" x1="1120" />
            <wire x2="2336" y1="1392" y2="1392" x1="1728" />
            <wire x2="1728" y1="1232" y2="1392" x1="1728" />
            <wire x2="2336" y1="1232" y2="1392" x1="2336" />
        </branch>
        <instance x="1952" y="592" name="XLXI_4" orien="R180" />
        <branch name="b">
            <wire x2="2112" y1="720" y2="720" x1="1952" />
            <wire x2="2128" y1="720" y2="720" x1="2112" />
            <wire x2="2128" y1="720" y2="1008" x1="2128" />
            <wire x2="2384" y1="720" y2="720" x1="2128" />
            <wire x2="2128" y1="1008" y2="1008" x1="2112" />
            <wire x2="2384" y1="176" y2="720" x1="2384" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1072" y1="688" y2="944" x1="1072" />
            <wire x2="1120" y1="944" y2="944" x1="1072" />
            <wire x2="1696" y1="688" y2="688" x1="1072" />
        </branch>
        <instance x="1936" y="400" name="XLXI_5" orien="R180" />
        <branch name="XLXN_10">
            <wire x2="1680" y1="496" y2="496" x1="1664" />
            <wire x2="1664" y1="496" y2="944" x1="1664" />
            <wire x2="1728" y1="944" y2="944" x1="1664" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1968" y1="528" y2="528" x1="1936" />
        </branch>
        <instance x="2192" y="496" name="XLXI_6" orien="R180" />
        <branch name="a">
            <wire x2="1040" y1="624" y2="1008" x1="1040" />
            <wire x2="1120" y1="1008" y2="1008" x1="1040" />
            <wire x2="2784" y1="624" y2="624" x1="1040" />
            <wire x2="2784" y1="624" y2="656" x1="2784" />
            <wire x2="2784" y1="656" y2="1008" x1="2784" />
            <wire x2="3008" y1="1008" y2="1008" x1="2784" />
            <wire x2="1616" y1="432" y2="1008" x1="1616" />
            <wire x2="1728" y1="1008" y2="1008" x1="1616" />
            <wire x2="2784" y1="432" y2="432" x1="1616" />
            <wire x2="2784" y1="432" y2="464" x1="2784" />
            <wire x2="2784" y1="464" y2="624" x1="2784" />
            <wire x2="2784" y1="464" y2="464" x1="1936" />
            <wire x2="2784" y1="656" y2="656" x1="1952" />
            <wire x2="2784" y1="1008" y2="1008" x1="2720" />
            <wire x2="3008" y1="192" y2="1008" x1="3008" />
        </branch>
        <branch name="sw">
            <wire x2="928" y1="1488" y2="1488" x1="800" />
            <wire x2="1552" y1="1488" y2="1488" x1="928" />
            <wire x2="2160" y1="1488" y2="1488" x1="1552" />
            <wire x2="1120" y1="1136" y2="1136" x1="928" />
            <wire x2="928" y1="1136" y2="1488" x1="928" />
            <wire x2="1552" y1="1136" y2="1488" x1="1552" />
            <wire x2="1728" y1="1136" y2="1136" x1="1552" />
            <wire x2="2160" y1="1136" y2="1488" x1="2160" />
            <wire x2="2336" y1="1136" y2="1136" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="800" y="1488" name="sw" orien="R180" />
        <branch name="XLXN_17">
            <wire x2="2336" y1="848" y2="848" x1="2320" />
            <wire x2="2320" y1="848" y2="944" x1="2320" />
            <wire x2="2336" y1="944" y2="944" x1="2320" />
        </branch>
        <instance x="2272" y="848" name="XLXI_7" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="2336" y1="1008" y2="1008" x1="2320" />
            <wire x2="2320" y1="1008" y2="1568" x1="2320" />
        </branch>
        <instance x="2096" y="1600" name="XLXI_8" orien="R0" />
        <branch name="c">
            <wire x2="1536" y1="1008" y2="1008" x1="1504" />
            <wire x2="1536" y1="1008" y2="1568" x1="1536" />
            <wire x2="2096" y1="1568" y2="1568" x1="1536" />
            <wire x2="1776" y1="176" y2="176" x1="1536" />
            <wire x2="1536" y1="176" y2="800" x1="1536" />
            <wire x2="1536" y1="800" y2="1008" x1="1536" />
            <wire x2="2272" y1="800" y2="800" x1="1536" />
            <wire x2="2272" y1="528" y2="528" x1="2192" />
            <wire x2="2272" y1="528" y2="800" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="1776" y="176" name="c" orien="R0" />
        <iomarker fontsize="28" x="2384" y="176" name="b" orien="R270" />
        <iomarker fontsize="28" x="3008" y="192" name="a" orien="R270" />
        <instance x="1056" y="1504" name="XLXI_9" orien="R0" />
    </sheet>
</drawing>