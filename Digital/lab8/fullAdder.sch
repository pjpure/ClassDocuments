<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="SUM" />
        <signal name="Carray" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="SUM" />
        <port polarity="Output" name="Carray" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
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
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="SUM" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="Carray" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1072" y="608" name="XLXI_1" orien="R0" />
        <instance x="1616" y="640" name="XLXI_2" orien="R0" />
        <instance x="1440" y="896" name="XLXI_3" orien="R0" />
        <instance x="1440" y="1168" name="XLXI_4" orien="R0" />
        <branch name="B">
            <wire x2="912" y1="544" y2="544" x1="832" />
            <wire x2="1072" y1="544" y2="544" x1="912" />
            <wire x2="912" y1="544" y2="1104" x1="912" />
            <wire x2="1440" y1="1104" y2="1104" x1="912" />
        </branch>
        <iomarker fontsize="28" x="816" y="480" name="A" orien="R180" />
        <iomarker fontsize="28" x="832" y="544" name="B" orien="R180" />
        <branch name="C">
            <wire x2="1296" y1="688" y2="688" x1="848" />
            <wire x2="1440" y1="688" y2="688" x1="1296" />
            <wire x2="1600" y1="688" y2="688" x1="1440" />
            <wire x2="1296" y1="688" y2="768" x1="1296" />
            <wire x2="1440" y1="768" y2="768" x1="1296" />
            <wire x2="1616" y1="576" y2="576" x1="1600" />
            <wire x2="1600" y1="576" y2="688" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="848" y="688" name="C" orien="R180" />
        <branch name="XLXN_6">
            <wire x2="1408" y1="512" y2="512" x1="1328" />
            <wire x2="1616" y1="512" y2="512" x1="1408" />
            <wire x2="1408" y1="512" y2="832" x1="1408" />
            <wire x2="1440" y1="832" y2="832" x1="1408" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1712" y1="800" y2="800" x1="1696" />
            <wire x2="1712" y1="800" y2="880" x1="1712" />
            <wire x2="1744" y1="880" y2="880" x1="1712" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1712" y1="1072" y2="1072" x1="1696" />
            <wire x2="1712" y1="944" y2="1072" x1="1712" />
            <wire x2="1744" y1="944" y2="944" x1="1712" />
        </branch>
        <branch name="A">
            <wire x2="928" y1="480" y2="480" x1="816" />
            <wire x2="992" y1="480" y2="480" x1="928" />
            <wire x2="1072" y1="480" y2="480" x1="992" />
            <wire x2="992" y1="480" y2="1040" x1="992" />
            <wire x2="1440" y1="1040" y2="1040" x1="992" />
        </branch>
        <branch name="SUM">
            <wire x2="1904" y1="544" y2="544" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1904" y="544" name="SUM" orien="R0" />
        <branch name="Carray">
            <wire x2="2032" y1="912" y2="912" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="912" name="Carray" orien="R0" />
        <instance x="1744" y="1008" name="XLXI_6" orien="R0" />
    </sheet>
</drawing>