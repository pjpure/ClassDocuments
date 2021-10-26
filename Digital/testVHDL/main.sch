<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="MN(5:0)" />
        <signal name="XLXN_5" />
        <signal name="SW" />
        <port polarity="Output" name="MN(5:0)" />
        <port polarity="Input" name="SW" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="counter">
            <timestamp>2020-12-13T13:16:26</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="XLXN_5" name="G" />
        </block>
        <block symbolname="counter" name="XLXI_12">
            <blockpin signalname="SW" name="Clock" />
            <blockpin signalname="XLXN_5" name="CLR" />
            <blockpin signalname="MN(5:0)" name="Q(5:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="MN(5:0)">
            <wire x2="2352" y1="1104" y2="1104" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1104" name="MN(5:0)" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1872" y1="1168" y2="1200" x1="1872" />
        </branch>
        <instance x="1808" y="1328" name="XLXI_11" orien="R0" />
        <branch name="SW">
            <wire x2="1872" y1="1104" y2="1104" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1104" name="SW" orien="R180" />
        <instance x="1872" y="1200" name="XLXI_12" orien="R0">
        </instance>
    </sheet>
</drawing>