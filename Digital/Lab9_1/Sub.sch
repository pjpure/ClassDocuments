<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="In1(7:0)" />
        <signal name="In2(7:0)" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="OutS(7:0)" />
        <port polarity="Input" name="In1(7:0)" />
        <port polarity="Input" name="In2(7:0)" />
        <port polarity="Output" name="OutS(7:0)" />
        <blockdef name="adsu8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="128" />
            <line x2="128" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="adsu8" name="XLXI_1">
            <blockpin signalname="In1(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_4" name="ADD" />
            <blockpin signalname="In2(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_3" name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="OutS(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1328" y="1216" name="XLXI_1" orien="R0" />
        <branch name="In1(7:0)">
            <wire x2="1328" y1="896" y2="896" x1="1040" />
        </branch>
        <branch name="In2(7:0)">
            <wire x2="1328" y1="1024" y2="1024" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1040" y="896" name="In1(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1024" name="In2(7:0)" orien="R180" />
        <branch name="XLXN_3">
            <wire x2="1328" y1="672" y2="672" x1="1232" />
            <wire x2="1328" y1="672" y2="768" x1="1328" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1328" y1="1152" y2="1184" x1="1328" />
        </branch>
        <instance x="1264" y="1312" name="XLXI_3" orien="R0" />
        <branch name="OutS(7:0)">
            <wire x2="1920" y1="960" y2="960" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1920" y="960" name="OutS(7:0)" orien="R0" />
        <instance x="1168" y="672" name="XLXI_4" orien="R0" />
    </sheet>
</drawing>