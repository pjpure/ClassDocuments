<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DP7" />
        <signal name="SW7" />
        <signal name="DP6" />
        <signal name="SW6" />
        <signal name="DP5" />
        <signal name="SW5" />
        <signal name="DP4" />
        <signal name="SW4" />
        <signal name="DP3" />
        <signal name="SW3" />
        <signal name="DP2" />
        <signal name="SW2" />
        <signal name="DP1" />
        <signal name="SW1" />
        <signal name="DP0" />
        <signal name="SW0" />
        <signal name="XLXN_39" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_64" />
        <signal name="clock" />
        <signal name="com0" />
        <signal name="com1" />
        <signal name="com2" />
        <signal name="com3" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="a" />
        <port polarity="Input" name="DP7" />
        <port polarity="Input" name="SW7" />
        <port polarity="Input" name="DP6" />
        <port polarity="Input" name="SW6" />
        <port polarity="Input" name="DP5" />
        <port polarity="Input" name="SW5" />
        <port polarity="Input" name="DP4" />
        <port polarity="Input" name="SW4" />
        <port polarity="Input" name="DP3" />
        <port polarity="Input" name="SW3" />
        <port polarity="Input" name="DP2" />
        <port polarity="Input" name="SW2" />
        <port polarity="Input" name="DP1" />
        <port polarity="Input" name="SW1" />
        <port polarity="Input" name="DP0" />
        <port polarity="Input" name="SW0" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="com0" />
        <port polarity="Output" name="com1" />
        <port polarity="Output" name="com2" />
        <port polarity="Output" name="com3" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <blockdef name="Sum">
            <timestamp>2020-10-29T8:8:3</timestamp>
            <rect width="256" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-992" y2="-992" x1="320" />
            <line x2="384" y1="-928" y2="-928" x1="320" />
            <line x2="384" y1="-864" y2="-864" x1="320" />
            <line x2="384" y1="-800" y2="-800" x1="320" />
            <line x2="384" y1="-736" y2="-736" x1="320" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
        </blockdef>
        <blockdef name="mux16_4">
            <timestamp>2020-11-4T7:31:9</timestamp>
            <rect width="256" x="64" y="-640" height="640" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
        </blockdef>
        <blockdef name="DIV">
            <timestamp>2020-10-29T8:0:24</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="selectCommon">
            <timestamp>2020-11-4T8:10:29</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="BCD27">
            <timestamp>2020-11-4T8:19:41</timestamp>
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
        <block symbolname="Sum" name="XLXI_1">
            <blockpin signalname="SW0" name="a0" />
            <blockpin signalname="SW1" name="a1" />
            <blockpin signalname="SW2" name="a2" />
            <blockpin signalname="SW3" name="a3" />
            <blockpin signalname="SW4" name="a4" />
            <blockpin signalname="SW5" name="a5" />
            <blockpin signalname="SW6" name="a6" />
            <blockpin signalname="SW7" name="a7" />
            <blockpin signalname="DP0" name="b0" />
            <blockpin signalname="DP1" name="b1" />
            <blockpin signalname="DP2" name="b2" />
            <blockpin signalname="DP3" name="b3" />
            <blockpin signalname="DP4" name="b4" />
            <blockpin signalname="DP5" name="b5" />
            <blockpin signalname="DP6" name="b6" />
            <blockpin signalname="DP7" name="b7" />
            <blockpin signalname="XLXN_44" name="o1" />
            <blockpin signalname="XLXN_45" name="o2" />
            <blockpin signalname="XLXN_46" name="o3" />
            <blockpin signalname="XLXN_47" name="o4" />
            <blockpin signalname="XLXN_48" name="o5" />
            <blockpin signalname="XLXN_49" name="o6" />
            <blockpin signalname="XLXN_50" name="o7" />
            <blockpin signalname="XLXN_51" name="o8" />
            <blockpin signalname="XLXN_39" name="o9" />
        </block>
        <block symbolname="mux16_4" name="XLXI_7">
            <blockpin signalname="XLXN_64" name="Clock" />
            <blockpin signalname="XLXN_44" name="In0_0" />
            <blockpin signalname="XLXN_45" name="In0_1" />
            <blockpin signalname="XLXN_46" name="In0_2" />
            <blockpin signalname="XLXN_47" name="In0_3" />
            <blockpin signalname="XLXN_48" name="In1_0" />
            <blockpin signalname="XLXN_49" name="In1_1" />
            <blockpin signalname="XLXN_50" name="In1_2" />
            <blockpin signalname="XLXN_51" name="In1_3" />
            <blockpin signalname="XLXN_39" name="In3" />
            <blockpin signalname="XLXN_52" name="S0" />
            <blockpin signalname="XLXN_53" name="S1" />
            <blockpin signalname="XLXN_54" name="S2" />
            <blockpin signalname="XLXN_55" name="S3" />
        </block>
        <block symbolname="DIV" name="XLXI_10">
            <blockpin signalname="clock" name="CI" />
            <blockpin signalname="XLXN_64" name="CO" />
        </block>
        <block symbolname="selectCommon" name="XLXI_11">
            <blockpin signalname="XLXN_64" name="Clock" />
            <blockpin signalname="com0" name="com0" />
            <blockpin signalname="com1" name="com1" />
            <blockpin signalname="com2" name="com2" />
            <blockpin name="com3" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="com3" name="P" />
        </block>
        <block symbolname="BCD27" name="XLXI_15">
            <blockpin signalname="a" name="A_7" />
            <blockpin signalname="XLXN_52" name="Bit_0" />
            <blockpin signalname="XLXN_53" name="Bit_1" />
            <blockpin signalname="XLXN_54" name="Bit_2" />
            <blockpin signalname="XLXN_55" name="Bit_3" />
            <blockpin signalname="b" name="B_7" />
            <blockpin signalname="c" name="C_7" />
            <blockpin signalname="d" name="D_7" />
            <blockpin signalname="e" name="E_7" />
            <blockpin signalname="f" name="F_7" />
            <blockpin signalname="g" name="G_7" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="DP7">
            <wire x2="1056" y1="1472" y2="1472" x1="1040" />
            <wire x2="1072" y1="1472" y2="1472" x1="1056" />
        </branch>
        <branch name="SW7">
            <wire x2="1056" y1="1408" y2="1408" x1="1040" />
            <wire x2="1072" y1="1408" y2="1408" x1="1056" />
        </branch>
        <branch name="DP6">
            <wire x2="1056" y1="1344" y2="1344" x1="1040" />
            <wire x2="1072" y1="1344" y2="1344" x1="1056" />
        </branch>
        <branch name="SW6">
            <wire x2="1056" y1="1280" y2="1280" x1="1040" />
            <wire x2="1072" y1="1280" y2="1280" x1="1056" />
        </branch>
        <branch name="DP5">
            <wire x2="1056" y1="1216" y2="1216" x1="1040" />
            <wire x2="1072" y1="1216" y2="1216" x1="1056" />
        </branch>
        <branch name="SW5">
            <wire x2="1056" y1="1152" y2="1152" x1="1040" />
            <wire x2="1072" y1="1152" y2="1152" x1="1056" />
        </branch>
        <branch name="DP4">
            <wire x2="1056" y1="1088" y2="1088" x1="1040" />
            <wire x2="1072" y1="1088" y2="1088" x1="1056" />
        </branch>
        <branch name="SW4">
            <wire x2="1056" y1="1024" y2="1024" x1="1040" />
            <wire x2="1072" y1="1024" y2="1024" x1="1056" />
        </branch>
        <branch name="DP3">
            <wire x2="1056" y1="960" y2="960" x1="1040" />
            <wire x2="1072" y1="960" y2="960" x1="1056" />
        </branch>
        <branch name="SW3">
            <wire x2="1056" y1="896" y2="896" x1="1040" />
            <wire x2="1072" y1="896" y2="896" x1="1056" />
        </branch>
        <branch name="DP2">
            <wire x2="1056" y1="832" y2="832" x1="1040" />
            <wire x2="1072" y1="832" y2="832" x1="1056" />
        </branch>
        <branch name="SW2">
            <wire x2="1056" y1="768" y2="768" x1="1040" />
            <wire x2="1072" y1="768" y2="768" x1="1056" />
        </branch>
        <branch name="DP1">
            <wire x2="1056" y1="704" y2="704" x1="1040" />
            <wire x2="1072" y1="704" y2="704" x1="1056" />
        </branch>
        <branch name="SW1">
            <wire x2="1056" y1="640" y2="640" x1="1040" />
            <wire x2="1072" y1="640" y2="640" x1="1056" />
        </branch>
        <branch name="DP0">
            <wire x2="1056" y1="576" y2="576" x1="1040" />
            <wire x2="1072" y1="576" y2="576" x1="1056" />
        </branch>
        <branch name="SW0">
            <wire x2="1056" y1="512" y2="512" x1="1040" />
            <wire x2="1072" y1="512" y2="512" x1="1056" />
        </branch>
        <instance x="1072" y="1504" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1040" y="512" name="SW0" orien="R180" />
        <iomarker fontsize="28" x="1040" y="576" name="DP0" orien="R180" />
        <iomarker fontsize="28" x="1040" y="640" name="SW1" orien="R180" />
        <iomarker fontsize="28" x="1040" y="704" name="DP1" orien="R180" />
        <iomarker fontsize="28" x="1040" y="768" name="SW2" orien="R180" />
        <iomarker fontsize="28" x="1040" y="832" name="DP2" orien="R180" />
        <iomarker fontsize="28" x="1040" y="896" name="SW3" orien="R180" />
        <iomarker fontsize="28" x="1040" y="960" name="DP3" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1024" name="SW4" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1088" name="DP4" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1152" name="SW5" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1216" name="DP5" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1280" name="SW6" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1344" name="DP6" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1408" name="SW7" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1472" name="DP7" orien="R180" />
        <instance x="1760" y="1104" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_39">
            <wire x2="1600" y1="1024" y2="1024" x1="1456" />
            <wire x2="1600" y1="624" y2="1024" x1="1600" />
            <wire x2="1760" y1="624" y2="624" x1="1600" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1600" y1="512" y2="512" x1="1456" />
            <wire x2="1600" y1="496" y2="512" x1="1600" />
            <wire x2="1760" y1="496" y2="496" x1="1600" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1584" y1="576" y2="576" x1="1456" />
            <wire x2="1584" y1="576" y2="688" x1="1584" />
            <wire x2="1760" y1="688" y2="688" x1="1584" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1568" y1="640" y2="640" x1="1456" />
            <wire x2="1568" y1="640" y2="816" x1="1568" />
            <wire x2="1760" y1="816" y2="816" x1="1568" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="1552" y1="704" y2="704" x1="1456" />
            <wire x2="1552" y1="704" y2="944" x1="1552" />
            <wire x2="1760" y1="944" y2="944" x1="1552" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1616" y1="768" y2="768" x1="1456" />
            <wire x2="1616" y1="560" y2="768" x1="1616" />
            <wire x2="1760" y1="560" y2="560" x1="1616" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1584" y1="832" y2="832" x1="1456" />
            <wire x2="1584" y1="752" y2="832" x1="1584" />
            <wire x2="1760" y1="752" y2="752" x1="1584" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="1584" y1="896" y2="896" x1="1456" />
            <wire x2="1584" y1="880" y2="896" x1="1584" />
            <wire x2="1760" y1="880" y2="880" x1="1584" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="1584" y1="960" y2="960" x1="1456" />
            <wire x2="1584" y1="960" y2="1008" x1="1584" />
            <wire x2="1760" y1="1008" y2="1008" x1="1584" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="2320" y1="496" y2="496" x1="2144" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="2320" y1="560" y2="560" x1="2144" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="2320" y1="624" y2="624" x1="2144" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="2320" y1="688" y2="688" x1="2144" />
        </branch>
        <instance x="1072" y="1664" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_64">
            <wire x2="1600" y1="1632" y2="1632" x1="1456" />
            <wire x2="1856" y1="1632" y2="1632" x1="1600" />
            <wire x2="1600" y1="1072" y2="1632" x1="1600" />
            <wire x2="1760" y1="1072" y2="1072" x1="1600" />
        </branch>
        <branch name="clock">
            <wire x2="1072" y1="1632" y2="1632" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1632" name="clock" orien="R180" />
        <instance x="1856" y="1856" name="XLXI_11" orien="R0">
        </instance>
        <branch name="com0">
            <wire x2="2272" y1="1632" y2="1632" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1632" name="com0" orien="R0" />
        <branch name="com1">
            <wire x2="2272" y1="1696" y2="1696" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1696" name="com1" orien="R0" />
        <branch name="com2">
            <wire x2="2272" y1="1760" y2="1760" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1760" name="com2" orien="R0" />
        <instance x="2192" y="1968" name="XLXI_12" orien="R0" />
        <branch name="com3">
            <wire x2="2256" y1="1968" y2="1984" x1="2256" />
            <wire x2="2400" y1="1984" y2="1984" x1="2256" />
            <wire x2="2400" y1="1968" y2="1984" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2400" y="1968" name="com3" orien="R270" />
        <instance x="2320" y="912" name="XLXI_15" orien="R0">
        </instance>
        <branch name="g">
            <wire x2="2736" y1="496" y2="496" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="496" name="g" orien="R0" />
        <branch name="f">
            <wire x2="2736" y1="560" y2="560" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="560" name="f" orien="R0" />
        <branch name="e">
            <wire x2="2736" y1="624" y2="624" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="624" name="e" orien="R0" />
        <branch name="d">
            <wire x2="2736" y1="688" y2="688" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="688" name="d" orien="R0" />
        <branch name="c">
            <wire x2="2736" y1="752" y2="752" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="752" name="c" orien="R0" />
        <branch name="b">
            <wire x2="2736" y1="816" y2="816" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="816" name="b" orien="R0" />
        <branch name="a">
            <wire x2="2736" y1="880" y2="880" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="880" name="a" orien="R0" />
    </sheet>
</drawing>