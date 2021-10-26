<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="In1(0)" />
        <signal name="In2(0)" />
        <signal name="In1(1)" />
        <signal name="In2(1)" />
        <signal name="In1(2)" />
        <signal name="In2(2)" />
        <signal name="In1(3)" />
        <signal name="In2(3)" />
        <signal name="In1(4)" />
        <signal name="In2(4)" />
        <signal name="In1(5)" />
        <signal name="In2(5)" />
        <signal name="In1(6)" />
        <signal name="In2(6)" />
        <signal name="In1(7)" />
        <signal name="In2(7)" />
        <signal name="In1(7:0)" />
        <signal name="In2(7:0)" />
        <signal name="OutX(0)" />
        <signal name="OutX(1)" />
        <signal name="OutX(2)" />
        <signal name="OutX(3)" />
        <signal name="OutX(4)" />
        <signal name="OutX(5)" />
        <signal name="OutX(6)" />
        <signal name="OutX(7)" />
        <signal name="OutX(7:0)" />
        <port polarity="Input" name="In1(7:0)" />
        <port polarity="Input" name="In2(7:0)" />
        <port polarity="Output" name="OutX(7:0)" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="In2(0)" name="I0" />
            <blockpin signalname="In1(0)" name="I1" />
            <blockpin signalname="OutX(0)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="In2(1)" name="I0" />
            <blockpin signalname="In1(1)" name="I1" />
            <blockpin signalname="OutX(1)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_3">
            <blockpin signalname="In2(2)" name="I0" />
            <blockpin signalname="In1(2)" name="I1" />
            <blockpin signalname="OutX(2)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_4">
            <blockpin signalname="In2(3)" name="I0" />
            <blockpin signalname="In1(3)" name="I1" />
            <blockpin signalname="OutX(3)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="In2(4)" name="I0" />
            <blockpin signalname="In1(4)" name="I1" />
            <blockpin signalname="OutX(4)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
            <blockpin signalname="In2(5)" name="I0" />
            <blockpin signalname="In1(5)" name="I1" />
            <blockpin signalname="OutX(5)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_7">
            <blockpin signalname="In2(6)" name="I0" />
            <blockpin signalname="In1(6)" name="I1" />
            <blockpin signalname="OutX(6)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_8">
            <blockpin signalname="In2(7)" name="I0" />
            <blockpin signalname="In1(7)" name="I1" />
            <blockpin signalname="OutX(7)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1216" y="432" name="XLXI_1" orien="R0" />
        <instance x="1216" y="592" name="XLXI_2" orien="R0" />
        <instance x="1216" y="752" name="XLXI_3" orien="R0" />
        <instance x="1216" y="912" name="XLXI_4" orien="R0" />
        <instance x="1216" y="1088" name="XLXI_5" orien="R0" />
        <instance x="1216" y="1264" name="XLXI_6" orien="R0" />
        <instance x="1216" y="1424" name="XLXI_7" orien="R0" />
        <instance x="1216" y="1600" name="XLXI_8" orien="R0" />
        <branch name="In1(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="304" type="branch" />
            <wire x2="1216" y1="304" y2="304" x1="1088" />
        </branch>
        <branch name="In2(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="368" type="branch" />
            <wire x2="1216" y1="368" y2="368" x1="1088" />
        </branch>
        <branch name="In1(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="464" type="branch" />
            <wire x2="1216" y1="464" y2="464" x1="1088" />
        </branch>
        <branch name="In2(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="528" type="branch" />
            <wire x2="1216" y1="528" y2="528" x1="1088" />
        </branch>
        <branch name="In1(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="624" type="branch" />
            <wire x2="1216" y1="624" y2="624" x1="1088" />
        </branch>
        <branch name="In2(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="688" type="branch" />
            <wire x2="1216" y1="688" y2="688" x1="1088" />
        </branch>
        <branch name="In1(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="784" type="branch" />
            <wire x2="1216" y1="784" y2="784" x1="1088" />
        </branch>
        <branch name="In2(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="848" type="branch" />
            <wire x2="1216" y1="848" y2="848" x1="1088" />
        </branch>
        <branch name="In1(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="960" type="branch" />
            <wire x2="1216" y1="960" y2="960" x1="1088" />
        </branch>
        <branch name="In2(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1024" type="branch" />
            <wire x2="1216" y1="1024" y2="1024" x1="1088" />
        </branch>
        <branch name="In1(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1136" type="branch" />
            <wire x2="1216" y1="1136" y2="1136" x1="1088" />
        </branch>
        <branch name="In2(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1200" type="branch" />
            <wire x2="1216" y1="1200" y2="1200" x1="1088" />
        </branch>
        <branch name="In1(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1296" type="branch" />
            <wire x2="1216" y1="1296" y2="1296" x1="1088" />
        </branch>
        <branch name="In2(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1360" type="branch" />
            <wire x2="1216" y1="1360" y2="1360" x1="1088" />
        </branch>
        <branch name="In1(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1472" type="branch" />
            <wire x2="1216" y1="1472" y2="1472" x1="1088" />
        </branch>
        <branch name="In2(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1536" type="branch" />
            <wire x2="1216" y1="1536" y2="1536" x1="1088" />
        </branch>
        <branch name="In1(7:0)">
            <wire x2="640" y1="192" y2="192" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="192" name="In1(7:0)" orien="R180" />
        <branch name="In2(7:0)">
            <wire x2="640" y1="304" y2="304" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="304" name="In2(7:0)" orien="R180" />
        <branch name="OutX(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="336" type="branch" />
            <wire x2="1568" y1="336" y2="336" x1="1472" />
        </branch>
        <branch name="OutX(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="496" type="branch" />
            <wire x2="1568" y1="496" y2="496" x1="1472" />
        </branch>
        <branch name="OutX(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="656" type="branch" />
            <wire x2="1584" y1="656" y2="656" x1="1472" />
        </branch>
        <branch name="OutX(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="816" type="branch" />
            <wire x2="1584" y1="816" y2="816" x1="1472" />
        </branch>
        <branch name="OutX(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="992" type="branch" />
            <wire x2="1584" y1="992" y2="992" x1="1472" />
        </branch>
        <branch name="OutX(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1168" type="branch" />
            <wire x2="1584" y1="1168" y2="1168" x1="1472" />
        </branch>
        <branch name="OutX(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1328" type="branch" />
            <wire x2="1600" y1="1328" y2="1328" x1="1472" />
        </branch>
        <branch name="OutX(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1504" type="branch" />
            <wire x2="1584" y1="1504" y2="1504" x1="1472" />
        </branch>
        <branch name="OutX(7:0)">
            <wire x2="2256" y1="224" y2="224" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2256" y="224" name="OutX(7:0)" orien="R0" />
    </sheet>
</drawing>