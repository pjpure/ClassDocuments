<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DP(1:8)" />
        <signal name="MN(0:7)" />
        <port polarity="Input" name="DP(1:8)" />
        <port polarity="Output" name="MN(0:7)" />
        <blockdef name="input2">
            <timestamp>2020-11-4T13:20:56</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <block symbolname="input2" name="XLXI_1">
            <blockpin signalname="DP(1:8)" name="DP(1:8)" />
            <blockpin signalname="MN(0:7)" name="In2(8:1)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="DP(1:8)">
            <wire x2="1504" y1="1184" y2="1184" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1472" y="1184" name="DP(1:8)" orien="R180" />
        <branch name="MN(0:7)">
            <wire x2="1920" y1="1184" y2="1184" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1184" name="MN(0:7)" orien="R0" />
        <instance x="1504" y="1216" name="XLXI_1" orien="R0">
        </instance>
    </sheet>
</drawing>