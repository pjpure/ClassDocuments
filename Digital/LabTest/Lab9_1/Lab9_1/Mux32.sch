<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="iXor(7:0)" />
        <signal name="iShift(7:0)" />
        <signal name="iSub(7:0)" />
        <signal name="iAdd(7:0)" />
        <signal name="iAdd(0)" />
        <signal name="iSub(0)" />
        <signal name="iXor(0)" />
        <signal name="iShift(0)" />
        <signal name="OutM(0)" />
        <signal name="iSub(1)" />
        <signal name="iXor(1)" />
        <signal name="iShift(1)" />
        <signal name="OutM(1)" />
        <signal name="iSub(2)" />
        <signal name="iXor(2)" />
        <signal name="iShift(2)" />
        <signal name="OutM(2)" />
        <signal name="iSub(3)" />
        <signal name="iXor(3)" />
        <signal name="iShift(3)" />
        <signal name="OutM(3)" />
        <signal name="iAdd(4)" />
        <signal name="iSub(4)" />
        <signal name="iXor(4)" />
        <signal name="iShift(4)" />
        <signal name="OutM(4)" />
        <signal name="iAdd(5)" />
        <signal name="iSub(5)" />
        <signal name="iXor(5)" />
        <signal name="iShift(5)" />
        <signal name="OutM(5)" />
        <signal name="iAdd(6)" />
        <signal name="iSub(6)" />
        <signal name="iXor(6)" />
        <signal name="iShift(6)" />
        <signal name="OutM(6)" />
        <signal name="iAdd(7)" />
        <signal name="iSub(7)" />
        <signal name="iXor(7)" />
        <signal name="iShift(7)" />
        <signal name="OutM(7)" />
        <signal name="iAdd(3)" />
        <signal name="iAdd(2)" />
        <signal name="iAdd(1)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_22" />
        <signal name="PB" />
        <signal name="XLXN_80" />
        <signal name="XLXN_88" />
        <signal name="XLXN_90" />
        <signal name="OutM(7:0)" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101" />
        <signal name="MN7" />
        <signal name="MN6" />
        <signal name="XLXN_104" />
        <signal name="MN5" />
        <signal name="XLXN_106" />
        <signal name="MN4" />
        <port polarity="Input" name="iXor(7:0)" />
        <port polarity="Input" name="iShift(7:0)" />
        <port polarity="Input" name="iSub(7:0)" />
        <port polarity="Input" name="iAdd(7:0)" />
        <port polarity="Input" name="PB" />
        <port polarity="Output" name="OutM(7:0)" />
        <port polarity="Output" name="MN7" />
        <port polarity="Output" name="MN6" />
        <port polarity="Output" name="MN5" />
        <port polarity="Output" name="MN4" />
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="m4_1e" name="XLXI_6">
            <blockpin signalname="iAdd(0)" name="D0" />
            <blockpin signalname="iSub(0)" name="D1" />
            <blockpin signalname="iXor(0)" name="D2" />
            <blockpin signalname="iShift(0)" name="D3" />
            <blockpin signalname="XLXN_90" name="E" />
            <blockpin signalname="XLXN_98" name="S0" />
            <blockpin signalname="XLXN_99" name="S1" />
            <blockpin signalname="OutM(0)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_22">
            <blockpin signalname="iAdd(1)" name="D0" />
            <blockpin signalname="iSub(1)" name="D1" />
            <blockpin signalname="iXor(1)" name="D2" />
            <blockpin signalname="iShift(1)" name="D3" />
            <blockpin signalname="XLXN_90" name="E" />
            <blockpin signalname="XLXN_98" name="S0" />
            <blockpin signalname="XLXN_99" name="S1" />
            <blockpin signalname="OutM(1)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_23">
            <blockpin signalname="iAdd(2)" name="D0" />
            <blockpin signalname="iSub(2)" name="D1" />
            <blockpin signalname="iXor(2)" name="D2" />
            <blockpin signalname="iShift(2)" name="D3" />
            <blockpin signalname="XLXN_90" name="E" />
            <blockpin signalname="XLXN_98" name="S0" />
            <blockpin signalname="XLXN_99" name="S1" />
            <blockpin signalname="OutM(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_24">
            <blockpin signalname="iAdd(3)" name="D0" />
            <blockpin signalname="iSub(3)" name="D1" />
            <blockpin signalname="iXor(3)" name="D2" />
            <blockpin signalname="iShift(3)" name="D3" />
            <blockpin signalname="XLXN_90" name="E" />
            <blockpin signalname="XLXN_98" name="S0" />
            <blockpin signalname="XLXN_99" name="S1" />
            <blockpin signalname="OutM(3)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_25">
            <blockpin signalname="iAdd(4)" name="D0" />
            <blockpin signalname="iSub(4)" name="D1" />
            <blockpin signalname="iXor(4)" name="D2" />
            <blockpin signalname="iShift(4)" name="D3" />
            <blockpin signalname="XLXN_90" name="E" />
            <blockpin signalname="XLXN_98" name="S0" />
            <blockpin signalname="XLXN_99" name="S1" />
            <blockpin signalname="OutM(4)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_26">
            <blockpin signalname="iAdd(5)" name="D0" />
            <blockpin signalname="iSub(5)" name="D1" />
            <blockpin signalname="iXor(5)" name="D2" />
            <blockpin signalname="iShift(5)" name="D3" />
            <blockpin signalname="XLXN_90" name="E" />
            <blockpin signalname="XLXN_98" name="S0" />
            <blockpin signalname="XLXN_99" name="S1" />
            <blockpin signalname="OutM(5)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_27">
            <blockpin signalname="iAdd(6)" name="D0" />
            <blockpin signalname="iSub(6)" name="D1" />
            <blockpin signalname="iXor(6)" name="D2" />
            <blockpin signalname="iShift(6)" name="D3" />
            <blockpin signalname="XLXN_90" name="E" />
            <blockpin signalname="XLXN_98" name="S0" />
            <blockpin signalname="XLXN_99" name="S1" />
            <blockpin signalname="OutM(6)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_28">
            <blockpin signalname="iAdd(7)" name="D0" />
            <blockpin signalname="iSub(7)" name="D1" />
            <blockpin signalname="iXor(7)" name="D2" />
            <blockpin signalname="iShift(7)" name="D3" />
            <blockpin signalname="XLXN_90" name="E" />
            <blockpin signalname="XLXN_98" name="S0" />
            <blockpin signalname="XLXN_99" name="S1" />
            <blockpin signalname="OutM(7)" name="O" />
        </block>
        <block symbolname="cb2ce" name="XLXI_5">
            <blockpin signalname="PB" name="C" />
            <blockpin signalname="XLXN_22" name="CE" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_98" name="Q0" />
            <blockpin signalname="XLXN_99" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="gnd" name="XLXI_30">
            <blockpin signalname="XLXN_19" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="XLXN_22" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_32">
            <blockpin signalname="XLXN_90" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_33">
            <blockpin signalname="XLXN_98" name="I" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_34">
            <blockpin signalname="XLXN_99" name="I" />
            <blockpin signalname="XLXN_101" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_35">
            <blockpin signalname="XLXN_101" name="I0" />
            <blockpin signalname="XLXN_100" name="I1" />
            <blockpin signalname="MN7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_36">
            <blockpin signalname="XLXN_99" name="I0" />
            <blockpin signalname="XLXN_100" name="I1" />
            <blockpin signalname="MN6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_37">
            <blockpin signalname="XLXN_101" name="I0" />
            <blockpin signalname="XLXN_98" name="I1" />
            <blockpin signalname="MN5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_38">
            <blockpin signalname="XLXN_99" name="I0" />
            <blockpin signalname="XLXN_98" name="I1" />
            <blockpin signalname="MN4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="iXor(7:0)">
            <wire x2="592" y1="336" y2="336" x1="288" />
        </branch>
        <branch name="iShift(7:0)">
            <wire x2="592" y1="448" y2="448" x1="288" />
        </branch>
        <branch name="iSub(7:0)">
            <wire x2="592" y1="240" y2="240" x1="288" />
        </branch>
        <branch name="iAdd(7:0)">
            <wire x2="592" y1="160" y2="160" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="160" name="iAdd(7:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="240" name="iSub(7:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="336" name="iXor(7:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="448" name="iShift(7:0)" orien="R180" />
        <instance x="1376" y="560" name="XLXI_6" orien="R0" />
        <branch name="iAdd(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="144" type="branch" />
            <wire x2="1376" y1="144" y2="144" x1="1312" />
        </branch>
        <branch name="iSub(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="208" type="branch" />
            <wire x2="1376" y1="208" y2="208" x1="1312" />
        </branch>
        <branch name="iXor(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="272" type="branch" />
            <wire x2="1376" y1="272" y2="272" x1="1312" />
        </branch>
        <branch name="iShift(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="336" type="branch" />
            <wire x2="1376" y1="336" y2="336" x1="1312" />
        </branch>
        <branch name="OutM(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="240" type="branch" />
            <wire x2="1776" y1="240" y2="240" x1="1696" />
            <wire x2="1824" y1="240" y2="240" x1="1776" />
        </branch>
        <instance x="1392" y="1120" name="XLXI_22" orien="R0" />
        <branch name="iAdd(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="704" type="branch" />
            <wire x2="1392" y1="704" y2="704" x1="1328" />
        </branch>
        <branch name="iSub(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="768" type="branch" />
            <wire x2="1392" y1="768" y2="768" x1="1328" />
        </branch>
        <branch name="iXor(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="832" type="branch" />
            <wire x2="1392" y1="832" y2="832" x1="1328" />
        </branch>
        <branch name="iShift(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="896" type="branch" />
            <wire x2="1392" y1="896" y2="896" x1="1328" />
        </branch>
        <branch name="OutM(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="800" type="branch" />
            <wire x2="1792" y1="800" y2="800" x1="1712" />
            <wire x2="1840" y1="800" y2="800" x1="1792" />
        </branch>
        <instance x="1408" y="1696" name="XLXI_23" orien="R0" />
        <branch name="iAdd(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1280" type="branch" />
            <wire x2="1408" y1="1280" y2="1280" x1="1344" />
        </branch>
        <branch name="iSub(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1344" type="branch" />
            <wire x2="1408" y1="1344" y2="1344" x1="1344" />
        </branch>
        <branch name="iXor(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1408" type="branch" />
            <wire x2="1408" y1="1408" y2="1408" x1="1344" />
        </branch>
        <branch name="iShift(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1472" type="branch" />
            <wire x2="1408" y1="1472" y2="1472" x1="1344" />
        </branch>
        <branch name="OutM(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1376" type="branch" />
            <wire x2="1824" y1="1376" y2="1376" x1="1728" />
            <wire x2="1856" y1="1376" y2="1376" x1="1824" />
        </branch>
        <instance x="1424" y="2272" name="XLXI_24" orien="R0" />
        <branch name="iAdd(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1856" type="branch" />
            <wire x2="1424" y1="1856" y2="1856" x1="1360" />
        </branch>
        <branch name="iSub(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1920" type="branch" />
            <wire x2="1424" y1="1920" y2="1920" x1="1360" />
        </branch>
        <branch name="iXor(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1984" type="branch" />
            <wire x2="1424" y1="1984" y2="1984" x1="1360" />
        </branch>
        <branch name="iShift(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="2048" type="branch" />
            <wire x2="1424" y1="2048" y2="2048" x1="1360" />
        </branch>
        <branch name="OutM(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1952" type="branch" />
            <wire x2="1840" y1="1952" y2="1952" x1="1744" />
            <wire x2="1872" y1="1952" y2="1952" x1="1840" />
        </branch>
        <instance x="1440" y="2880" name="XLXI_25" orien="R0" />
        <branch name="iAdd(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="2464" type="branch" />
            <wire x2="1440" y1="2464" y2="2464" x1="1376" />
        </branch>
        <branch name="iSub(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="2528" type="branch" />
            <wire x2="1440" y1="2528" y2="2528" x1="1376" />
        </branch>
        <branch name="iXor(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="2592" type="branch" />
            <wire x2="1440" y1="2592" y2="2592" x1="1376" />
        </branch>
        <branch name="iShift(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="2656" type="branch" />
            <wire x2="1440" y1="2656" y2="2656" x1="1376" />
        </branch>
        <branch name="OutM(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="2560" type="branch" />
            <wire x2="1840" y1="2560" y2="2560" x1="1760" />
            <wire x2="1888" y1="2560" y2="2560" x1="1840" />
        </branch>
        <instance x="1440" y="3472" name="XLXI_26" orien="R0" />
        <branch name="iAdd(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="3056" type="branch" />
            <wire x2="1440" y1="3056" y2="3056" x1="1376" />
        </branch>
        <branch name="iSub(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="3120" type="branch" />
            <wire x2="1440" y1="3120" y2="3120" x1="1376" />
        </branch>
        <branch name="iXor(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="3184" type="branch" />
            <wire x2="1440" y1="3184" y2="3184" x1="1376" />
        </branch>
        <branch name="iShift(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="3248" type="branch" />
            <wire x2="1440" y1="3248" y2="3248" x1="1376" />
        </branch>
        <branch name="OutM(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="3152" type="branch" />
            <wire x2="1856" y1="3152" y2="3152" x1="1760" />
            <wire x2="1888" y1="3152" y2="3152" x1="1856" />
        </branch>
        <instance x="1472" y="4048" name="XLXI_27" orien="R0" />
        <branch name="iAdd(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="3632" type="branch" />
            <wire x2="1472" y1="3632" y2="3632" x1="1408" />
        </branch>
        <branch name="iSub(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="3696" type="branch" />
            <wire x2="1472" y1="3696" y2="3696" x1="1408" />
        </branch>
        <branch name="iXor(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="3760" type="branch" />
            <wire x2="1472" y1="3760" y2="3760" x1="1408" />
        </branch>
        <branch name="iShift(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="3824" type="branch" />
            <wire x2="1472" y1="3824" y2="3824" x1="1408" />
        </branch>
        <branch name="OutM(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="3728" type="branch" />
            <wire x2="1888" y1="3728" y2="3728" x1="1792" />
            <wire x2="1920" y1="3728" y2="3728" x1="1888" />
        </branch>
        <instance x="1504" y="4656" name="XLXI_28" orien="R0" />
        <branch name="iAdd(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="4240" type="branch" />
            <wire x2="1504" y1="4240" y2="4240" x1="1440" />
        </branch>
        <branch name="iSub(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="4304" type="branch" />
            <wire x2="1504" y1="4304" y2="4304" x1="1440" />
        </branch>
        <branch name="iXor(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="4368" type="branch" />
            <wire x2="1504" y1="4368" y2="4368" x1="1440" />
        </branch>
        <branch name="iShift(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="4432" type="branch" />
            <wire x2="1504" y1="4432" y2="4432" x1="1440" />
        </branch>
        <branch name="OutM(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="4336" type="branch" />
            <wire x2="1920" y1="4336" y2="4336" x1="1824" />
            <wire x2="1952" y1="4336" y2="4336" x1="1920" />
        </branch>
        <instance x="528" y="5136" name="XLXI_5" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="528" y1="5104" y2="5120" x1="528" />
            <wire x2="528" y1="5120" y2="5136" x1="528" />
        </branch>
        <instance x="464" y="5264" name="XLXI_30" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="512" y1="4944" y2="4944" x1="496" />
            <wire x2="528" y1="4944" y2="4944" x1="512" />
        </branch>
        <instance x="496" y="5008" name="XLXI_8" orien="R270" />
        <branch name="PB">
            <wire x2="384" y1="5008" y2="5008" x1="368" />
            <wire x2="528" y1="5008" y2="5008" x1="384" />
        </branch>
        <iomarker fontsize="28" x="368" y="5008" name="PB" orien="R180" />
        <instance x="960" y="528" name="XLXI_32" orien="R0" />
        <branch name="XLXN_90">
            <wire x2="1024" y1="528" y2="544" x1="1024" />
            <wire x2="1376" y1="544" y2="544" x1="1024" />
            <wire x2="1024" y1="544" y2="1088" x1="1024" />
            <wire x2="1392" y1="1088" y2="1088" x1="1024" />
            <wire x2="1024" y1="1088" y2="1664" x1="1024" />
            <wire x2="1408" y1="1664" y2="1664" x1="1024" />
            <wire x2="1024" y1="1664" y2="2240" x1="1024" />
            <wire x2="1424" y1="2240" y2="2240" x1="1024" />
            <wire x2="1024" y1="2240" y2="2848" x1="1024" />
            <wire x2="1440" y1="2848" y2="2848" x1="1024" />
            <wire x2="1024" y1="2848" y2="3440" x1="1024" />
            <wire x2="1440" y1="3440" y2="3440" x1="1024" />
            <wire x2="1024" y1="3440" y2="4016" x1="1024" />
            <wire x2="1472" y1="4016" y2="4016" x1="1024" />
            <wire x2="1024" y1="4016" y2="4624" x1="1024" />
            <wire x2="1504" y1="4624" y2="4624" x1="1024" />
            <wire x2="1376" y1="528" y2="544" x1="1376" />
        </branch>
        <branch name="OutM(7:0)">
            <wire x2="2624" y1="448" y2="448" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2624" y="448" name="OutM(7:0)" orien="R0" />
        <branch name="XLXN_98">
            <wire x2="1200" y1="4816" y2="4816" x1="912" />
            <wire x2="1744" y1="4816" y2="4816" x1="1200" />
            <wire x2="1856" y1="4816" y2="4816" x1="1744" />
            <wire x2="1376" y1="400" y2="400" x1="1200" />
            <wire x2="1200" y1="400" y2="960" x1="1200" />
            <wire x2="1392" y1="960" y2="960" x1="1200" />
            <wire x2="1200" y1="960" y2="1536" x1="1200" />
            <wire x2="1408" y1="1536" y2="1536" x1="1200" />
            <wire x2="1200" y1="1536" y2="2112" x1="1200" />
            <wire x2="1424" y1="2112" y2="2112" x1="1200" />
            <wire x2="1200" y1="2112" y2="2720" x1="1200" />
            <wire x2="1440" y1="2720" y2="2720" x1="1200" />
            <wire x2="1200" y1="2720" y2="3312" x1="1200" />
            <wire x2="1440" y1="3312" y2="3312" x1="1200" />
            <wire x2="1200" y1="3312" y2="3888" x1="1200" />
            <wire x2="1472" y1="3888" y2="3888" x1="1200" />
            <wire x2="1200" y1="3888" y2="4496" x1="1200" />
            <wire x2="1200" y1="4496" y2="4816" x1="1200" />
            <wire x2="1504" y1="4496" y2="4496" x1="1200" />
            <wire x2="1856" y1="4704" y2="4704" x1="1744" />
            <wire x2="2112" y1="4704" y2="4704" x1="1856" />
            <wire x2="2112" y1="4704" y2="4992" x1="2112" />
            <wire x2="2352" y1="4992" y2="4992" x1="2112" />
            <wire x2="2192" y1="4704" y2="4704" x1="2112" />
            <wire x2="2192" y1="4704" y2="5184" x1="2192" />
            <wire x2="2352" y1="5184" y2="5184" x1="2192" />
            <wire x2="1744" y1="4704" y2="4816" x1="1744" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="1216" y1="4880" y2="4880" x1="912" />
            <wire x2="1744" y1="4880" y2="4880" x1="1216" />
            <wire x2="1856" y1="4880" y2="4880" x1="1744" />
            <wire x2="2096" y1="4880" y2="4880" x1="1856" />
            <wire x2="2096" y1="4880" y2="5248" x1="2096" />
            <wire x2="2352" y1="5248" y2="5248" x1="2096" />
            <wire x2="1744" y1="4880" y2="5024" x1="1744" />
            <wire x2="1840" y1="5024" y2="5024" x1="1744" />
            <wire x2="1376" y1="464" y2="464" x1="1216" />
            <wire x2="1216" y1="464" y2="1024" x1="1216" />
            <wire x2="1392" y1="1024" y2="1024" x1="1216" />
            <wire x2="1216" y1="1024" y2="1600" x1="1216" />
            <wire x2="1408" y1="1600" y2="1600" x1="1216" />
            <wire x2="1216" y1="1600" y2="2176" x1="1216" />
            <wire x2="1424" y1="2176" y2="2176" x1="1216" />
            <wire x2="1216" y1="2176" y2="2784" x1="1216" />
            <wire x2="1440" y1="2784" y2="2784" x1="1216" />
            <wire x2="1216" y1="2784" y2="3376" x1="1216" />
            <wire x2="1440" y1="3376" y2="3376" x1="1216" />
            <wire x2="1216" y1="3376" y2="3952" x1="1216" />
            <wire x2="1472" y1="3952" y2="3952" x1="1216" />
            <wire x2="1216" y1="3952" y2="4560" x1="1216" />
            <wire x2="1216" y1="4560" y2="4880" x1="1216" />
            <wire x2="1504" y1="4560" y2="4560" x1="1216" />
            <wire x2="2096" y1="4848" y2="4880" x1="2096" />
            <wire x2="2352" y1="4848" y2="4848" x1="2096" />
        </branch>
        <instance x="1856" y="4848" name="XLXI_33" orien="R0" />
        <instance x="1840" y="5056" name="XLXI_34" orien="R0" />
        <instance x="2352" y="4704" name="XLXI_35" orien="R0" />
        <branch name="XLXN_100">
            <wire x2="2208" y1="4816" y2="4816" x1="2080" />
            <wire x2="2272" y1="4816" y2="4816" x1="2208" />
            <wire x2="2208" y1="4576" y2="4816" x1="2208" />
            <wire x2="2352" y1="4576" y2="4576" x1="2208" />
            <wire x2="2272" y1="4784" y2="4816" x1="2272" />
            <wire x2="2352" y1="4784" y2="4784" x1="2272" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="2224" y1="5024" y2="5024" x1="2064" />
            <wire x2="2224" y1="5024" y2="5056" x1="2224" />
            <wire x2="2352" y1="5056" y2="5056" x1="2224" />
            <wire x2="2224" y1="4640" y2="5024" x1="2224" />
            <wire x2="2352" y1="4640" y2="4640" x1="2224" />
        </branch>
        <branch name="MN7">
            <wire x2="2640" y1="4608" y2="4608" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="4608" name="MN7" orien="R0" />
        <instance x="2352" y="4912" name="XLXI_36" orien="R0" />
        <branch name="MN6">
            <wire x2="2640" y1="4816" y2="4816" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="4816" name="MN6" orien="R0" />
        <instance x="2352" y="5120" name="XLXI_37" orien="R0" />
        <branch name="MN5">
            <wire x2="2640" y1="5024" y2="5024" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="5024" name="MN5" orien="R0" />
        <instance x="2352" y="5312" name="XLXI_38" orien="R0" />
        <branch name="MN4">
            <wire x2="2640" y1="5216" y2="5216" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="5216" name="MN4" orien="R0" />
    </sheet>
</drawing>