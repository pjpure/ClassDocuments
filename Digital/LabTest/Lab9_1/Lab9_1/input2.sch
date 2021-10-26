<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DP(8)" />
        <signal name="DP(7)" />
        <signal name="DP(6)" />
        <signal name="DP(5)" />
        <signal name="DP(4)" />
        <signal name="DP(3)" />
        <signal name="DP(2)" />
        <signal name="DP(1)" />
        <signal name="In2(8)" />
        <signal name="In2(7)" />
        <signal name="In2(6)" />
        <signal name="In2(5)" />
        <signal name="In2(4)" />
        <signal name="In2(3)" />
        <signal name="In2(2)" />
        <signal name="In2(1)" />
        <signal name="In2(1:8)" />
        <signal name="DP(1:8)" />
        <port polarity="Output" name="In2(1:8)" />
        <port polarity="Input" name="DP(1:8)" />
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <block symbolname="obuf" name="XLXI_1">
            <blockpin signalname="DP(7)" name="I" />
            <blockpin signalname="In2(7)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_2">
            <blockpin signalname="DP(6)" name="I" />
            <blockpin signalname="In2(6)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_3">
            <blockpin signalname="DP(5)" name="I" />
            <blockpin signalname="In2(5)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_4">
            <blockpin signalname="DP(4)" name="I" />
            <blockpin signalname="In2(4)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_5">
            <blockpin signalname="DP(3)" name="I" />
            <blockpin signalname="In2(3)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_6">
            <blockpin signalname="DP(2)" name="I" />
            <blockpin signalname="In2(2)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_7">
            <blockpin signalname="DP(1)" name="I" />
            <blockpin signalname="In2(1)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_8">
            <blockpin signalname="DP(8)" name="I" />
            <blockpin signalname="In2(8)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1472" y="1232" name="XLXI_1" orien="R0" />
        <instance x="1472" y="1328" name="XLXI_2" orien="R0" />
        <instance x="1472" y="1408" name="XLXI_3" orien="R0" />
        <instance x="1472" y="1504" name="XLXI_4" orien="R0" />
        <instance x="1472" y="1616" name="XLXI_5" orien="R0" />
        <instance x="1472" y="1712" name="XLXI_6" orien="R0" />
        <instance x="1472" y="1808" name="XLXI_7" orien="R0" />
        <instance x="1472" y="1136" name="XLXI_8" orien="R0" />
        <branch name="DP(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1104" type="branch" />
            <wire x2="1408" y1="1104" y2="1104" x1="1392" />
            <wire x2="1472" y1="1104" y2="1104" x1="1408" />
        </branch>
        <branch name="DP(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1200" type="branch" />
            <wire x2="1408" y1="1200" y2="1200" x1="1392" />
            <wire x2="1472" y1="1200" y2="1200" x1="1408" />
        </branch>
        <branch name="DP(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1296" type="branch" />
            <wire x2="1408" y1="1296" y2="1296" x1="1392" />
            <wire x2="1472" y1="1296" y2="1296" x1="1408" />
        </branch>
        <branch name="DP(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1376" type="branch" />
            <wire x2="1408" y1="1376" y2="1376" x1="1376" />
            <wire x2="1472" y1="1376" y2="1376" x1="1408" />
        </branch>
        <branch name="DP(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1472" type="branch" />
            <wire x2="1408" y1="1472" y2="1472" x1="1392" />
            <wire x2="1472" y1="1472" y2="1472" x1="1408" />
        </branch>
        <branch name="DP(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1584" type="branch" />
            <wire x2="1408" y1="1584" y2="1584" x1="1376" />
            <wire x2="1472" y1="1584" y2="1584" x1="1408" />
        </branch>
        <branch name="DP(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1680" type="branch" />
            <wire x2="1408" y1="1680" y2="1680" x1="1376" />
            <wire x2="1472" y1="1680" y2="1680" x1="1408" />
        </branch>
        <branch name="DP(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1776" type="branch" />
            <wire x2="1408" y1="1776" y2="1776" x1="1376" />
            <wire x2="1472" y1="1776" y2="1776" x1="1408" />
        </branch>
        <branch name="In2(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1104" type="branch" />
            <wire x2="1728" y1="1104" y2="1104" x1="1696" />
            <wire x2="1760" y1="1104" y2="1104" x1="1728" />
        </branch>
        <branch name="In2(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1200" type="branch" />
            <wire x2="1728" y1="1200" y2="1200" x1="1696" />
            <wire x2="1760" y1="1200" y2="1200" x1="1728" />
        </branch>
        <branch name="In2(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1296" type="branch" />
            <wire x2="1744" y1="1296" y2="1296" x1="1696" />
            <wire x2="1792" y1="1296" y2="1296" x1="1744" />
        </branch>
        <branch name="In2(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1376" type="branch" />
            <wire x2="1744" y1="1376" y2="1376" x1="1696" />
            <wire x2="1792" y1="1376" y2="1376" x1="1744" />
        </branch>
        <branch name="In2(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1472" type="branch" />
            <wire x2="1744" y1="1472" y2="1472" x1="1696" />
            <wire x2="1792" y1="1472" y2="1472" x1="1744" />
        </branch>
        <branch name="In2(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1584" type="branch" />
            <wire x2="1744" y1="1584" y2="1584" x1="1696" />
            <wire x2="1824" y1="1584" y2="1584" x1="1744" />
        </branch>
        <branch name="In2(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1680" type="branch" />
            <wire x2="1744" y1="1680" y2="1680" x1="1696" />
            <wire x2="1808" y1="1680" y2="1680" x1="1744" />
        </branch>
        <branch name="In2(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1776" type="branch" />
            <wire x2="1744" y1="1776" y2="1776" x1="1696" />
            <wire x2="1792" y1="1776" y2="1776" x1="1744" />
        </branch>
        <branch name="In2(1:8)">
            <wire x2="2256" y1="1216" y2="1216" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1216" name="In2(1:8)" orien="R0" />
        <branch name="DP(1:8)">
            <wire x2="1040" y1="1344" y2="1344" x1="656" />
        </branch>
        <iomarker fontsize="28" x="656" y="1344" name="DP(1:8)" orien="R180" />
    </sheet>
</drawing>