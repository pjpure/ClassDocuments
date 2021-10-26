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
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="o1" />
        <signal name="o2" />
        <signal name="o4" />
        <signal name="o5" />
        <signal name="o6" />
        <signal name="o7" />
        <signal name="o8" />
        <signal name="XLXN_14" />
        <signal name="o3" />
        <signal name="a0" />
        <signal name="b0" />
        <signal name="a1" />
        <signal name="b1" />
        <signal name="a2" />
        <signal name="b2" />
        <signal name="a3" />
        <signal name="b3" />
        <signal name="a4" />
        <signal name="b4" />
        <signal name="a5" />
        <signal name="b5" />
        <signal name="a6" />
        <signal name="b6" />
        <signal name="a7" />
        <signal name="b7" />
        <signal name="o9" />
        <signal name="XLXN_35" />
        <port polarity="Output" name="o1" />
        <port polarity="Output" name="o2" />
        <port polarity="Output" name="o4" />
        <port polarity="Output" name="o5" />
        <port polarity="Output" name="o6" />
        <port polarity="Output" name="o7" />
        <port polarity="Output" name="o8" />
        <port polarity="Output" name="o3" />
        <port polarity="Input" name="a0" />
        <port polarity="Input" name="b0" />
        <port polarity="Input" name="a1" />
        <port polarity="Input" name="b1" />
        <port polarity="Input" name="a2" />
        <port polarity="Input" name="b2" />
        <port polarity="Input" name="a3" />
        <port polarity="Input" name="b3" />
        <port polarity="Input" name="a4" />
        <port polarity="Input" name="b4" />
        <port polarity="Input" name="a5" />
        <port polarity="Input" name="b5" />
        <port polarity="Input" name="a6" />
        <port polarity="Input" name="b6" />
        <port polarity="Input" name="a7" />
        <port polarity="Input" name="b7" />
        <port polarity="Output" name="o9" />
        <blockdef name="fullAdder">
            <timestamp>2020-10-29T7:43:7</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <block symbolname="fullAdder" name="XLXI_1">
            <blockpin signalname="a0" name="A" />
            <blockpin signalname="b0" name="B" />
            <blockpin signalname="XLXN_35" name="C" />
            <blockpin signalname="XLXN_1" name="Carray" />
            <blockpin signalname="o1" name="SUM" />
        </block>
        <block symbolname="fullAdder" name="XLXI_2">
            <blockpin signalname="a1" name="A" />
            <blockpin signalname="b1" name="B" />
            <blockpin signalname="XLXN_1" name="C" />
            <blockpin signalname="XLXN_14" name="Carray" />
            <blockpin signalname="o2" name="SUM" />
        </block>
        <block symbolname="fullAdder" name="XLXI_3">
            <blockpin signalname="a2" name="A" />
            <blockpin signalname="b2" name="B" />
            <blockpin signalname="XLXN_14" name="C" />
            <blockpin signalname="XLXN_2" name="Carray" />
            <blockpin signalname="o3" name="SUM" />
        </block>
        <block symbolname="fullAdder" name="XLXI_4">
            <blockpin signalname="a3" name="A" />
            <blockpin signalname="b3" name="B" />
            <blockpin signalname="XLXN_2" name="C" />
            <blockpin signalname="XLXN_3" name="Carray" />
            <blockpin signalname="o4" name="SUM" />
        </block>
        <block symbolname="fullAdder" name="XLXI_5">
            <blockpin signalname="a4" name="A" />
            <blockpin signalname="b4" name="B" />
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="XLXN_4" name="Carray" />
            <blockpin signalname="o5" name="SUM" />
        </block>
        <block symbolname="fullAdder" name="XLXI_6">
            <blockpin signalname="a5" name="A" />
            <blockpin signalname="b5" name="B" />
            <blockpin signalname="XLXN_4" name="C" />
            <blockpin signalname="XLXN_5" name="Carray" />
            <blockpin signalname="o6" name="SUM" />
        </block>
        <block symbolname="fullAdder" name="XLXI_7">
            <blockpin signalname="a6" name="A" />
            <blockpin signalname="b6" name="B" />
            <blockpin signalname="XLXN_5" name="C" />
            <blockpin signalname="XLXN_6" name="Carray" />
            <blockpin signalname="o7" name="SUM" />
        </block>
        <block symbolname="fullAdder" name="XLXI_8">
            <blockpin signalname="a7" name="A" />
            <blockpin signalname="b7" name="B" />
            <blockpin signalname="XLXN_6" name="C" />
            <blockpin signalname="o9" name="Carray" />
            <blockpin signalname="o8" name="SUM" />
        </block>
        <block symbolname="gnd" name="XLXI_9">
            <blockpin signalname="XLXN_35" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="768" y="496" name="XLXI_1" orien="R0">
        </instance>
        <instance x="768" y="736" name="XLXI_2" orien="R0">
        </instance>
        <instance x="768" y="960" name="XLXI_3" orien="R0">
        </instance>
        <instance x="768" y="1216" name="XLXI_4" orien="R0">
        </instance>
        <instance x="768" y="1456" name="XLXI_5" orien="R0">
        </instance>
        <instance x="768" y="1696" name="XLXI_6" orien="R0">
        </instance>
        <instance x="768" y="1952" name="XLXI_7" orien="R0">
        </instance>
        <instance x="768" y="2208" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="768" y1="704" y2="704" x1="704" />
            <wire x2="704" y1="704" y2="752" x1="704" />
            <wire x2="1232" y1="752" y2="752" x1="704" />
            <wire x2="1232" y1="400" y2="400" x1="1152" />
            <wire x2="1232" y1="400" y2="752" x1="1232" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="768" y1="1184" y2="1184" x1="704" />
            <wire x2="704" y1="1184" y2="1232" x1="704" />
            <wire x2="1232" y1="1232" y2="1232" x1="704" />
            <wire x2="1232" y1="864" y2="864" x1="1152" />
            <wire x2="1232" y1="864" y2="1232" x1="1232" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="768" y1="1424" y2="1424" x1="704" />
            <wire x2="704" y1="1424" y2="1472" x1="704" />
            <wire x2="1216" y1="1472" y2="1472" x1="704" />
            <wire x2="1216" y1="1120" y2="1120" x1="1152" />
            <wire x2="1216" y1="1120" y2="1472" x1="1216" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="768" y1="1664" y2="1664" x1="704" />
            <wire x2="704" y1="1664" y2="1744" x1="704" />
            <wire x2="1200" y1="1744" y2="1744" x1="704" />
            <wire x2="1200" y1="1360" y2="1360" x1="1152" />
            <wire x2="1200" y1="1360" y2="1744" x1="1200" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="720" y1="1712" y2="1920" x1="720" />
            <wire x2="768" y1="1920" y2="1920" x1="720" />
            <wire x2="1216" y1="1712" y2="1712" x1="720" />
            <wire x2="1216" y1="1600" y2="1600" x1="1152" />
            <wire x2="1216" y1="1600" y2="1712" x1="1216" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="768" y1="2176" y2="2176" x1="704" />
            <wire x2="704" y1="2176" y2="2288" x1="704" />
            <wire x2="1232" y1="2288" y2="2288" x1="704" />
            <wire x2="1232" y1="1856" y2="1856" x1="1152" />
            <wire x2="1232" y1="1856" y2="2288" x1="1232" />
        </branch>
        <branch name="o1">
            <wire x2="1184" y1="336" y2="336" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="336" name="o1" orien="R0" />
        <branch name="o2">
            <wire x2="1184" y1="576" y2="576" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="576" name="o2" orien="R0" />
        <branch name="o4">
            <wire x2="1184" y1="1056" y2="1056" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1056" name="o4" orien="R0" />
        <branch name="o5">
            <wire x2="1184" y1="1296" y2="1296" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1296" name="o5" orien="R0" />
        <branch name="o6">
            <wire x2="1184" y1="1536" y2="1536" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1536" name="o6" orien="R0" />
        <branch name="o7">
            <wire x2="1184" y1="1792" y2="1792" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1792" name="o7" orien="R0" />
        <branch name="o8">
            <wire x2="1184" y1="2048" y2="2048" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="2048" name="o8" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="768" y1="928" y2="928" x1="704" />
            <wire x2="704" y1="928" y2="1008" x1="704" />
            <wire x2="1216" y1="1008" y2="1008" x1="704" />
            <wire x2="1216" y1="640" y2="640" x1="1152" />
            <wire x2="1216" y1="640" y2="1008" x1="1216" />
        </branch>
        <branch name="o3">
            <wire x2="1184" y1="800" y2="800" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="800" name="o3" orien="R0" />
        <branch name="a0">
            <wire x2="768" y1="336" y2="336" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="336" name="a0" orien="R180" />
        <branch name="b0">
            <wire x2="768" y1="400" y2="400" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="400" name="b0" orien="R180" />
        <branch name="a1">
            <wire x2="768" y1="576" y2="576" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="576" name="a1" orien="R180" />
        <branch name="b1">
            <wire x2="768" y1="640" y2="640" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="640" name="b1" orien="R180" />
        <branch name="a2">
            <wire x2="768" y1="800" y2="800" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="800" name="a2" orien="R180" />
        <branch name="b2">
            <wire x2="768" y1="864" y2="864" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="864" name="b2" orien="R180" />
        <branch name="a3">
            <wire x2="768" y1="1056" y2="1056" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1056" name="a3" orien="R180" />
        <branch name="b3">
            <wire x2="768" y1="1120" y2="1120" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1120" name="b3" orien="R180" />
        <branch name="a4">
            <wire x2="768" y1="1296" y2="1296" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1296" name="a4" orien="R180" />
        <branch name="b4">
            <wire x2="768" y1="1360" y2="1360" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1360" name="b4" orien="R180" />
        <branch name="a5">
            <wire x2="768" y1="1536" y2="1536" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1536" name="a5" orien="R180" />
        <branch name="b5">
            <wire x2="768" y1="1600" y2="1600" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1600" name="b5" orien="R180" />
        <branch name="a6">
            <wire x2="768" y1="1792" y2="1792" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1792" name="a6" orien="R180" />
        <branch name="b6">
            <wire x2="768" y1="1856" y2="1856" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="1856" name="b6" orien="R180" />
        <branch name="a7">
            <wire x2="768" y1="2048" y2="2048" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="2048" name="a7" orien="R180" />
        <branch name="b7">
            <wire x2="768" y1="2112" y2="2112" x1="736" />
        </branch>
        <iomarker fontsize="28" x="736" y="2112" name="b7" orien="R180" />
        <branch name="o9">
            <wire x2="1184" y1="2112" y2="2112" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1184" y="2112" name="o9" orien="R0" />
        <branch name="XLXN_35">
            <wire x2="768" y1="464" y2="464" x1="400" />
            <wire x2="400" y1="464" y2="528" x1="400" />
        </branch>
        <instance x="336" y="656" name="XLXI_9" orien="R0" />
    </sheet>
</drawing>