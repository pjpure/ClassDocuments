<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="inLed(5:0)" />
        <signal name="inLed(0)" />
        <signal name="inLed(1)" />
        <signal name="inLed(2)" />
        <signal name="inLed(3)" />
        <signal name="inLed(4)" />
        <signal name="inLed(5)" />
        <signal name="outLedx(5)" />
        <signal name="outLedx(4)" />
        <signal name="outLedx(3)" />
        <signal name="outLedx(2)" />
        <signal name="outLedx(1)" />
        <signal name="outLedx(0)" />
        <port polarity="Input" name="inLed(5:0)" />
        <port polarity="Output" name="outLedx(5)" />
        <port polarity="Output" name="outLedx(4)" />
        <port polarity="Output" name="outLedx(3)" />
        <port polarity="Output" name="outLedx(2)" />
        <port polarity="Output" name="outLedx(1)" />
        <port polarity="Output" name="outLedx(0)" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="inLed(0)" name="I" />
            <blockpin signalname="outLedx(0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="inLed(1)" name="I" />
            <blockpin signalname="outLedx(1)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="inLed(2)" name="I" />
            <blockpin signalname="outLedx(2)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="inLed(3)" name="I" />
            <blockpin signalname="outLedx(3)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="inLed(4)" name="I" />
            <blockpin signalname="outLedx(4)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="inLed(5)" name="I" />
            <blockpin signalname="outLedx(5)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="inLed(5:0)">
            <wire x2="848" y1="1264" y2="1264" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="1264" name="inLed(5:0)" orien="R180" />
        <branch name="inLed(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1424" type="branch" />
            <wire x2="1136" y1="1424" y2="1424" x1="944" />
            <wire x2="1408" y1="1424" y2="1424" x1="1136" />
        </branch>
        <branch name="inLed(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1568" type="branch" />
            <wire x2="1136" y1="1568" y2="1568" x1="976" />
            <wire x2="1440" y1="1568" y2="1568" x1="1136" />
        </branch>
        <branch name="inLed(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1696" type="branch" />
            <wire x2="1152" y1="1696" y2="1696" x1="976" />
            <wire x2="1440" y1="1696" y2="1696" x1="1152" />
        </branch>
        <branch name="inLed(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1808" type="branch" />
            <wire x2="1136" y1="1808" y2="1808" x1="976" />
            <wire x2="1440" y1="1808" y2="1808" x1="1136" />
        </branch>
        <branch name="inLed(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1920" type="branch" />
            <wire x2="1152" y1="1920" y2="1920" x1="976" />
            <wire x2="1440" y1="1920" y2="1920" x1="1152" />
        </branch>
        <branch name="inLed(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="2080" type="branch" />
            <wire x2="1136" y1="2080" y2="2080" x1="976" />
            <wire x2="1440" y1="2080" y2="2080" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1696" y="2080" name="outLedx(5)" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1920" name="outLedx(4)" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1808" name="outLedx(3)" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1696" name="outLedx(2)" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1568" name="outLedx(1)" orien="R0" />
        <branch name="outLedx(5)">
            <wire x2="1696" y1="2080" y2="2080" x1="1664" />
        </branch>
        <branch name="outLedx(4)">
            <wire x2="1696" y1="1920" y2="1920" x1="1664" />
        </branch>
        <branch name="outLedx(3)">
            <wire x2="1696" y1="1808" y2="1808" x1="1664" />
        </branch>
        <branch name="outLedx(2)">
            <wire x2="1696" y1="1696" y2="1696" x1="1664" />
        </branch>
        <branch name="outLedx(1)">
            <wire x2="1696" y1="1568" y2="1568" x1="1664" />
        </branch>
        <branch name="outLedx(0)">
            <wire x2="1648" y1="1424" y2="1424" x1="1632" />
            <wire x2="1712" y1="1424" y2="1424" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1424" name="outLedx(0)" orien="R0" />
        <instance x="1408" y="1456" name="XLXI_7" orien="R0" />
        <instance x="1440" y="1600" name="XLXI_8" orien="R0" />
        <instance x="1440" y="1728" name="XLXI_9" orien="R0" />
        <instance x="1440" y="1840" name="XLXI_10" orien="R0" />
        <instance x="1440" y="1952" name="XLXI_11" orien="R0" />
        <instance x="1440" y="2112" name="XLXI_12" orien="R0" />
    </sheet>
</drawing>