<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="In0_0" />
        <signal name="In0_2" />
        <signal name="In0_3" />
        <signal name="In1_0" />
        <signal name="In1_2" />
        <signal name="In1_3" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="Clock" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_26" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_18" />
        <signal name="XLXN_42" />
        <signal name="XLXN_20" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="In3" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="S3" />
        <signal name="S2" />
        <signal name="S1" />
        <signal name="S0" />
        <signal name="XLXN_27" />
        <signal name="XLXN_30" />
        <signal name="XLXN_45" />
        <signal name="In1_1" />
        <signal name="In0_1" />
        <port polarity="Input" name="In0_0" />
        <port polarity="Input" name="In0_2" />
        <port polarity="Input" name="In0_3" />
        <port polarity="Input" name="In1_0" />
        <port polarity="Input" name="In1_2" />
        <port polarity="Input" name="In1_3" />
        <port polarity="Input" name="Clock" />
        <port polarity="Input" name="In3" />
        <port polarity="Output" name="S3" />
        <port polarity="Output" name="S2" />
        <port polarity="Output" name="S1" />
        <port polarity="Output" name="S0" />
        <port polarity="Input" name="In1_1" />
        <port polarity="Input" name="In0_1" />
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
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
        <block symbolname="m4_1e" name="XLXI_1">
            <blockpin signalname="In0_0" name="D0" />
            <blockpin signalname="In1_0" name="D1" />
            <blockpin signalname="In3" name="D2" />
            <blockpin signalname="XLXN_44" name="D3" />
            <blockpin signalname="XLXN_26" name="E" />
            <blockpin signalname="XLXN_43" name="S0" />
            <blockpin signalname="XLXN_42" name="S1" />
            <blockpin signalname="S0" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="In0_2" name="D0" />
            <blockpin signalname="In1_2" name="D1" />
            <blockpin signalname="XLXN_46" name="D2" />
            <blockpin signalname="XLXN_14" name="D3" />
            <blockpin signalname="XLXN_11" name="E" />
            <blockpin signalname="XLXN_43" name="S0" />
            <blockpin signalname="XLXN_42" name="S1" />
            <blockpin signalname="S2" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_3">
            <blockpin signalname="In0_3" name="D0" />
            <blockpin signalname="In1_3" name="D1" />
            <blockpin signalname="XLXN_47" name="D2" />
            <blockpin signalname="XLXN_13" name="D3" />
            <blockpin signalname="XLXN_10" name="E" />
            <blockpin signalname="XLXN_43" name="S0" />
            <blockpin signalname="XLXN_42" name="S1" />
            <blockpin signalname="S3" name="O" />
        </block>
        <block symbolname="cb2ce" name="XLXI_4">
            <blockpin signalname="Clock" name="C" />
            <blockpin signalname="XLXN_8" name="CE" />
            <blockpin signalname="XLXN_7" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_43" name="Q0" />
            <blockpin signalname="XLXN_42" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_7" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_8" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="XLXN_10" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="XLXN_11" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_26" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="XLXN_27" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="XLXN_45" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="XLXN_46" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_20">
            <blockpin signalname="XLXN_47" name="G" />
        </block>
        <block symbolname="m4_1e" name="XLXI_14">
            <blockpin signalname="In0_1" name="D0" />
            <blockpin signalname="In1_1" name="D1" />
            <blockpin signalname="XLXN_45" name="D2" />
            <blockpin signalname="XLXN_30" name="D3" />
            <blockpin signalname="XLXN_27" name="E" />
            <blockpin signalname="XLXN_43" name="S0" />
            <blockpin signalname="XLXN_42" name="S1" />
            <blockpin signalname="S1" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_21">
            <blockpin signalname="XLXN_44" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_22">
            <blockpin signalname="XLXN_30" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_23">
            <blockpin signalname="XLXN_14" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_24">
            <blockpin signalname="XLXN_13" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1856" y="688" name="XLXI_1" orien="R0" />
        <instance x="1856" y="1744" name="XLXI_2" orien="R0" />
        <instance x="1872" y="2288" name="XLXI_3" orien="R0" />
        <branch name="In0_0">
            <wire x2="1856" y1="272" y2="272" x1="1776" />
        </branch>
        <branch name="In0_2">
            <wire x2="1856" y1="1328" y2="1328" x1="1760" />
        </branch>
        <branch name="In0_3">
            <wire x2="1872" y1="1872" y2="1872" x1="1776" />
        </branch>
        <branch name="In1_0">
            <wire x2="1856" y1="336" y2="336" x1="1776" />
        </branch>
        <branch name="In1_2">
            <wire x2="1856" y1="1392" y2="1392" x1="1744" />
        </branch>
        <branch name="In1_3">
            <wire x2="1872" y1="1936" y2="1936" x1="1744" />
        </branch>
        <instance x="608" y="2448" name="XLXI_4" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="608" y1="2416" y2="2448" x1="608" />
        </branch>
        <instance x="544" y="2576" name="XLXI_5" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="608" y1="2256" y2="2256" x1="576" />
        </branch>
        <instance x="576" y="2320" name="XLXI_6" orien="R270" />
        <branch name="Clock">
            <wire x2="608" y1="2320" y2="2320" x1="448" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1872" y1="2256" y2="2256" x1="1840" />
        </branch>
        <instance x="1840" y="2320" name="XLXI_7" orien="R270" />
        <branch name="XLXN_11">
            <wire x2="1856" y1="1712" y2="1712" x1="1824" />
        </branch>
        <instance x="1824" y="1776" name="XLXI_8" orien="R270" />
        <branch name="XLXN_26">
            <wire x2="1856" y1="656" y2="656" x1="1824" />
        </branch>
        <instance x="1824" y="720" name="XLXI_9" orien="R270" />
        <instance x="1824" y="1248" name="XLXI_10" orien="R270" />
        <branch name="XLXN_13">
            <wire x2="1872" y1="2064" y2="2064" x1="1840" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1856" y1="1520" y2="1520" x1="1824" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1488" y1="2192" y2="2192" x1="992" />
            <wire x2="1872" y1="2192" y2="2192" x1="1488" />
            <wire x2="1856" y1="592" y2="592" x1="1488" />
            <wire x2="1488" y1="592" y2="1120" x1="1488" />
            <wire x2="1488" y1="1120" y2="1136" x1="1488" />
            <wire x2="1488" y1="1136" y2="1648" x1="1488" />
            <wire x2="1856" y1="1648" y2="1648" x1="1488" />
            <wire x2="1488" y1="1648" y2="2192" x1="1488" />
            <wire x2="1856" y1="1120" y2="1120" x1="1488" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1392" y1="2128" y2="2128" x1="992" />
            <wire x2="1872" y1="2128" y2="2128" x1="1392" />
            <wire x2="1856" y1="528" y2="528" x1="1392" />
            <wire x2="1392" y1="528" y2="1056" x1="1392" />
            <wire x2="1392" y1="1056" y2="1072" x1="1392" />
            <wire x2="1392" y1="1072" y2="1584" x1="1392" />
            <wire x2="1856" y1="1584" y2="1584" x1="1392" />
            <wire x2="1392" y1="1584" y2="2128" x1="1392" />
            <wire x2="1856" y1="1056" y2="1056" x1="1392" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1856" y1="464" y2="464" x1="1824" />
        </branch>
        <branch name="In3">
            <wire x2="1856" y1="400" y2="400" x1="1760" />
        </branch>
        <instance x="1696" y="864" name="XLXI_11" orien="R90" />
        <branch name="XLXN_46">
            <wire x2="1856" y1="1456" y2="1456" x1="1824" />
        </branch>
        <instance x="1696" y="1392" name="XLXI_19" orien="R90" />
        <branch name="XLXN_47">
            <wire x2="1872" y1="2000" y2="2000" x1="1840" />
        </branch>
        <instance x="1712" y="1936" name="XLXI_20" orien="R90" />
        <branch name="S3">
            <wire x2="2288" y1="1968" y2="1968" x1="2192" />
        </branch>
        <branch name="S2">
            <wire x2="2272" y1="1424" y2="1424" x1="2176" />
        </branch>
        <branch name="S1">
            <wire x2="2272" y1="896" y2="896" x1="2176" />
            <wire x2="2288" y1="896" y2="896" x1="2272" />
        </branch>
        <branch name="S0">
            <wire x2="2288" y1="368" y2="368" x1="2176" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1840" y1="1184" y2="1184" x1="1824" />
            <wire x2="1856" y1="1184" y2="1184" x1="1840" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1840" y1="992" y2="992" x1="1824" />
            <wire x2="1856" y1="992" y2="992" x1="1840" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1840" y1="928" y2="928" x1="1824" />
            <wire x2="1856" y1="928" y2="928" x1="1840" />
        </branch>
        <branch name="In1_1">
            <wire x2="1808" y1="864" y2="864" x1="1792" />
            <wire x2="1856" y1="864" y2="864" x1="1808" />
        </branch>
        <branch name="In0_1">
            <wire x2="1824" y1="800" y2="800" x1="1808" />
            <wire x2="1856" y1="800" y2="800" x1="1824" />
        </branch>
        <instance x="1856" y="1216" name="XLXI_14" orien="R0" />
        <instance x="1824" y="528" name="XLXI_21" orien="R270" />
        <instance x="1824" y="1056" name="XLXI_22" orien="R270" />
        <instance x="1824" y="1584" name="XLXI_23" orien="R270" />
        <instance x="1840" y="2128" name="XLXI_24" orien="R270" />
        <iomarker fontsize="28" x="448" y="2320" name="Clock" orien="R180" />
        <iomarker fontsize="28" x="1776" y="272" name="In0_0" orien="R180" />
        <iomarker fontsize="28" x="1776" y="336" name="In1_0" orien="R180" />
        <iomarker fontsize="28" x="1808" y="800" name="In0_1" orien="R180" />
        <iomarker fontsize="28" x="1792" y="864" name="In1_1" orien="R180" />
        <iomarker fontsize="28" x="1760" y="1328" name="In0_2" orien="R180" />
        <iomarker fontsize="28" x="1744" y="1392" name="In1_2" orien="R180" />
        <iomarker fontsize="28" x="1776" y="1872" name="In0_3" orien="R180" />
        <iomarker fontsize="28" x="1744" y="1936" name="In1_3" orien="R180" />
        <iomarker fontsize="28" x="2288" y="368" name="S0" orien="R0" />
        <iomarker fontsize="28" x="2288" y="896" name="S1" orien="R0" />
        <iomarker fontsize="28" x="2272" y="1424" name="S2" orien="R0" />
        <iomarker fontsize="28" x="2288" y="1968" name="S3" orien="R0" />
        <iomarker fontsize="28" x="1760" y="400" name="In3" orien="R180" />
    </sheet>
</drawing>