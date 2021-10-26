<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clock" />
        <signal name="led" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="led" />
        <blockdef name="CLK1Hz">
            <timestamp>2020-11-25T20:28:56</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="CLK1Hz" name="XLXI_1">
            <blockpin signalname="led" name="Clk1Hz" />
            <blockpin signalname="clock" name="clk20MHz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="1232" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clock">
            <wire x2="1056" y1="1200" y2="1200" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1200" name="clock" orien="R180" />
        <branch name="led">
            <wire x2="1472" y1="1200" y2="1200" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1472" y="1200" name="led" orien="R0" />
    </sheet>
</drawing>