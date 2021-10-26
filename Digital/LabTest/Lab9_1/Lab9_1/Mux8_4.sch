<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Inp(0)" />
        <signal name="Inp(4)" />
        <signal name="Inp(1)" />
        <signal name="Inp(5)" />
        <signal name="Inp(2)" />
        <signal name="Inp(6)" />
        <signal name="Inp(3)" />
        <signal name="Inp(7)" />
        <signal name="clock" />
        <signal name="D" />
        <signal name="C" />
        <signal name="B" />
        <signal name="A" />
        <signal name="Inp(7:0)" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="D" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="B" />
        <port polarity="Output" name="A" />
        <port polarity="Input" name="Inp(7:0)" />
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="m2_1" name="XLXI_1">
            <blockpin signalname="Inp(0)" name="D0" />
            <blockpin signalname="Inp(4)" name="D1" />
            <blockpin signalname="clock" name="S0" />
            <blockpin signalname="D" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_2">
            <blockpin signalname="Inp(1)" name="D0" />
            <blockpin signalname="Inp(5)" name="D1" />
            <blockpin signalname="clock" name="S0" />
            <blockpin signalname="C" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_3">
            <blockpin signalname="Inp(2)" name="D0" />
            <blockpin signalname="Inp(6)" name="D1" />
            <blockpin signalname="clock" name="S0" />
            <blockpin signalname="B" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_4">
            <blockpin signalname="Inp(3)" name="D0" />
            <blockpin signalname="Inp(7)" name="D1" />
            <blockpin signalname="clock" name="S0" />
            <blockpin signalname="A" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="752" y="672" name="XLXI_1" orien="R0" />
        <instance x="752" y="944" name="XLXI_2" orien="R0" />
        <instance x="752" y="1216" name="XLXI_3" orien="R0" />
        <instance x="768" y="1488" name="XLXI_4" orien="R0" />
        <branch name="Inp(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="512" type="branch" />
            <wire x2="752" y1="512" y2="512" x1="720" />
        </branch>
        <branch name="Inp(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="576" type="branch" />
            <wire x2="752" y1="576" y2="576" x1="720" />
        </branch>
        <branch name="Inp(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="784" type="branch" />
            <wire x2="752" y1="784" y2="784" x1="720" />
        </branch>
        <branch name="Inp(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="848" type="branch" />
            <wire x2="752" y1="848" y2="848" x1="720" />
        </branch>
        <branch name="Inp(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1056" type="branch" />
            <wire x2="736" y1="1056" y2="1056" x1="720" />
            <wire x2="752" y1="1056" y2="1056" x1="736" />
        </branch>
        <branch name="Inp(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1120" type="branch" />
            <wire x2="752" y1="1120" y2="1120" x1="720" />
        </branch>
        <branch name="Inp(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1328" type="branch" />
            <wire x2="768" y1="1328" y2="1328" x1="736" />
        </branch>
        <branch name="Inp(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1392" type="branch" />
            <wire x2="768" y1="1392" y2="1392" x1="736" />
        </branch>
        <branch name="clock">
            <wire x2="752" y1="1456" y2="1456" x1="448" />
            <wire x2="768" y1="1456" y2="1456" x1="752" />
            <wire x2="752" y1="640" y2="640" x1="736" />
            <wire x2="736" y1="640" y2="912" x1="736" />
            <wire x2="752" y1="912" y2="912" x1="736" />
            <wire x2="736" y1="912" y2="1184" x1="736" />
            <wire x2="752" y1="1184" y2="1184" x1="736" />
            <wire x2="736" y1="1184" y2="1248" x1="736" />
            <wire x2="752" y1="1248" y2="1248" x1="736" />
            <wire x2="752" y1="1248" y2="1456" x1="752" />
        </branch>
        <iomarker fontsize="28" x="448" y="1456" name="clock" orien="R180" />
        <branch name="D">
            <wire x2="1104" y1="544" y2="544" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1104" y="544" name="D" orien="R0" />
        <branch name="C">
            <wire x2="1104" y1="816" y2="816" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1104" y="816" name="C" orien="R0" />
        <branch name="B">
            <wire x2="1104" y1="1088" y2="1088" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1104" y="1088" name="B" orien="R0" />
        <branch name="A">
            <wire x2="1120" y1="1360" y2="1360" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1360" name="A" orien="R0" />
        <branch name="Inp(7:0)">
            <wire x2="416" y1="384" y2="384" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="384" name="Inp(7:0)" orien="R180" />
    </sheet>
</drawing>