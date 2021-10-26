<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW(7:0)" />
        <signal name="DP(1:8)" />
        <signal name="XLXN_9(7:0)" />
        <signal name="XLXN_10(7:0)" />
        <signal name="XLXN_11(7:0)" />
        <signal name="XLXN_12(7:0)" />
        <signal name="PB" />
        <signal name="OutSe(7:0)" />
        <signal name="MN7" />
        <signal name="MN6" />
        <signal name="MN5" />
        <signal name="MN4" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="DP(1:8)" />
        <port polarity="Input" name="PB" />
        <port polarity="Output" name="OutSe(7:0)" />
        <port polarity="Output" name="MN7" />
        <port polarity="Output" name="MN6" />
        <port polarity="Output" name="MN5" />
        <port polarity="Output" name="MN4" />
        <blockdef name="Add">
            <timestamp>2020-11-4T15:59:53</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <blockdef name="XorX">
            <timestamp>2020-11-4T16:14:41</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <blockdef name="Sub">
            <timestamp>2020-11-4T16:57:4</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <blockdef name="shift">
            <timestamp>2020-11-4T17:34:2</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <blockdef name="Mux32">
            <timestamp>2020-11-5T6:55:2</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="Add" name="XLXI_1">
            <blockpin signalname="SW(7:0)" name="In1(7:0)" />
            <blockpin signalname="DP(1:8)" name="In2(7:0)" />
            <blockpin signalname="XLXN_9(7:0)" name="OutA(7:0)" />
        </block>
        <block symbolname="XorX" name="XLXI_3">
            <blockpin signalname="SW(7:0)" name="In1(7:0)" />
            <blockpin signalname="DP(1:8)" name="In2(7:0)" />
            <blockpin signalname="XLXN_11(7:0)" name="OutX(7:0)" />
        </block>
        <block symbolname="Sub" name="XLXI_4">
            <blockpin signalname="SW(7:0)" name="In1(7:0)" />
            <blockpin signalname="DP(1:8)" name="In2(7:0)" />
            <blockpin signalname="XLXN_10(7:0)" name="OutS(7:0)" />
        </block>
        <block symbolname="shift" name="XLXI_5">
            <blockpin signalname="SW(7:0)" name="In1(7:0)" />
            <blockpin signalname="XLXN_12(7:0)" name="OutS(7:0)" />
        </block>
        <block symbolname="Mux32" name="XLXI_6">
            <blockpin signalname="XLXN_9(7:0)" name="iAdd(7:0)" />
            <blockpin signalname="XLXN_12(7:0)" name="iShift(7:0)" />
            <blockpin signalname="XLXN_10(7:0)" name="iSub(7:0)" />
            <blockpin signalname="XLXN_11(7:0)" name="iXor(7:0)" />
            <blockpin signalname="MN4" name="MN4" />
            <blockpin signalname="MN5" name="MN5" />
            <blockpin signalname="MN6" name="MN6" />
            <blockpin signalname="MN7" name="MN7" />
            <blockpin signalname="OutSe(7:0)" name="OutM(7:0)" />
            <blockpin signalname="PB" name="PB" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="1808" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1008" y="720" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1008" y="1072" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1008" y="1488" name="XLXI_3" orien="R0">
        </instance>
        <branch name="SW(7:0)">
            <wire x2="544" y1="256" y2="256" x1="352" />
            <wire x2="768" y1="256" y2="256" x1="544" />
            <wire x2="768" y1="256" y2="624" x1="768" />
            <wire x2="1008" y1="624" y2="624" x1="768" />
            <wire x2="768" y1="624" y2="976" x1="768" />
            <wire x2="1008" y1="976" y2="976" x1="768" />
            <wire x2="768" y1="976" y2="1392" x1="768" />
            <wire x2="1008" y1="1392" y2="1392" x1="768" />
            <wire x2="768" y1="1392" y2="1776" x1="768" />
            <wire x2="1008" y1="1776" y2="1776" x1="768" />
        </branch>
        <branch name="DP(1:8)">
            <wire x2="544" y1="400" y2="400" x1="368" />
            <wire x2="544" y1="400" y2="688" x1="544" />
            <wire x2="1008" y1="688" y2="688" x1="544" />
            <wire x2="544" y1="688" y2="1040" x1="544" />
            <wire x2="1008" y1="1040" y2="1040" x1="544" />
            <wire x2="544" y1="1040" y2="1456" x1="544" />
            <wire x2="1008" y1="1456" y2="1456" x1="544" />
        </branch>
        <iomarker fontsize="28" x="352" y="256" name="SW(7:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="400" name="DP(1:8)" orien="R180" />
        <branch name="XLXN_9(7:0)">
            <wire x2="1664" y1="624" y2="624" x1="1392" />
            <wire x2="1664" y1="624" y2="944" x1="1664" />
            <wire x2="1952" y1="944" y2="944" x1="1664" />
        </branch>
        <branch name="XLXN_10(7:0)">
            <wire x2="1664" y1="976" y2="976" x1="1392" />
            <wire x2="1664" y1="976" y2="1008" x1="1664" />
            <wire x2="1952" y1="1008" y2="1008" x1="1664" />
        </branch>
        <branch name="XLXN_11(7:0)">
            <wire x2="1664" y1="1392" y2="1392" x1="1392" />
            <wire x2="1664" y1="1072" y2="1392" x1="1664" />
            <wire x2="1952" y1="1072" y2="1072" x1="1664" />
        </branch>
        <branch name="XLXN_12(7:0)">
            <wire x2="1680" y1="1776" y2="1776" x1="1392" />
            <wire x2="1680" y1="1136" y2="1776" x1="1680" />
            <wire x2="1952" y1="1136" y2="1136" x1="1680" />
        </branch>
        <branch name="PB">
            <wire x2="1952" y1="1200" y2="1200" x1="1872" />
            <wire x2="1872" y1="1200" y2="1408" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1408" name="PB" orien="R90" />
        <branch name="OutSe(7:0)">
            <wire x2="2464" y1="944" y2="944" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2464" y="944" name="OutSe(7:0)" orien="R0" />
        <instance x="1952" y="1232" name="XLXI_6" orien="R0">
        </instance>
        <branch name="MN7">
            <wire x2="2368" y1="1008" y2="1008" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1008" name="MN7" orien="R0" />
        <branch name="MN6">
            <wire x2="2368" y1="1072" y2="1072" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1072" name="MN6" orien="R0" />
        <branch name="MN5">
            <wire x2="2368" y1="1136" y2="1136" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1136" name="MN5" orien="R0" />
        <branch name="MN4">
            <wire x2="2368" y1="1200" y2="1200" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1200" name="MN4" orien="R0" />
    </sheet>
</drawing>