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
        <signal name="XLXN_7" />
        <signal name="CO" />
        <signal name="CI" />
        <port polarity="Output" name="CO" />
        <port polarity="Input" name="CI" />
        <blockdef name="div2">
            <timestamp>2020-11-4T14:15:57</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="div2" name="XLXI_1">
            <blockpin signalname="CI" name="clock_in" />
            <blockpin signalname="XLXN_1" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="clock_in" />
            <blockpin signalname="XLXN_2" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="clock_in" />
            <blockpin signalname="XLXN_3" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="clock_in" />
            <blockpin signalname="XLXN_7" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_5">
            <blockpin signalname="XLXN_7" name="clock_in" />
            <blockpin signalname="XLXN_4" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_6">
            <blockpin signalname="XLXN_4" name="clock_in" />
            <blockpin signalname="XLXN_5" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_7">
            <blockpin signalname="XLXN_5" name="clock_in" />
            <blockpin signalname="XLXN_6" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_8">
            <blockpin signalname="XLXN_6" name="clock_in" />
            <blockpin signalname="CO" name="clock_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="576" y="768" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="992" y1="736" y2="736" x1="960" />
        </branch>
        <instance x="992" y="768" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1408" y1="736" y2="736" x1="1376" />
        </branch>
        <instance x="1408" y="768" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1824" y1="736" y2="736" x1="1792" />
        </branch>
        <instance x="1824" y="768" name="XLXI_4" orien="R0">
        </instance>
        <instance x="640" y="1120" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="1056" y1="1088" y2="1088" x1="1024" />
        </branch>
        <instance x="1056" y="1120" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_5">
            <wire x2="1472" y1="1088" y2="1088" x1="1440" />
        </branch>
        <instance x="1472" y="1120" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="1888" y1="1088" y2="1088" x1="1856" />
        </branch>
        <instance x="1888" y="1120" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="640" y1="1088" y2="1088" x1="576" />
            <wire x2="576" y1="1088" y2="1200" x1="576" />
            <wire x2="2352" y1="1200" y2="1200" x1="576" />
            <wire x2="2352" y1="736" y2="736" x1="2208" />
            <wire x2="2352" y1="736" y2="1200" x1="2352" />
        </branch>
        <branch name="CO">
            <wire x2="2544" y1="1088" y2="1088" x1="2272" />
        </branch>
        <branch name="CI">
            <wire x2="576" y1="736" y2="736" x1="544" />
        </branch>
        <iomarker fontsize="28" x="544" y="736" name="CI" orien="R180" />
        <iomarker fontsize="28" x="2544" y="1088" name="CO" orien="R0" />
    </sheet>
</drawing>