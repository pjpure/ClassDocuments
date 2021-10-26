<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="Buzzer_P83" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="common0_P44" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="XLXN_38" />
        <signal name="common2_P33" />
        <signal name="common3_P30" />
        <signal name="common1_P43" />
        <signal name="SW_P47" />
        <signal name="clock_P123" />
        <port polarity="Output" name="Buzzer_P83" />
        <port polarity="Output" name="common0_P44" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="common2_P33" />
        <port polarity="Output" name="common3_P30" />
        <port polarity="Output" name="common1_P43" />
        <port polarity="Input" name="SW_P47" />
        <port polarity="Input" name="clock_P123" />
        <blockdef name="counter0099">
            <timestamp>2020-10-21T15:51:0</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
        </blockdef>
        <blockdef name="Mux8_4">
            <timestamp>2020-10-21T14:46:53</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="compare">
            <timestamp>2020-10-21T14:50:48</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
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
        <blockdef name="bcdto7segment">
            <timestamp>2020-10-21T16:3:23</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
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
        <blockdef name="DIV">
            <timestamp>2020-10-21T15:31:32</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="counter0099" name="XLXI_1">
            <blockpin signalname="XLXN_19" name="A1" />
            <blockpin signalname="XLXN_18" name="A2" />
            <blockpin signalname="XLXN_17" name="B1" />
            <blockpin signalname="XLXN_16" name="B2" />
            <blockpin signalname="XLXN_15" name="C1" />
            <blockpin signalname="XLXN_14" name="C2" />
            <blockpin signalname="XLXN_1" name="clock" />
            <blockpin signalname="XLXN_13" name="D1" />
            <blockpin signalname="XLXN_12" name="D2" />
        </block>
        <block symbolname="Mux8_4" name="XLXI_2">
            <blockpin signalname="XLXN_23" name="A" />
            <blockpin signalname="XLXN_19" name="A1" />
            <blockpin signalname="XLXN_18" name="A2" />
            <blockpin signalname="XLXN_22" name="B" />
            <blockpin signalname="XLXN_17" name="B1" />
            <blockpin signalname="XLXN_16" name="B2" />
            <blockpin signalname="XLXN_21" name="C" />
            <blockpin signalname="XLXN_15" name="C1" />
            <blockpin signalname="XLXN_14" name="C2" />
            <blockpin signalname="common1_P43" name="clock" />
            <blockpin signalname="XLXN_20" name="D" />
            <blockpin signalname="XLXN_13" name="D1" />
            <blockpin signalname="XLXN_12" name="D2" />
        </block>
        <block symbolname="compare" name="XLXI_3">
            <blockpin signalname="XLXN_19" name="A1" />
            <blockpin signalname="XLXN_18" name="A2" />
            <blockpin signalname="XLXN_17" name="B1" />
            <blockpin signalname="XLXN_16" name="B2" />
            <blockpin signalname="XLXN_15" name="C1" />
            <blockpin signalname="XLXN_14" name="C2" />
            <blockpin signalname="XLXN_13" name="D1" />
            <blockpin signalname="XLXN_12" name="D2" />
            <blockpin signalname="XLXN_9" name="outComp" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="common1_P43" name="I0" />
            <blockpin signalname="SW_P47" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="Buzzer_P83" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="SW_P47" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="bcdto7segment" name="XLXI_19">
            <blockpin signalname="a" name="A" />
            <blockpin signalname="b" name="B" />
            <blockpin signalname="c" name="C" />
            <blockpin signalname="d" name="D" />
            <blockpin signalname="e" name="E" />
            <blockpin signalname="f" name="F" />
            <blockpin signalname="g" name="G" />
            <blockpin signalname="XLXN_20" name="i" />
            <blockpin signalname="XLXN_21" name="j" />
            <blockpin signalname="XLXN_22" name="k" />
            <blockpin signalname="XLXN_23" name="l" />
        </block>
        <block symbolname="vcc" name="XLXI_24">
            <blockpin signalname="XLXN_38" name="P" />
        </block>
        <block symbolname="obuf" name="XLXI_25">
            <blockpin signalname="XLXN_38" name="I" />
            <blockpin signalname="common2_P33" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_26">
            <blockpin signalname="XLXN_38" name="I" />
            <blockpin signalname="common3_P30" name="O" />
        </block>
        <block symbolname="DIV" name="XLXI_35">
            <blockpin signalname="clock_P123" name="CI" />
            <blockpin signalname="common1_P43" name="CO" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="common1_P43" name="I" />
            <blockpin signalname="common0_P44" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="1344" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1664" y="1376" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1664" y="2000" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1008" y1="864" y2="864" x1="976" />
        </branch>
        <instance x="720" y="960" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="288" y="832" name="SW_P47" orien="R180" />
        <instance x="2256" y="1840" name="XLXI_17" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="2144" y1="1520" y2="1520" x1="2048" />
            <wire x2="2144" y1="1520" y2="1712" x1="2144" />
            <wire x2="2256" y1="1712" y2="1712" x1="2144" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="816" y1="1968" y2="2080" x1="816" />
            <wire x2="2128" y1="2080" y2="2080" x1="816" />
            <wire x2="2128" y1="1776" y2="2080" x1="2128" />
            <wire x2="2256" y1="1776" y2="1776" x1="2128" />
        </branch>
        <instance x="592" y="2000" name="XLXI_18" orien="R0" />
        <branch name="Buzzer_P83">
            <wire x2="2544" y1="1744" y2="1744" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1744" name="Buzzer_P83" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1520" y1="864" y2="864" x1="1392" />
            <wire x2="1584" y1="864" y2="864" x1="1520" />
            <wire x2="1584" y1="864" y2="1520" x1="1584" />
            <wire x2="1664" y1="1520" y2="1520" x1="1584" />
            <wire x2="1520" y1="832" y2="864" x1="1520" />
            <wire x2="1664" y1="832" y2="832" x1="1520" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1520" y1="928" y2="928" x1="1392" />
            <wire x2="1568" y1="928" y2="928" x1="1520" />
            <wire x2="1568" y1="928" y2="1584" x1="1568" />
            <wire x2="1664" y1="1584" y2="1584" x1="1568" />
            <wire x2="1520" y1="896" y2="928" x1="1520" />
            <wire x2="1664" y1="896" y2="896" x1="1520" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1520" y1="992" y2="992" x1="1392" />
            <wire x2="1552" y1="992" y2="992" x1="1520" />
            <wire x2="1552" y1="992" y2="1648" x1="1552" />
            <wire x2="1664" y1="1648" y2="1648" x1="1552" />
            <wire x2="1520" y1="960" y2="992" x1="1520" />
            <wire x2="1664" y1="960" y2="960" x1="1520" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1520" y1="1056" y2="1056" x1="1392" />
            <wire x2="1536" y1="1056" y2="1056" x1="1520" />
            <wire x2="1536" y1="1056" y2="1712" x1="1536" />
            <wire x2="1664" y1="1712" y2="1712" x1="1536" />
            <wire x2="1520" y1="1024" y2="1056" x1="1520" />
            <wire x2="1664" y1="1024" y2="1024" x1="1520" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1520" y1="1120" y2="1120" x1="1392" />
            <wire x2="1600" y1="1120" y2="1120" x1="1520" />
            <wire x2="1600" y1="1120" y2="1776" x1="1600" />
            <wire x2="1664" y1="1776" y2="1776" x1="1600" />
            <wire x2="1520" y1="1088" y2="1120" x1="1520" />
            <wire x2="1664" y1="1088" y2="1088" x1="1520" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1520" y1="1184" y2="1184" x1="1392" />
            <wire x2="1616" y1="1184" y2="1184" x1="1520" />
            <wire x2="1616" y1="1184" y2="1840" x1="1616" />
            <wire x2="1664" y1="1840" y2="1840" x1="1616" />
            <wire x2="1520" y1="1152" y2="1184" x1="1520" />
            <wire x2="1664" y1="1152" y2="1152" x1="1520" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1520" y1="1248" y2="1248" x1="1392" />
            <wire x2="1632" y1="1248" y2="1248" x1="1520" />
            <wire x2="1632" y1="1248" y2="1904" x1="1632" />
            <wire x2="1664" y1="1904" y2="1904" x1="1632" />
            <wire x2="1520" y1="1216" y2="1248" x1="1520" />
            <wire x2="1664" y1="1216" y2="1216" x1="1520" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1520" y1="1312" y2="1312" x1="1392" />
            <wire x2="1520" y1="1312" y2="1968" x1="1520" />
            <wire x2="1664" y1="1968" y2="1968" x1="1520" />
            <wire x2="1520" y1="1280" y2="1312" x1="1520" />
            <wire x2="1664" y1="1280" y2="1280" x1="1520" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2352" y1="832" y2="832" x1="2048" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2352" y1="896" y2="896" x1="2048" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2352" y1="960" y2="960" x1="2048" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="2352" y1="1024" y2="1024" x1="2048" />
        </branch>
        <instance x="2352" y="1248" name="XLXI_19" orien="R0">
        </instance>
        <branch name="common0_P44">
            <wire x2="2896" y1="1408" y2="1408" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2896" y="1408" name="common0_P44" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1552" name="common1_P43" orien="R0" />
        <branch name="a">
            <wire x2="2768" y1="832" y2="832" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2768" y="832" name="a" orien="R0" />
        <branch name="b">
            <wire x2="2768" y1="896" y2="896" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2768" y="896" name="b" orien="R0" />
        <branch name="c">
            <wire x2="2768" y1="960" y2="960" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2768" y="960" name="c" orien="R0" />
        <branch name="d">
            <wire x2="2768" y1="1024" y2="1024" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1024" name="d" orien="R0" />
        <branch name="e">
            <wire x2="2768" y1="1088" y2="1088" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1088" name="e" orien="R0" />
        <branch name="f">
            <wire x2="2768" y1="1152" y2="1152" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1152" name="f" orien="R0" />
        <branch name="g">
            <wire x2="2768" y1="1216" y2="1216" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1216" name="g" orien="R0" />
        <instance x="2384" y="2080" name="XLXI_24" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="2448" y1="2080" y2="2144" x1="2448" />
            <wire x2="2656" y1="2144" y2="2144" x1="2448" />
            <wire x2="2448" y1="2144" y2="2272" x1="2448" />
            <wire x2="2640" y1="2272" y2="2272" x1="2448" />
        </branch>
        <instance x="2656" y="2176" name="XLXI_25" orien="R0" />
        <instance x="2640" y="2304" name="XLXI_26" orien="R0" />
        <branch name="common2_P33">
            <wire x2="2912" y1="2144" y2="2144" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="2912" y="2144" name="common2_P33" orien="R0" />
        <branch name="common3_P30">
            <wire x2="2896" y1="2272" y2="2272" x1="2864" />
        </branch>
        <iomarker fontsize="28" x="2896" y="2272" name="common3_P30" orien="R0" />
        <branch name="common1_P43">
            <wire x2="624" y1="1040" y2="1040" x1="608" />
            <wire x2="656" y1="1040" y2="1040" x1="624" />
            <wire x2="656" y1="1040" y2="1408" x1="656" />
            <wire x2="1456" y1="1408" y2="1408" x1="656" />
            <wire x2="2544" y1="1408" y2="1408" x1="1456" />
            <wire x2="2544" y1="1408" y2="1552" x1="2544" />
            <wire x2="2864" y1="1552" y2="1552" x1="2544" />
            <wire x2="2640" y1="1408" y2="1408" x1="2544" />
            <wire x2="720" y1="896" y2="896" x1="656" />
            <wire x2="656" y1="896" y2="1040" x1="656" />
            <wire x2="1456" y1="1344" y2="1408" x1="1456" />
            <wire x2="1664" y1="1344" y2="1344" x1="1456" />
        </branch>
        <branch name="SW_P47">
            <wire x2="512" y1="944" y2="944" x1="192" />
            <wire x2="192" y1="944" y2="1024" x1="192" />
            <wire x2="192" y1="1024" y2="1040" x1="192" />
            <wire x2="192" y1="1040" y2="1968" x1="192" />
            <wire x2="592" y1="1968" y2="1968" x1="192" />
            <wire x2="512" y1="832" y2="832" x1="288" />
            <wire x2="512" y1="832" y2="944" x1="512" />
            <wire x2="720" y1="832" y2="832" x1="512" />
        </branch>
        <instance x="224" y="1072" name="XLXI_35" orien="R0">
        </instance>
        <iomarker fontsize="28" x="80" y="1040" name="clock_P123" orien="R90" />
        <branch name="clock_P123">
            <wire x2="80" y1="1008" y2="1040" x1="80" />
            <wire x2="208" y1="1008" y2="1008" x1="80" />
            <wire x2="208" y1="1008" y2="1040" x1="208" />
            <wire x2="224" y1="1040" y2="1040" x1="208" />
        </branch>
        <instance x="2640" y="1440" name="XLXI_21" orien="R0" />
    </sheet>
</drawing>