<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW(0:7)" />
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
        <port polarity="Input" name="SW(0:7)" />
        <port polarity="Output" name="In1(0:7)" />
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
        <iomarker fontsize="28" x="592" y="1280" name="SW(0:7)" orien="R180" />
        <branch name="SW(0:7)">
            <wire x2="976" y1="1280" y2="1280" x1="592" />
        </branch>
        <instance x="960" y="1664" name="XLXI_1" orien="R0" />
        <instance x="960" y="1760" name="XLXI_2" orien="R0" />
        <instance x="960" y="1840" name="XLXI_3" orien="R0" />
        <instance x="960" y="1936" name="XLXI_4" orien="R0" />
        <instance x="960" y="2048" name="XLXI_5" orien="R0" />
        <instance x="960" y="2144" name="XLXI_6" orien="R0" />
        <instance x="960" y="2240" name="XLXI_7" orien="R0" />
        <instance x="960" y="1568" name="XLXI_8" orien="R0" />
        <branch name="SW(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1536" type="branch" />
            <wire x2="896" y1="1536" y2="1536" x1="880" />
            <wire x2="960" y1="1536" y2="1536" x1="896" />
        </branch>
        <branch name="SW(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1632" type="branch" />
            <wire x2="896" y1="1632" y2="1632" x1="880" />
            <wire x2="960" y1="1632" y2="1632" x1="896" />
        </branch>
        <branch name="SW(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1728" type="branch" />
            <wire x2="896" y1="1728" y2="1728" x1="880" />
            <wire x2="960" y1="1728" y2="1728" x1="896" />
        </branch>
        <branch name="SW(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1808" type="branch" />
            <wire x2="896" y1="1808" y2="1808" x1="864" />
            <wire x2="960" y1="1808" y2="1808" x1="896" />
        </branch>
        <branch name="SW(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1904" type="branch" />
            <wire x2="896" y1="1904" y2="1904" x1="880" />
            <wire x2="960" y1="1904" y2="1904" x1="896" />
        </branch>
        <branch name="SW(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="2016" type="branch" />
            <wire x2="896" y1="2016" y2="2016" x1="864" />
            <wire x2="960" y1="2016" y2="2016" x1="896" />
        </branch>
        <branch name="SW(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="2112" type="branch" />
            <wire x2="896" y1="2112" y2="2112" x1="864" />
            <wire x2="960" y1="2112" y2="2112" x1="896" />
        </branch>
        <branch name="SW(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="896" y="2208" type="branch" />
            <wire x2="896" y1="2208" y2="2208" x1="864" />
            <wire x2="960" y1="2208" y2="2208" x1="896" />
        </branch>
        <branch name="In1(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1536" type="branch" />
            <wire x2="1216" y1="1536" y2="1536" x1="1184" />
            <wire x2="1248" y1="1536" y2="1536" x1="1216" />
        </branch>
        <branch name="In1(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1632" type="branch" />
            <wire x2="1216" y1="1632" y2="1632" x1="1184" />
            <wire x2="1248" y1="1632" y2="1632" x1="1216" />
        </branch>
        <branch name="In1(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1728" type="branch" />
            <wire x2="1232" y1="1728" y2="1728" x1="1184" />
            <wire x2="1280" y1="1728" y2="1728" x1="1232" />
        </branch>
        <branch name="In1(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1808" type="branch" />
            <wire x2="1232" y1="1808" y2="1808" x1="1184" />
            <wire x2="1280" y1="1808" y2="1808" x1="1232" />
        </branch>
        <branch name="In1(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1904" type="branch" />
            <wire x2="1232" y1="1904" y2="1904" x1="1184" />
            <wire x2="1280" y1="1904" y2="1904" x1="1232" />
        </branch>
        <branch name="In1(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2016" type="branch" />
            <wire x2="1232" y1="2016" y2="2016" x1="1184" />
            <wire x2="1312" y1="2016" y2="2016" x1="1232" />
        </branch>
        <branch name="In1(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2112" type="branch" />
            <wire x2="1232" y1="2112" y2="2112" x1="1184" />
            <wire x2="1296" y1="2112" y2="2112" x1="1232" />
        </branch>
        <branch name="In1(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2208" type="branch" />
            <wire x2="1232" y1="2208" y2="2208" x1="1184" />
            <wire x2="1280" y1="2208" y2="2208" x1="1232" />
        </branch>
        <branch name="In1(0:7)">
            <wire x2="1744" y1="1648" y2="1648" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1648" name="In1(0:7)" orien="R0" />
    </sheet>
</drawing>