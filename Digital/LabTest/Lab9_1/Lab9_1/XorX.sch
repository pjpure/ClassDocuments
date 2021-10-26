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
        <instance x="1632" y="896" name="XLXI_1" orien="R0" />
        <instance x="1632" y="1056" name="XLXI_2" orien="R0" />
        <instance x="1632" y="1216" name="XLXI_3" orien="R0" />
        <instance x="1632" y="1376" name="XLXI_4" orien="R0" />
        <instance x="1632" y="1552" name="XLXI_5" orien="R0" />
        <instance x="1632" y="1728" name="XLXI_6" orien="R0" />
        <instance x="1632" y="1888" name="XLXI_7" orien="R0" />
        <instance x="1632" y="2064" name="XLXI_8" orien="R0" />
        <branch name="In1(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="768" type="branch" />
            <wire x2="1632" y1="768" y2="768" x1="1504" />
        </branch>
        <branch name="In2(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="832" type="branch" />
            <wire x2="1632" y1="832" y2="832" x1="1504" />
        </branch>
        <branch name="In1(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="928" type="branch" />
            <wire x2="1632" y1="928" y2="928" x1="1504" />
        </branch>
        <branch name="In2(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="992" type="branch" />
            <wire x2="1632" y1="992" y2="992" x1="1504" />
        </branch>
        <branch name="In1(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1088" type="branch" />
            <wire x2="1632" y1="1088" y2="1088" x1="1504" />
        </branch>
        <branch name="In2(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1152" type="branch" />
            <wire x2="1632" y1="1152" y2="1152" x1="1504" />
        </branch>
        <branch name="In1(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1248" type="branch" />
            <wire x2="1632" y1="1248" y2="1248" x1="1504" />
        </branch>
        <branch name="In2(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1312" type="branch" />
            <wire x2="1632" y1="1312" y2="1312" x1="1504" />
        </branch>
        <branch name="In1(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1424" type="branch" />
            <wire x2="1632" y1="1424" y2="1424" x1="1504" />
        </branch>
        <branch name="In2(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1488" type="branch" />
            <wire x2="1632" y1="1488" y2="1488" x1="1504" />
        </branch>
        <branch name="In1(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1600" type="branch" />
            <wire x2="1632" y1="1600" y2="1600" x1="1504" />
        </branch>
        <branch name="In2(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1664" type="branch" />
            <wire x2="1632" y1="1664" y2="1664" x1="1504" />
        </branch>
        <branch name="In1(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1760" type="branch" />
            <wire x2="1632" y1="1760" y2="1760" x1="1504" />
        </branch>
        <branch name="In2(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1824" type="branch" />
            <wire x2="1632" y1="1824" y2="1824" x1="1504" />
        </branch>
        <branch name="In1(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1936" type="branch" />
            <wire x2="1632" y1="1936" y2="1936" x1="1504" />
        </branch>
        <branch name="In2(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="2000" type="branch" />
            <wire x2="1632" y1="2000" y2="2000" x1="1504" />
        </branch>
        <branch name="In1(7:0)">
            <wire x2="1056" y1="656" y2="656" x1="832" />
        </branch>
        <branch name="In2(7:0)">
            <wire x2="1056" y1="768" y2="768" x1="832" />
        </branch>
        <branch name="OutX(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="800" type="branch" />
            <wire x2="1984" y1="800" y2="800" x1="1888" />
        </branch>
        <branch name="OutX(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="960" type="branch" />
            <wire x2="1984" y1="960" y2="960" x1="1888" />
        </branch>
        <branch name="OutX(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1120" type="branch" />
            <wire x2="2000" y1="1120" y2="1120" x1="1888" />
        </branch>
        <branch name="OutX(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1280" type="branch" />
            <wire x2="2000" y1="1280" y2="1280" x1="1888" />
        </branch>
        <branch name="OutX(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1456" type="branch" />
            <wire x2="2000" y1="1456" y2="1456" x1="1888" />
        </branch>
        <branch name="OutX(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1632" type="branch" />
            <wire x2="2000" y1="1632" y2="1632" x1="1888" />
        </branch>
        <branch name="OutX(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1792" type="branch" />
            <wire x2="2016" y1="1792" y2="1792" x1="1888" />
        </branch>
        <branch name="OutX(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1968" type="branch" />
            <wire x2="2000" y1="1968" y2="1968" x1="1888" />
        </branch>
        <branch name="OutX(7:0)">
            <wire x2="2672" y1="688" y2="688" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="832" y="656" name="In1(7:0)" orien="R180" />
        <iomarker fontsize="28" x="832" y="768" name="In2(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2672" y="688" name="OutX(7:0)" orien="R0" />
    </sheet>
</drawing>