<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CO" />
        <signal name="XLXN_7" />
        <signal name="CI" />
        <port polarity="Output" name="CO" />
        <port polarity="Input" name="CI" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <block symbolname="fd" name="XLXI_7">
            <blockpin signalname="CI" name="C" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="CO" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="CO" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="720" y="1488" name="XLXI_7" orien="R0" />
        <branch name="CO">
            <wire x2="688" y1="1008" y2="1008" x1="432" />
            <wire x2="1104" y1="1008" y2="1008" x1="688" />
            <wire x2="1120" y1="1008" y2="1008" x1="1104" />
            <wire x2="1120" y1="1008" y2="1232" x1="1120" />
            <wire x2="1280" y1="1232" y2="1232" x1="1120" />
            <wire x2="432" y1="1008" y2="1232" x1="432" />
            <wire x2="1120" y1="1232" y2="1232" x1="1104" />
        </branch>
        <instance x="432" y="1264" name="XLXI_8" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="720" y1="1232" y2="1232" x1="656" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1232" name="CO" orien="R0" />
        <branch name="CI">
            <wire x2="720" y1="1360" y2="1360" x1="688" />
        </branch>
        <iomarker fontsize="28" x="688" y="1360" name="CI" orien="R180" />
    </sheet>
</drawing>