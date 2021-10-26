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
        <signal name="CI" />
        <signal name="CO" />
        <port polarity="Input" name="CI" />
        <port polarity="Output" name="CO" />
        <blockdef name="div8">
            <timestamp>2020-11-25T20:58:46</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="div8" name="XLXI_1">
            <blockpin signalname="CI" name="CI" />
            <blockpin signalname="XLXN_1" name="CO" />
        </block>
        <block symbolname="div8" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="CI" />
            <blockpin signalname="XLXN_2" name="CO" />
        </block>
        <block symbolname="div8" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="CI" />
            <blockpin signalname="XLXN_3" name="CO" />
        </block>
        <block symbolname="div8" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="CI" />
            <blockpin signalname="CO" name="CO" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="688" y="880" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1104" y1="848" y2="848" x1="1072" />
        </branch>
        <instance x="1104" y="880" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1520" y1="848" y2="848" x1="1488" />
        </branch>
        <instance x="1520" y="880" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1936" y1="848" y2="848" x1="1904" />
        </branch>
        <instance x="1936" y="880" name="XLXI_4" orien="R0">
        </instance>
        <branch name="CI">
            <wire x2="688" y1="848" y2="848" x1="656" />
        </branch>
        <iomarker fontsize="28" x="656" y="848" name="CI" orien="R180" />
        <branch name="CO">
            <wire x2="2352" y1="848" y2="848" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2352" y="848" name="CO" orien="R0" />
    </sheet>
</drawing>