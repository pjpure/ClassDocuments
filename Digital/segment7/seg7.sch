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
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="Clock_10" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="f" />
        <signal name="g" />
        <signal name="XLXN_30" />
        <signal name="XLXN_32" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="a" />
        <signal name="b" />
        <signal name="clear" />
        <signal name="XLXN_38" />
        <signal name="XLXN_46" />
        <signal name="XLXN_48" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="Ja" />
        <signal name="com1" />
        <signal name="com2" />
        <signal name="com3" />
        <port polarity="Input" name="Clock_10" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Input" name="clear" />
        <port polarity="Input" name="Ja" />
        <port polarity="Output" name="com1" />
        <port polarity="Output" name="com2" />
        <port polarity="Output" name="com3" />
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
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <block symbolname="fjkc" name="XLXI_1">
            <blockpin signalname="Clock_10" name="C" />
            <blockpin signalname="clear" name="CLR" />
            <blockpin signalname="XLXN_1" name="J" />
            <blockpin signalname="XLXN_7" name="K" />
            <blockpin signalname="f" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_2">
            <blockpin signalname="Clock_10" name="C" />
            <blockpin signalname="clear" name="CLR" />
            <blockpin signalname="XLXN_9" name="J" />
            <blockpin signalname="XLXN_2" name="K" />
            <blockpin signalname="XLXN_7" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="f" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="f" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="XLXN_20" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="f" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_11">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_32" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_13">
            <blockpin signalname="XLXN_30" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_14">
            <blockpin signalname="f" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_15">
            <blockpin signalname="f" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="f" name="I1" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="f" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="XLXN_7" name="I" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="XLXN_9" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="XLXN_9" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="fjkc" name="XLXI_3">
            <blockpin signalname="Clock_10" name="C" />
            <blockpin signalname="clear" name="CLR" />
            <blockpin signalname="Ja" name="J" />
            <blockpin signalname="Ja" name="K" />
            <blockpin signalname="XLXN_9" name="Q" />
        </block>
        <block symbolname="obuf" name="XLXI_46">
            <blockpin signalname="Ja" name="I" />
            <blockpin signalname="com1" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_47">
            <blockpin signalname="Ja" name="I" />
            <blockpin signalname="com2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_48">
            <blockpin signalname="Ja" name="I" />
            <blockpin signalname="com3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="496" y="960" name="XLXI_1" orien="R0" />
        <instance x="512" y="1408" name="XLXI_2" orien="R0" />
        <instance x="224" y="736" name="XLXI_4" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="496" y1="640" y2="640" x1="480" />
        </branch>
        <instance x="208" y="1248" name="XLXI_5" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="512" y1="1152" y2="1152" x1="464" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="48" y1="288" y2="704" x1="48" />
            <wire x2="160" y1="704" y2="704" x1="48" />
            <wire x2="496" y1="704" y2="704" x1="160" />
            <wire x2="992" y1="288" y2="288" x1="48" />
            <wire x2="992" y1="288" y2="1008" x1="992" />
            <wire x2="992" y1="1008" y2="1152" x1="992" />
            <wire x2="1120" y1="1008" y2="1008" x1="992" />
            <wire x2="224" y1="608" y2="608" x1="160" />
            <wire x2="160" y1="608" y2="704" x1="160" />
            <wire x2="992" y1="1152" y2="1152" x1="896" />
            <wire x2="1120" y1="544" y2="1008" x1="1120" />
            <wire x2="1264" y1="544" y2="544" x1="1120" />
            <wire x2="1264" y1="544" y2="848" x1="1264" />
            <wire x2="1424" y1="848" y2="848" x1="1264" />
            <wire x2="1264" y1="848" y2="1328" x1="1264" />
            <wire x2="1664" y1="1328" y2="1328" x1="1264" />
            <wire x2="1264" y1="1328" y2="1824" x1="1264" />
            <wire x2="1264" y1="1824" y2="2080" x1="1264" />
            <wire x2="1360" y1="2080" y2="2080" x1="1264" />
            <wire x2="1664" y1="1824" y2="1824" x1="1264" />
            <wire x2="1680" y1="400" y2="400" x1="1264" />
            <wire x2="1264" y1="400" y2="544" x1="1264" />
        </branch>
        <branch name="Clock_10">
            <wire x2="480" y1="2208" y2="2208" x1="336" />
            <wire x2="496" y1="832" y2="832" x1="480" />
            <wire x2="480" y1="832" y2="1280" x1="480" />
            <wire x2="512" y1="1280" y2="1280" x1="480" />
            <wire x2="480" y1="1280" y2="1712" x1="480" />
            <wire x2="480" y1="1712" y2="2208" x1="480" />
            <wire x2="512" y1="1712" y2="1712" x1="480" />
        </branch>
        <iomarker fontsize="28" x="336" y="2208" name="Clock_10" orien="R180" />
        <instance x="1680" y="464" name="XLXI_6" orien="R0" />
        <instance x="1680" y="624" name="XLXI_7" orien="R0" />
        <instance x="1680" y="976" name="XLXI_8" orien="R0" />
        <instance x="1664" y="1952" name="XLXI_9" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1680" y1="336" y2="336" x1="1648" />
        </branch>
        <instance x="1424" y="368" name="XLXI_10" orien="R0" />
        <instance x="2000" y="544" name="XLXI_11" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1968" y1="368" y2="368" x1="1936" />
            <wire x2="1968" y1="368" y2="416" x1="1968" />
            <wire x2="2000" y1="416" y2="416" x1="1968" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1968" y1="528" y2="528" x1="1936" />
            <wire x2="1968" y1="480" y2="528" x1="1968" />
            <wire x2="2000" y1="480" y2="480" x1="1968" />
        </branch>
        <instance x="2000" y="864" name="XLXI_12" orien="R0" />
        <instance x="1664" y="1456" name="XLXI_13" orien="R0" />
        <instance x="1360" y="2208" name="XLXI_14" orien="R0" />
        <instance x="1360" y="1200" name="XLXI_15" orien="R0" />
        <instance x="1344" y="1680" name="XLXI_16" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="2000" y1="736" y2="736" x1="1968" />
        </branch>
        <instance x="1744" y="768" name="XLXI_17" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="1680" y1="848" y2="848" x1="1648" />
        </branch>
        <instance x="1424" y="880" name="XLXI_18" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1680" y1="912" y2="912" x1="1648" />
        </branch>
        <instance x="1424" y="944" name="XLXI_19" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="1664" y1="1888" y2="1888" x1="1632" />
        </branch>
        <instance x="1408" y="1920" name="XLXI_20" orien="R0" />
        <branch name="g">
            <wire x2="2784" y1="2112" y2="2112" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="2784" y="2112" name="g" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="1632" y1="1584" y2="1584" x1="1600" />
            <wire x2="1632" y1="1392" y2="1584" x1="1632" />
            <wire x2="1664" y1="1392" y2="1392" x1="1632" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1968" y1="880" y2="880" x1="1936" />
            <wire x2="1968" y1="800" y2="880" x1="1968" />
            <wire x2="2000" y1="800" y2="800" x1="1968" />
        </branch>
        <branch name="e">
            <wire x2="2480" y1="1856" y2="1856" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2480" y="1856" name="e" orien="R0" />
        <branch name="d">
            <wire x2="1952" y1="1360" y2="1360" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1360" name="d" orien="R0" />
        <branch name="c">
            <wire x2="1648" y1="1104" y2="1104" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1104" name="c" orien="R0" />
        <branch name="a">
            <wire x2="2288" y1="448" y2="448" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2288" y="448" name="a" orien="R0" />
        <branch name="b">
            <wire x2="2288" y1="768" y2="768" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2288" y="768" name="b" orien="R0" />
        <iomarker fontsize="28" x="2928" y="1792" name="f" orien="R0" />
        <branch name="f">
            <wire x2="896" y1="384" y2="384" x1="112" />
            <wire x2="896" y1="384" y2="416" x1="896" />
            <wire x2="1024" y1="416" y2="416" x1="896" />
            <wire x2="896" y1="416" y2="704" x1="896" />
            <wire x2="112" y1="384" y2="1184" x1="112" />
            <wire x2="208" y1="1184" y2="1184" x1="112" />
            <wire x2="896" y1="704" y2="704" x1="880" />
            <wire x2="1024" y1="368" y2="416" x1="1024" />
            <wire x2="1152" y1="368" y2="368" x1="1024" />
            <wire x2="1152" y1="368" y2="496" x1="1152" />
            <wire x2="1152" y1="496" y2="736" x1="1152" />
            <wire x2="1152" y1="736" y2="1136" x1="1152" />
            <wire x2="1152" y1="1136" y2="1552" x1="1152" />
            <wire x2="1344" y1="1552" y2="1552" x1="1152" />
            <wire x2="1152" y1="1552" y2="1792" x1="1152" />
            <wire x2="2928" y1="1792" y2="1792" x1="1152" />
            <wire x2="1152" y1="1792" y2="2144" x1="1152" />
            <wire x2="1360" y1="2144" y2="2144" x1="1152" />
            <wire x2="1360" y1="1136" y2="1136" x1="1152" />
            <wire x2="1744" y1="736" y2="736" x1="1152" />
            <wire x2="1680" y1="496" y2="496" x1="1152" />
            <wire x2="1424" y1="336" y2="336" x1="1152" />
            <wire x2="1152" y1="336" y2="368" x1="1152" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="144" y1="1088" y2="2080" x1="144" />
            <wire x2="240" y1="2080" y2="2080" x1="144" />
            <wire x2="240" y1="2080" y2="2096" x1="240" />
            <wire x2="992" y1="2096" y2="2096" x1="240" />
            <wire x2="192" y1="1088" y2="1088" x1="144" />
            <wire x2="224" y1="1088" y2="1088" x1="192" />
            <wire x2="512" y1="1088" y2="1088" x1="224" />
            <wire x2="192" y1="1088" y2="1120" x1="192" />
            <wire x2="208" y1="1120" y2="1120" x1="192" />
            <wire x2="224" y1="672" y2="672" x1="176" />
            <wire x2="176" y1="672" y2="768" x1="176" />
            <wire x2="224" y1="768" y2="768" x1="176" />
            <wire x2="224" y1="768" y2="1088" x1="224" />
            <wire x2="992" y1="1584" y2="1584" x1="896" />
            <wire x2="992" y1="1584" y2="1728" x1="992" />
            <wire x2="1136" y1="1728" y2="1728" x1="992" />
            <wire x2="992" y1="1728" y2="2096" x1="992" />
            <wire x2="1136" y1="1216" y2="1728" x1="1136" />
            <wire x2="1280" y1="1216" y2="1216" x1="1136" />
            <wire x2="1280" y1="1216" y2="1616" x1="1280" />
            <wire x2="1344" y1="1616" y2="1616" x1="1280" />
            <wire x2="1280" y1="1616" y2="1888" x1="1280" />
            <wire x2="1408" y1="1888" y2="1888" x1="1280" />
            <wire x2="1680" y1="560" y2="560" x1="1280" />
            <wire x2="1280" y1="560" y2="912" x1="1280" />
            <wire x2="1424" y1="912" y2="912" x1="1280" />
            <wire x2="1280" y1="912" y2="1072" x1="1280" />
            <wire x2="1360" y1="1072" y2="1072" x1="1280" />
            <wire x2="1280" y1="1072" y2="1216" x1="1280" />
        </branch>
        <instance x="512" y="1840" name="XLXI_3" orien="R0" />
        <iomarker fontsize="28" x="336" y="1584" name="Ja" orien="R180" />
        <iomarker fontsize="28" x="320" y="1808" name="clear" orien="R180" />
        <branch name="clear">
            <wire x2="496" y1="1808" y2="1808" x1="320" />
            <wire x2="512" y1="1808" y2="1808" x1="496" />
            <wire x2="496" y1="928" y2="1376" x1="496" />
            <wire x2="512" y1="1376" y2="1376" x1="496" />
            <wire x2="496" y1="1376" y2="1808" x1="496" />
        </branch>
        <branch name="Ja">
            <wire x2="384" y1="1584" y2="1584" x1="336" />
            <wire x2="512" y1="1584" y2="1584" x1="384" />
            <wire x2="384" y1="1584" y2="2336" x1="384" />
            <wire x2="528" y1="2336" y2="2336" x1="384" />
            <wire x2="528" y1="2336" y2="2448" x1="528" />
            <wire x2="528" y1="2448" y2="2560" x1="528" />
            <wire x2="656" y1="2560" y2="2560" x1="528" />
            <wire x2="656" y1="2448" y2="2448" x1="528" />
            <wire x2="624" y1="2336" y2="2336" x1="528" />
            <wire x2="656" y1="2336" y2="2336" x1="624" />
            <wire x2="512" y1="1520" y2="1520" x1="384" />
            <wire x2="384" y1="1520" y2="1584" x1="384" />
        </branch>
        <instance x="656" y="2480" name="XLXI_47" orien="R0" />
        <instance x="656" y="2592" name="XLXI_48" orien="R0" />
        <instance x="656" y="2368" name="XLXI_46" orien="R0" />
        <branch name="com1">
            <wire x2="912" y1="2336" y2="2336" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="2336" name="com1" orien="R0" />
        <branch name="com2">
            <wire x2="912" y1="2448" y2="2448" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="2448" name="com2" orien="R0" />
        <branch name="com3">
            <wire x2="912" y1="2560" y2="2560" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="2560" name="com3" orien="R0" />
    </sheet>
</drawing>