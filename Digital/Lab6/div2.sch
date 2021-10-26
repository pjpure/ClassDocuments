<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_18" />
        <signal name="XLXN_2" />
        <signal name="XLXN_19" />
        <signal name="clock_in" />
        <signal name="clock_out" />
        <port polarity="Input" name="clock_in" />
        <port polarity="Output" name="clock_out" />
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="fjkc" name="XLXI_8">
            <blockpin signalname="clock_in" name="C" />
            <blockpin signalname="XLXN_18" name="CLR" />
            <blockpin signalname="XLXN_19" name="J" />
            <blockpin signalname="XLXN_19" name="K" />
            <blockpin signalname="clock_out" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="XLXN_19" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="XLXN_19" name="I" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1696" y="1408" name="XLXI_8" orien="R0" />
        <instance x="1536" y="1008" name="XLXI_9" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="1696" y1="1376" y2="1376" x1="1664" />
        </branch>
        <instance x="1440" y="1408" name="XLXI_10" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1424" y1="1120" y2="1376" x1="1424" />
            <wire x2="1440" y1="1376" y2="1376" x1="1424" />
            <wire x2="1600" y1="1120" y2="1120" x1="1424" />
            <wire x2="1680" y1="1120" y2="1120" x1="1600" />
            <wire x2="1680" y1="1120" y2="1152" x1="1680" />
            <wire x2="1696" y1="1152" y2="1152" x1="1680" />
            <wire x2="1600" y1="1008" y2="1120" x1="1600" />
            <wire x2="1696" y1="1088" y2="1088" x1="1680" />
            <wire x2="1680" y1="1088" y2="1120" x1="1680" />
        </branch>
        <branch name="clock_in">
            <wire x2="1696" y1="1280" y2="1280" x1="1120" />
        </branch>
        <branch name="clock_out">
            <wire x2="2112" y1="1152" y2="1152" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1280" name="clock_in" orien="R180" />
        <iomarker fontsize="28" x="2112" y="1152" name="clock_out" orien="R0" />
    </sheet>
</drawing>