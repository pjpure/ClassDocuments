<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="com0" />
        <signal name="clock" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="a" />
        <signal name="com1" />
        <signal name="XLXN_23" />
        <signal name="com2" />
        <signal name="com3" />
        <signal name="XLXN_26(7:0)" />
        <signal name="SW(7:0)" />
        <signal name="DP(1:8)" />
        <signal name="PB1" />
        <signal name="MN7" />
        <signal name="MN6" />
        <signal name="MN5" />
        <signal name="MN4" />
        <port polarity="Output" name="com0" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="com1" />
        <port polarity="Output" name="com2" />
        <port polarity="Output" name="com3" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="DP(1:8)" />
        <port polarity="Input" name="PB1" />
        <port polarity="Output" name="MN7" />
        <port polarity="Output" name="MN6" />
        <port polarity="Output" name="MN5" />
        <port polarity="Output" name="MN4" />
        <blockdef name="DIV">
            <timestamp>2020-11-4T14:16:52</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="BCD27">
            <timestamp>2020-11-4T14:13:50</timestamp>
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
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <blockdef name="Mux8_4">
            <timestamp>2020-11-4T15:58:26</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
        </blockdef>
        <blockdef name="Selectt">
            <timestamp>2020-11-5T6:57:48</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
        </blockdef>
        <block symbolname="DIV" name="XLXI_7">
            <blockpin signalname="clock" name="CI" />
            <blockpin signalname="com0" name="CO" />
        </block>
        <block symbolname="BCD27" name="XLXI_8">
            <blockpin signalname="a" name="A_7" />
            <blockpin signalname="XLXN_9" name="Bit_0" />
            <blockpin signalname="XLXN_10" name="Bit_1" />
            <blockpin signalname="XLXN_11" name="Bit_2" />
            <blockpin signalname="XLXN_12" name="Bit_3" />
            <blockpin signalname="b" name="B_7" />
            <blockpin signalname="c" name="C_7" />
            <blockpin signalname="d" name="D_7" />
            <blockpin signalname="e" name="E_7" />
            <blockpin signalname="f" name="F_7" />
            <blockpin signalname="g" name="G_7" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="com0" name="I" />
            <blockpin signalname="com1" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="XLXN_23" name="P" />
        </block>
        <block symbolname="obuf" name="XLXI_11">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="com2" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_13">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="com3" name="O" />
        </block>
        <block symbolname="Mux8_4" name="XLXI_14">
            <blockpin signalname="XLXN_12" name="A" />
            <blockpin signalname="XLXN_11" name="B" />
            <blockpin signalname="XLXN_10" name="C" />
            <blockpin signalname="com0" name="clock" />
            <blockpin signalname="XLXN_9" name="D" />
            <blockpin signalname="XLXN_26(7:0)" name="Inp(7:0)" />
        </block>
        <block symbolname="Selectt" name="XLXI_15">
            <blockpin signalname="DP(1:8)" name="DP(1:8)" />
            <blockpin signalname="MN4" name="MN4" />
            <blockpin signalname="MN5" name="MN5" />
            <blockpin signalname="MN6" name="MN6" />
            <blockpin signalname="MN7" name="MN7" />
            <blockpin signalname="XLXN_26(7:0)" name="OutSe(7:0)" />
            <blockpin signalname="PB1" name="PB" />
            <blockpin signalname="SW(7:0)" name="SW(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1248" y="1760" name="XLXI_7" orien="R0">
        </instance>
        <branch name="clock">
            <wire x2="1248" y1="1728" y2="1728" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1216" y="1728" name="clock" orien="R180" />
        <instance x="2336" y="1888" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_9">
            <wire x2="2336" y1="1472" y2="1472" x1="2240" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2336" y1="1536" y2="1536" x1="2240" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2336" y1="1600" y2="1600" x1="2240" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2336" y1="1664" y2="1664" x1="2240" />
        </branch>
        <branch name="g">
            <wire x2="2752" y1="1472" y2="1472" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2752" y="1472" name="g" orien="R0" />
        <branch name="f">
            <wire x2="2752" y1="1536" y2="1536" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2752" y="1536" name="f" orien="R0" />
        <branch name="e">
            <wire x2="2752" y1="1600" y2="1600" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2752" y="1600" name="e" orien="R0" />
        <branch name="d">
            <wire x2="2752" y1="1664" y2="1664" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2752" y="1664" name="d" orien="R0" />
        <branch name="c">
            <wire x2="2752" y1="1728" y2="1728" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2752" y="1728" name="c" orien="R0" />
        <branch name="b">
            <wire x2="2752" y1="1792" y2="1792" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2752" y="1792" name="b" orien="R0" />
        <branch name="a">
            <wire x2="2752" y1="1856" y2="1856" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2752" y="1856" name="a" orien="R0" />
        <branch name="com0">
            <wire x2="1744" y1="1728" y2="1728" x1="1632" />
            <wire x2="1744" y1="1728" y2="1920" x1="1744" />
            <wire x2="1936" y1="1920" y2="1920" x1="1744" />
            <wire x2="1744" y1="1920" y2="2000" x1="1744" />
            <wire x2="1936" y1="2000" y2="2000" x1="1744" />
            <wire x2="1856" y1="1536" y2="1536" x1="1744" />
            <wire x2="1744" y1="1536" y2="1728" x1="1744" />
        </branch>
        <instance x="1936" y="2032" name="XLXI_9" orien="R0" />
        <iomarker fontsize="28" x="1936" y="1920" name="com0" orien="R0" />
        <branch name="com1">
            <wire x2="2192" y1="2000" y2="2000" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2192" y="2000" name="com1" orien="R0" />
        <instance x="1488" y="2256" name="XLXI_10" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="1552" y1="2256" y2="2320" x1="1552" />
            <wire x2="1792" y1="2320" y2="2320" x1="1552" />
            <wire x2="1552" y1="2320" y2="2416" x1="1552" />
            <wire x2="1728" y1="2416" y2="2416" x1="1552" />
        </branch>
        <instance x="1792" y="2352" name="XLXI_11" orien="R0" />
        <branch name="com2">
            <wire x2="2048" y1="2320" y2="2320" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="2320" name="com2" orien="R0" />
        <branch name="com3">
            <wire x2="2032" y1="2416" y2="2416" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="2032" y="2416" name="com3" orien="R0" />
        <instance x="1728" y="2448" name="XLXI_13" orien="R0" />
        <instance x="1856" y="1696" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_26(7:0)">
            <wire x2="1552" y1="1120" y2="1120" x1="1248" />
            <wire x2="1552" y1="1120" y2="1472" x1="1552" />
            <wire x2="1856" y1="1472" y2="1472" x1="1552" />
        </branch>
        <branch name="SW(7:0)">
            <wire x2="656" y1="1120" y2="1120" x1="576" />
            <wire x2="864" y1="1120" y2="1120" x1="656" />
        </branch>
        <branch name="DP(1:8)">
            <wire x2="672" y1="1184" y2="1184" x1="576" />
            <wire x2="864" y1="1184" y2="1184" x1="672" />
        </branch>
        <branch name="PB1">
            <wire x2="848" y1="1248" y2="1248" x1="576" />
            <wire x2="864" y1="1248" y2="1248" x1="848" />
        </branch>
        <iomarker fontsize="28" x="576" y="1120" name="SW(7:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="1184" name="DP(1:8)" orien="R180" />
        <iomarker fontsize="28" x="576" y="1248" name="PB1" orien="R180" />
        <instance x="864" y="1408" name="XLXI_15" orien="R0">
        </instance>
        <branch name="MN7">
            <wire x2="1280" y1="1184" y2="1184" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1184" name="MN7" orien="R0" />
        <branch name="MN6">
            <wire x2="1280" y1="1248" y2="1248" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1248" name="MN6" orien="R0" />
        <branch name="MN5">
            <wire x2="1280" y1="1312" y2="1312" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1312" name="MN5" orien="R0" />
        <branch name="MN4">
            <wire x2="1280" y1="1376" y2="1376" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1376" name="MN4" orien="R0" />
    </sheet>
</drawing>