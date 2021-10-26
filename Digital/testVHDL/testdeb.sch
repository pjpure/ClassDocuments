<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk">
        </signal>
        <signal name="sw" />
        <signal name="XLXN_3" />
        <signal name="clockP123" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="MN(5:0)" />
        <port polarity="Input" name="sw" />
        <port polarity="Input" name="clockP123" />
        <port polarity="Output" name="MN(5:0)" />
        <blockdef name="debounce">
            <timestamp>2020-12-14T11:28:40</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Clock_Divider">
            <timestamp>2020-12-13T7:11:38</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
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
        <block symbolname="debounce" name="XLXI_1">
            <blockpin signalname="clk" name="Clock" />
            <blockpin signalname="sw" name="sw" />
            <blockpin signalname="XLXN_5" name="outp" />
        </block>
        <block symbolname="Clock_Divider" name="XLXI_2">
            <blockpin signalname="clockP123" name="clk" />
            <blockpin signalname="XLXN_3" name="reset" />
            <blockpin signalname="clk" name="clock_out" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_6" name="G" />
        </block>
        <block symbolname="counter" name="XLXI_4">
            <blockpin signalname="XLXN_5" name="Clock" />
            <blockpin signalname="XLXN_6" name="CLR" />
            <blockpin signalname="MN(5:0)" name="Q(5:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1184" y="1264" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="1152" y1="1168" y2="1168" x1="1072" />
            <wire x2="1184" y1="1168" y2="1168" x1="1152" />
        </branch>
        <branch name="sw">
            <wire x2="1184" y1="1232" y2="1232" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="1232" name="sw" orien="R180" />
        <instance x="688" y="1264" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="688" y1="1232" y2="1264" x1="688" />
        </branch>
        <instance x="624" y="1392" name="XLXI_3" orien="R0" />
        <branch name="clockP123">
            <wire x2="688" y1="1168" y2="1168" x1="656" />
        </branch>
        <iomarker fontsize="28" x="656" y="1168" name="clockP123" orien="R180" />
        <branch name="XLXN_5">
            <wire x2="1600" y1="1168" y2="1168" x1="1568" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1600" y1="1232" y2="1264" x1="1600" />
        </branch>
        <instance x="1536" y="1392" name="XLXI_5" orien="R0" />
        <branch name="MN(5:0)">
            <wire x2="2144" y1="1168" y2="1168" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2144" y="1168" name="MN(5:0)" orien="R0" />
        <instance x="1600" y="1264" name="XLXI_4" orien="R0">
        </instance>
    </sheet>
</drawing>