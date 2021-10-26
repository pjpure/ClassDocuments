<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_33" />
        <signal name="In1(7:0)" />
        <signal name="In2(7:0)" />
        <signal name="OutA(7:0)" />
        <port polarity="Input" name="In1(7:0)" />
        <port polarity="Input" name="In2(7:0)" />
        <port polarity="Output" name="OutA(7:0)" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="add8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
        </blockdef>
        <block symbolname="add8" name="XLXI_4">
            <blockpin signalname="In1(7:0)" name="A(7:0)" />
            <blockpin signalname="In2(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_33" name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="OutA(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_33" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1472" y="1552" name="XLXI_4" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="1472" y1="1024" y2="1024" x1="1264" />
            <wire x2="1472" y1="1024" y2="1104" x1="1472" />
        </branch>
        <instance x="1200" y="1152" name="XLXI_5" orien="R0" />
        <branch name="In1(7:0)">
            <wire x2="1472" y1="1232" y2="1232" x1="1168" />
        </branch>
        <branch name="In2(7:0)">
            <wire x2="1472" y1="1360" y2="1360" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1232" name="In1(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1168" y="1360" name="In2(7:0)" orien="R180" />
        <branch name="OutA(7:0)">
            <wire x2="2096" y1="1296" y2="1296" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1296" name="OutA(7:0)" orien="R0" />
    </sheet>
</drawing>