<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW(0)" />
        <signal name="SW(1)" />
        <signal name="SW(2)" />
        <signal name="SW(3)" />
        <signal name="SW(4)" />
        <signal name="SW(5)" />
        <signal name="SW(6)" />
        <signal name="SW(7)" />
        <signal name="In1(0)" />
        <signal name="In1(1)" />
        <signal name="In1(2)" />
        <signal name="In1(3)" />
        <signal name="In1(4)" />
        <signal name="In1(5)" />
        <signal name="In1(6)" />
        <signal name="In1(7)" />
        <signal name="In1(0:7)" />
        <signal name="SW(0:7)" />
        <port polarity="Output" name="In1(0:7)" />
        <port polarity="Input" name="SW(0:7)" />
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <block symbolname="obuf" name="XLXI_1">
            <blockpin signalname="SW(1)" name="I" />
            <blockpin signalname="In1(1)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_2">
            <blockpin signalname="SW(2)" name="I" />
            <blockpin signalname="In1(2)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_3">
            <blockpin signalname="SW(3)" name="I" />
            <blockpin signalname="In1(3)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_4">
            <blockpin signalname="SW(4)" name="I" />
            <blockpin signalname="In1(4)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_5">
            <blockpin signalname="SW(5)" name="I" />
            <blockpin signalname="In1(5)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_6">
            <blockpin signalname="SW(6)" name="I" />
            <blockpin signalname="In1(6)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_7">
            <blockpin signalname="SW(7)" name="I" />
            <blockpin signalname="In1(7)" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_8">
            <blockpin signalname="SW(0)" name="I" />
            <blockpin signalname="In1(0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1536" y="1200" name="XLXI_1" orien="R0" />
        <instance x="1536" y="1296" name="XLXI_2" orien="R0" />
        <instance x="1536" y="1376" name="XLXI_3" orien="R0" />
        <instance x="1536" y="1472" name="XLXI_4" orien="R0" />
        <instance x="1536" y="1584" name="XLXI_5" orien="R0" />
        <instance x="1536" y="1680" name="XLXI_6" orien="R0" />
        <instance x="1536" y="1776" name="XLXI_7" orien="R0" />
        <instance x="1536" y="1104" name="XLXI_8" orien="R0" />
        <branch name="SW(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1072" type="branch" />
            <wire x2="1472" y1="1072" y2="1072" x1="1456" />
            <wire x2="1536" y1="1072" y2="1072" x1="1472" />
        </branch>
        <branch name="SW(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1168" type="branch" />
            <wire x2="1472" y1="1168" y2="1168" x1="1456" />
            <wire x2="1536" y1="1168" y2="1168" x1="1472" />
        </branch>
        <branch name="SW(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1264" type="branch" />
            <wire x2="1472" y1="1264" y2="1264" x1="1456" />
            <wire x2="1536" y1="1264" y2="1264" x1="1472" />
        </branch>
        <branch name="SW(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1344" type="branch" />
            <wire x2="1472" y1="1344" y2="1344" x1="1440" />
            <wire x2="1536" y1="1344" y2="1344" x1="1472" />
        </branch>
        <branch name="SW(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1440" type="branch" />
            <wire x2="1472" y1="1440" y2="1440" x1="1456" />
            <wire x2="1536" y1="1440" y2="1440" x1="1472" />
        </branch>
        <branch name="SW(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1552" type="branch" />
            <wire x2="1472" y1="1552" y2="1552" x1="1440" />
            <wire x2="1536" y1="1552" y2="1552" x1="1472" />
        </branch>
        <branch name="SW(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1648" type="branch" />
            <wire x2="1472" y1="1648" y2="1648" x1="1440" />
            <wire x2="1536" y1="1648" y2="1648" x1="1472" />
        </branch>
        <branch name="SW(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1744" type="branch" />
            <wire x2="1472" y1="1744" y2="1744" x1="1440" />
            <wire x2="1536" y1="1744" y2="1744" x1="1472" />
        </branch>
        <branch name="In1(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1072" type="branch" />
            <wire x2="1792" y1="1072" y2="1072" x1="1760" />
            <wire x2="1824" y1="1072" y2="1072" x1="1792" />
        </branch>
        <branch name="In1(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1168" type="branch" />
            <wire x2="1792" y1="1168" y2="1168" x1="1760" />
            <wire x2="1824" y1="1168" y2="1168" x1="1792" />
        </branch>
        <branch name="In1(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1264" type="branch" />
            <wire x2="1808" y1="1264" y2="1264" x1="1760" />
            <wire x2="1856" y1="1264" y2="1264" x1="1808" />
        </branch>
        <branch name="In1(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1344" type="branch" />
            <wire x2="1808" y1="1344" y2="1344" x1="1760" />
            <wire x2="1856" y1="1344" y2="1344" x1="1808" />
        </branch>
        <branch name="In1(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1440" type="branch" />
            <wire x2="1808" y1="1440" y2="1440" x1="1760" />
            <wire x2="1856" y1="1440" y2="1440" x1="1808" />
        </branch>
        <branch name="In1(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1552" type="branch" />
            <wire x2="1808" y1="1552" y2="1552" x1="1760" />
            <wire x2="1888" y1="1552" y2="1552" x1="1808" />
        </branch>
        <branch name="In1(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1648" type="branch" />
            <wire x2="1808" y1="1648" y2="1648" x1="1760" />
            <wire x2="1872" y1="1648" y2="1648" x1="1808" />
        </branch>
        <branch name="In1(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1744" type="branch" />
            <wire x2="1808" y1="1744" y2="1744" x1="1760" />
            <wire x2="1856" y1="1744" y2="1744" x1="1808" />
        </branch>
        <branch name="In1(0:7)">
            <wire x2="2320" y1="1184" y2="1184" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2320" y="1184" name="In1(0:7)" orien="R0" />
        <branch name="SW(0:7)">
            <wire x2="1056" y1="1232" y2="1232" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="1232" name="SW(0:7)" orien="R180" />
    </sheet>
</drawing>