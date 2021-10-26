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
        <signal name="outComp" />
        <signal name="D2" />
        <signal name="D1" />
        <signal name="C2" />
        <signal name="C1" />
        <signal name="B2" />
        <signal name="B1" />
        <signal name="A2" />
        <signal name="A1" />
        <port polarity="Output" name="outComp" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="C2" />
        <port polarity="Input" name="C1" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="A2" />
        <port polarity="Input" name="A1" />
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <block symbolname="xnor2" name="XLXI_1">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_2">
            <blockpin signalname="C1" name="I0" />
            <blockpin signalname="C2" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_3">
            <blockpin signalname="B1" name="I0" />
            <blockpin signalname="B2" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_4">
            <blockpin signalname="A1" name="I0" />
            <blockpin signalname="A2" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_5">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="XLXN_1" name="I3" />
            <blockpin signalname="outComp" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="608" name="XLXI_1" orien="R0" />
        <instance x="1024" y="800" name="XLXI_2" orien="R0" />
        <instance x="1024" y="1008" name="XLXI_3" orien="R0" />
        <instance x="1008" y="1216" name="XLXI_4" orien="R0" />
        <instance x="1552" y="960" name="XLXI_5" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1552" y1="512" y2="512" x1="1280" />
            <wire x2="1552" y1="512" y2="704" x1="1552" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1408" y1="704" y2="704" x1="1280" />
            <wire x2="1408" y1="704" y2="768" x1="1408" />
            <wire x2="1552" y1="768" y2="768" x1="1408" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1408" y1="912" y2="912" x1="1280" />
            <wire x2="1408" y1="832" y2="912" x1="1408" />
            <wire x2="1552" y1="832" y2="832" x1="1408" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1552" y1="1120" y2="1120" x1="1264" />
            <wire x2="1552" y1="896" y2="1120" x1="1552" />
        </branch>
        <branch name="outComp">
            <wire x2="1840" y1="800" y2="800" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1840" y="800" name="outComp" orien="R0" />
        <branch name="D2">
            <wire x2="1024" y1="480" y2="480" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="480" name="D2" orien="R180" />
        <branch name="D1">
            <wire x2="1024" y1="544" y2="544" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="544" name="D1" orien="R180" />
        <branch name="C2">
            <wire x2="1024" y1="672" y2="672" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="672" name="C2" orien="R180" />
        <branch name="C1">
            <wire x2="1024" y1="736" y2="736" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="736" name="C1" orien="R180" />
        <branch name="B2">
            <wire x2="1024" y1="880" y2="880" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="880" name="B2" orien="R180" />
        <branch name="B1">
            <wire x2="1024" y1="944" y2="944" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="944" name="B1" orien="R180" />
        <branch name="A2">
            <wire x2="1008" y1="1088" y2="1088" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="1088" name="A2" orien="R180" />
        <branch name="A1">
            <wire x2="1008" y1="1152" y2="1152" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="1152" name="A1" orien="R180" />
    </sheet>
</drawing>