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
        <signal name="XLXN_10" />
        <signal name="CI" />
        <signal name="CO" />
        <port polarity="Input" name="CI" />
        <port polarity="Output" name="CO" />
        <blockdef name="div2">
            <timestamp>2020-11-25T20:56:28</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="div2" name="XLXI_1">
            <blockpin signalname="CI" name="CI" />
            <blockpin signalname="XLXN_1" name="CO" />
        </block>
        <block symbolname="div2" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="CI" />
            <blockpin signalname="XLXN_2" name="CO" />
        </block>
        <block symbolname="div2" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="CI" />
            <blockpin signalname="XLXN_3" name="CO" />
        </block>
        <block symbolname="div2" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="CI" />
            <blockpin signalname="XLXN_10" name="CO" />
        </block>
        <block symbolname="div2" name="XLXI_5">
            <blockpin signalname="XLXN_10" name="CI" />
            <blockpin signalname="XLXN_4" name="CO" />
        </block>
        <block symbolname="div2" name="XLXI_6">
            <blockpin signalname="XLXN_4" name="CI" />
            <blockpin signalname="XLXN_5" name="CO" />
        </block>
        <block symbolname="div2" name="XLXI_7">
            <blockpin signalname="XLXN_5" name="CI" />
            <blockpin signalname="XLXN_6" name="CO" />
        </block>
        <block symbolname="div2" name="XLXI_8">
            <blockpin signalname="XLXN_6" name="CI" />
            <blockpin signalname="CO" name="CO" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="736" y="848" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1152" y1="816" y2="816" x1="1120" />
        </branch>
        <instance x="1152" y="848" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1568" y1="816" y2="816" x1="1536" />
        </branch>
        <instance x="1568" y="848" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1984" y1="816" y2="816" x1="1952" />
        </branch>
        <instance x="1984" y="848" name="XLXI_4" orien="R0">
        </instance>
        <instance x="752" y="1104" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="1168" y1="1072" y2="1072" x1="1136" />
        </branch>
        <instance x="1168" y="1104" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_5">
            <wire x2="1584" y1="1072" y2="1072" x1="1552" />
        </branch>
        <instance x="1584" y="1104" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="2000" y1="1072" y2="1072" x1="1968" />
        </branch>
        <instance x="2000" y="1104" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_10">
            <wire x2="752" y1="1072" y2="1072" x1="688" />
            <wire x2="688" y1="1072" y2="1168" x1="688" />
            <wire x2="2448" y1="1168" y2="1168" x1="688" />
            <wire x2="2448" y1="816" y2="816" x1="2368" />
            <wire x2="2448" y1="816" y2="1168" x1="2448" />
        </branch>
        <branch name="CI">
            <wire x2="736" y1="816" y2="816" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="816" name="CI" orien="R180" />
        <branch name="CO">
            <wire x2="2416" y1="1072" y2="1072" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="2416" y="1072" name="CO" orien="R0" />
    </sheet>
</drawing>