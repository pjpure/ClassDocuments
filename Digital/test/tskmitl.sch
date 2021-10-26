<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D" />
        <signal name="F" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="M" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="A" />
        <signal name="Aa" />
        <signal name="c" />
        <signal name="dd" />
        <signal name="e" />
        <signal name="g" />
        <signal name="bb" />
        <signal name="ff" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_22" />
        <signal name="clock">
        </signal>
        <signal name="com0" />
        <signal name="com1" />
        <signal name="XLXN_38" />
        <signal name="XLXN_21" />
        <signal name="com3" />
        <signal name="com2" />
        <signal name="clock1" />
        <signal name="XLXN_40" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="F" />
        <port polarity="Input" name="M" />
        <port polarity="Output" name="Aa" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="dd" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="bb" />
        <port polarity="Output" name="ff" />
        <port polarity="Output" name="com0" />
        <port polarity="Output" name="com1" />
        <port polarity="Output" name="com3" />
        <port polarity="Output" name="com2" />
        <port polarity="Input" name="clock1" />
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
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="div8">
            <timestamp>2020-11-25T20:58:46</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="F" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="M" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="M" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="F" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="A" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="M" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="d6" name="XLXI_9">
            <blockpin signalname="Aa" name="a" />
            <blockpin signalname="bb" name="b" />
            <blockpin signalname="c" name="c" />
            <blockpin signalname="dd" name="d" />
            <blockpin signalname="e" name="e" />
            <blockpin signalname="ff" name="f" />
            <blockpin signalname="g" name="g" />
            <blockpin signalname="XLXN_36" name="inputM" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="clock" name="I" />
            <blockpin signalname="com0" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_16">
            <blockpin signalname="clock" name="I" />
            <blockpin signalname="com1" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_21">
            <blockpin signalname="XLXN_37" name="D0" />
            <blockpin signalname="A" name="D1" />
            <blockpin signalname="clock" name="S0" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_20">
            <blockpin signalname="XLXN_21" name="I" />
            <blockpin signalname="com3" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_19">
            <blockpin signalname="XLXN_21" name="I" />
            <blockpin signalname="com2" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="XLXN_21" name="P" />
        </block>
        <block symbolname="div8" name="XLXI_25">
            <blockpin signalname="XLXN_40" name="CI" />
            <blockpin signalname="clock" name="CO" />
        </block>
        <block symbolname="div8" name="XLXI_26">
            <blockpin signalname="clock1" name="CI" />
            <blockpin signalname="XLXN_40" name="CO" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="D">
            <wire x2="1056" y1="1040" y2="1040" x1="848" />
            <wire x2="1232" y1="1040" y2="1040" x1="1056" />
            <wire x2="1232" y1="672" y2="1040" x1="1232" />
            <wire x2="1424" y1="672" y2="672" x1="1232" />
        </branch>
        <branch name="F">
            <wire x2="1056" y1="1280" y2="1280" x1="832" />
            <wire x2="1360" y1="1280" y2="1280" x1="1056" />
            <wire x2="1680" y1="1280" y2="1280" x1="1360" />
            <wire x2="1360" y1="944" y2="1280" x1="1360" />
            <wire x2="1680" y1="944" y2="944" x1="1360" />
        </branch>
        <instance x="1680" y="736" name="XLXI_1" orien="R0" />
        <instance x="1680" y="1008" name="XLXI_2" orien="R0" />
        <instance x="2048" y="864" name="XLXI_3" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1984" y1="640" y2="640" x1="1936" />
            <wire x2="1984" y1="640" y2="736" x1="1984" />
            <wire x2="2048" y1="736" y2="736" x1="1984" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1984" y1="912" y2="912" x1="1936" />
            <wire x2="1984" y1="800" y2="912" x1="1984" />
            <wire x2="2048" y1="800" y2="800" x1="1984" />
        </branch>
        <branch name="M">
            <wire x2="1056" y1="720" y2="720" x1="848" />
            <wire x2="1056" y1="720" y2="880" x1="1056" />
            <wire x2="1424" y1="880" y2="880" x1="1056" />
            <wire x2="1056" y1="880" y2="880" x1="1024" />
            <wire x2="1024" y1="880" y2="1216" x1="1024" />
            <wire x2="1424" y1="1216" y2="1216" x1="1024" />
            <wire x2="1424" y1="608" y2="608" x1="1056" />
            <wire x2="1056" y1="608" y2="720" x1="1056" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1680" y1="608" y2="608" x1="1648" />
        </branch>
        <instance x="1424" y="640" name="XLXI_4" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1680" y1="672" y2="672" x1="1648" />
        </branch>
        <instance x="1424" y="704" name="XLXI_5" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1680" y1="880" y2="880" x1="1648" />
        </branch>
        <instance x="1424" y="912" name="XLXI_6" orien="R0" />
        <instance x="1680" y="1344" name="XLXI_7" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="1680" y1="1216" y2="1216" x1="1648" />
        </branch>
        <instance x="1424" y="1248" name="XLXI_8" orien="R0" />
        <branch name="A">
            <wire x2="1968" y1="1248" y2="1248" x1="1936" />
            <wire x2="2128" y1="1248" y2="1248" x1="1968" />
            <wire x2="2368" y1="1040" y2="1040" x1="2128" />
            <wire x2="2128" y1="1040" y2="1248" x1="2128" />
        </branch>
        <instance x="2720" y="1424" name="XLXI_9" orien="R0">
        </instance>
        <branch name="Aa">
            <wire x2="3136" y1="1008" y2="1008" x1="3104" />
        </branch>
        <branch name="c">
            <wire x2="3136" y1="1072" y2="1072" x1="3104" />
        </branch>
        <branch name="dd">
            <wire x2="3136" y1="1136" y2="1136" x1="3104" />
        </branch>
        <branch name="e">
            <wire x2="3136" y1="1200" y2="1200" x1="3104" />
        </branch>
        <branch name="g">
            <wire x2="3136" y1="1264" y2="1264" x1="3104" />
        </branch>
        <branch name="bb">
            <wire x2="3136" y1="1328" y2="1328" x1="3104" />
        </branch>
        <branch name="ff">
            <wire x2="3136" y1="1392" y2="1392" x1="3104" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="2720" y1="1008" y2="1008" x1="2688" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="2336" y1="768" y2="768" x1="2304" />
            <wire x2="2336" y1="768" y2="976" x1="2336" />
            <wire x2="2368" y1="976" y2="976" x1="2336" />
        </branch>
        <branch name="clock">
            <wire x2="2304" y1="1504" y2="1504" x1="1888" />
            <wire x2="2304" y1="1504" y2="1824" x1="2304" />
            <wire x2="2464" y1="1824" y2="1824" x1="2304" />
            <wire x2="2464" y1="1504" y2="1504" x1="2304" />
            <wire x2="2368" y1="1104" y2="1104" x1="2304" />
            <wire x2="2304" y1="1104" y2="1376" x1="2304" />
            <wire x2="2304" y1="1376" y2="1504" x1="2304" />
        </branch>
        <instance x="2464" y="1536" name="XLXI_11" orien="R0" />
        <instance x="2464" y="1856" name="XLXI_16" orien="R0" />
        <branch name="com0">
            <wire x2="2720" y1="1504" y2="1504" x1="2688" />
        </branch>
        <branch name="com1">
            <wire x2="2720" y1="1824" y2="1824" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="848" y="720" name="M" orien="R180" />
        <iomarker fontsize="28" x="848" y="1040" name="D" orien="R180" />
        <iomarker fontsize="28" x="832" y="1280" name="F" orien="R180" />
        <iomarker fontsize="28" x="3136" y="1008" name="Aa" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1072" name="c" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1136" name="dd" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1200" name="e" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1264" name="g" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1328" name="bb" orien="R0" />
        <iomarker fontsize="28" x="3136" y="1392" name="ff" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1504" name="com0" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1824" name="com1" orien="R0" />
        <instance x="2368" y="1136" name="XLXI_21" orien="R0" />
        <iomarker fontsize="28" x="1376" y="1808" name="com3" orien="R0" />
        <iomarker fontsize="28" x="1376" y="1728" name="com2" orien="R0" />
        <instance x="1120" y="1840" name="XLXI_20" orien="R0" />
        <instance x="1120" y="1760" name="XLXI_19" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="1040" y1="1648" y2="1728" x1="1040" />
            <wire x2="1120" y1="1728" y2="1728" x1="1040" />
            <wire x2="1040" y1="1728" y2="1808" x1="1040" />
            <wire x2="1120" y1="1808" y2="1808" x1="1040" />
        </branch>
        <branch name="com3">
            <wire x2="1376" y1="1808" y2="1808" x1="1344" />
        </branch>
        <branch name="com2">
            <wire x2="1376" y1="1728" y2="1728" x1="1344" />
        </branch>
        <instance x="976" y="1648" name="XLXI_12" orien="R0" />
        <branch name="clock1">
            <wire x2="1088" y1="1504" y2="1504" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1056" y="1504" name="clock1" orien="R180" />
        <instance x="1504" y="1536" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_40">
            <wire x2="1504" y1="1504" y2="1504" x1="1472" />
        </branch>
        <instance x="1088" y="1536" name="XLXI_26" orien="R0">
        </instance>
    </sheet>
</drawing>