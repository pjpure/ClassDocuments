<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OutS(7:0)" />
        <signal name="OutS(0)" />
        <signal name="In1(7:0)" />
        <signal name="In1(0)" />
        <signal name="OutS(6)" />
        <signal name="OutS(5)" />
        <signal name="OutS(4)" />
        <signal name="OutS(3)" />
        <signal name="OutS(2)" />
        <signal name="OutS(1)" />
        <signal name="OutS(7)" />
        <signal name="In1(2)" />
        <signal name="In1(3)" />
        <signal name="In1(1)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="In1(6)" />
        <signal name="In1(5)" />
        <signal name="In1(4)" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_47" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <port polarity="Output" name="OutS(7:0)" />
        <port polarity="Input" name="In1(7:0)" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="OutS(0)" name="G" />
        </block>
        <block symbolname="or2" name="XLXI_21">
            <blockpin signalname="XLXN_31" name="I0" />
            <blockpin signalname="In1(0)" name="I1" />
            <blockpin signalname="OutS(1)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_22">
            <blockpin signalname="XLXN_42" name="I0" />
            <blockpin signalname="In1(1)" name="I1" />
            <blockpin signalname="OutS(2)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_23">
            <blockpin signalname="XLXN_43" name="I0" />
            <blockpin signalname="In1(2)" name="I1" />
            <blockpin signalname="OutS(3)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_24">
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="In1(3)" name="I1" />
            <blockpin signalname="OutS(4)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_25">
            <blockpin signalname="XLXN_50" name="I0" />
            <blockpin signalname="In1(4)" name="I1" />
            <blockpin signalname="OutS(5)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_26">
            <blockpin signalname="XLXN_51" name="I0" />
            <blockpin signalname="In1(5)" name="I1" />
            <blockpin signalname="OutS(6)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_27">
            <blockpin signalname="XLXN_52" name="I0" />
            <blockpin signalname="In1(6)" name="I1" />
            <blockpin signalname="OutS(7)" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_28">
            <blockpin signalname="XLXN_31" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_29">
            <blockpin signalname="XLXN_42" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_30">
            <blockpin signalname="XLXN_43" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_31">
            <blockpin signalname="XLXN_44" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_32">
            <blockpin signalname="XLXN_50" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_33">
            <blockpin signalname="XLXN_51" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_34">
            <blockpin signalname="XLXN_52" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="608" y="1008" name="In1(7:0)" orien="R180" />
        <branch name="OutS(7:0)">
            <wire x2="2016" y1="944" y2="944" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="2016" y="944" name="OutS(7:0)" orien="R0" />
        <branch name="OutS(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1584" type="branch" />
            <wire x2="1760" y1="1568" y2="1584" x1="1760" />
            <wire x2="1840" y1="1568" y2="1568" x1="1760" />
            <wire x2="1840" y1="1568" y2="1584" x1="1840" />
            <wire x2="1856" y1="1584" y2="1584" x1="1840" />
        </branch>
        <branch name="In1(7:0)">
            <wire x2="976" y1="1008" y2="1008" x1="608" />
        </branch>
        <branch name="In1(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="976" type="branch" />
            <wire x2="1120" y1="976" y2="976" x1="1088" />
            <wire x2="1248" y1="976" y2="976" x1="1120" />
        </branch>
        <branch name="OutS(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1376" type="branch" />
            <wire x2="1664" y1="2256" y2="2256" x1="1456" />
            <wire x2="1664" y1="1376" y2="2256" x1="1664" />
            <wire x2="1712" y1="1376" y2="1376" x1="1664" />
            <wire x2="1760" y1="1376" y2="1376" x1="1712" />
        </branch>
        <branch name="OutS(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1312" type="branch" />
            <wire x2="1648" y1="2016" y2="2016" x1="1472" />
            <wire x2="1648" y1="1312" y2="2016" x1="1648" />
            <wire x2="1712" y1="1312" y2="1312" x1="1648" />
            <wire x2="1744" y1="1312" y2="1312" x1="1712" />
        </branch>
        <branch name="OutS(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1248" type="branch" />
            <wire x2="1632" y1="1760" y2="1760" x1="1488" />
            <wire x2="1632" y1="1248" y2="1760" x1="1632" />
            <wire x2="1712" y1="1248" y2="1248" x1="1632" />
            <wire x2="1760" y1="1248" y2="1248" x1="1712" />
        </branch>
        <branch name="OutS(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1184" type="branch" />
            <wire x2="1616" y1="1488" y2="1488" x1="1504" />
            <wire x2="1616" y1="1184" y2="1488" x1="1616" />
            <wire x2="1712" y1="1184" y2="1184" x1="1616" />
            <wire x2="1744" y1="1184" y2="1184" x1="1712" />
        </branch>
        <branch name="OutS(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1120" type="branch" />
            <wire x2="1600" y1="1216" y2="1216" x1="1504" />
            <wire x2="1600" y1="1120" y2="1216" x1="1600" />
            <wire x2="1712" y1="1120" y2="1120" x1="1600" />
            <wire x2="1744" y1="1120" y2="1120" x1="1712" />
        </branch>
        <branch name="OutS(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="1056" type="branch" />
            <wire x2="1712" y1="1008" y2="1008" x1="1504" />
            <wire x2="1712" y1="1008" y2="1056" x1="1712" />
            <wire x2="1744" y1="1056" y2="1056" x1="1712" />
        </branch>
        <branch name="OutS(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1440" type="branch" />
            <wire x2="1712" y1="2512" y2="2512" x1="1504" />
            <wire x2="1760" y1="1440" y2="1440" x1="1712" />
            <wire x2="1712" y1="1440" y2="2512" x1="1712" />
        </branch>
        <branch name="In1(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1328" type="branch" />
            <wire x2="1104" y1="1328" y2="1328" x1="1072" />
            <wire x2="1168" y1="1328" y2="1328" x1="1104" />
            <wire x2="1168" y1="1328" y2="1456" x1="1168" />
            <wire x2="1248" y1="1456" y2="1456" x1="1168" />
        </branch>
        <branch name="In1(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1456" type="branch" />
            <wire x2="1120" y1="1456" y2="1456" x1="1072" />
            <wire x2="1120" y1="1456" y2="1728" x1="1120" />
            <wire x2="1232" y1="1728" y2="1728" x1="1120" />
        </branch>
        <branch name="In1(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1184" type="branch" />
            <wire x2="1104" y1="1184" y2="1184" x1="1072" />
            <wire x2="1248" y1="1184" y2="1184" x1="1104" />
        </branch>
        <instance x="1248" y="1104" name="XLXI_21" orien="R0" />
        <instance x="1248" y="1312" name="XLXI_22" orien="R0" />
        <branch name="In1(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1888" type="branch" />
            <wire x2="1152" y1="1888" y2="1888" x1="1088" />
            <wire x2="1152" y1="1888" y2="2480" x1="1152" />
            <wire x2="1248" y1="2480" y2="2480" x1="1152" />
        </branch>
        <branch name="In1(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1744" type="branch" />
            <wire x2="1152" y1="1744" y2="1744" x1="1088" />
            <wire x2="1168" y1="1744" y2="1744" x1="1152" />
            <wire x2="1168" y1="1744" y2="2224" x1="1168" />
            <wire x2="1200" y1="2224" y2="2224" x1="1168" />
        </branch>
        <branch name="In1(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1632" type="branch" />
            <wire x2="1104" y1="1632" y2="1632" x1="1072" />
            <wire x2="1104" y1="1632" y2="1984" x1="1104" />
            <wire x2="1216" y1="1984" y2="1984" x1="1104" />
        </branch>
        <instance x="1696" y="1712" name="XLXI_19" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="1248" y1="1040" y2="1072" x1="1248" />
        </branch>
        <instance x="1184" y="1200" name="XLXI_28" orien="R0" />
        <instance x="1248" y="2608" name="XLXI_27" orien="R0" />
        <branch name="XLXN_42">
            <wire x2="1248" y1="1248" y2="1280" x1="1248" />
        </branch>
        <instance x="1184" y="1408" name="XLXI_29" orien="R0" />
        <instance x="1248" y="1584" name="XLXI_23" orien="R0" />
        <branch name="XLXN_43">
            <wire x2="1248" y1="1520" y2="1520" x1="1232" />
            <wire x2="1232" y1="1520" y2="1552" x1="1232" />
        </branch>
        <instance x="1232" y="1856" name="XLXI_24" orien="R0" />
        <branch name="XLXN_44">
            <wire x2="1232" y1="1792" y2="1792" x1="1216" />
            <wire x2="1216" y1="1792" y2="1808" x1="1216" />
        </branch>
        <instance x="1152" y="1936" name="XLXI_31" orien="R0" />
        <instance x="1168" y="1680" name="XLXI_30" orien="R0" />
        <instance x="1216" y="2112" name="XLXI_25" orien="R0" />
        <instance x="1200" y="2352" name="XLXI_26" orien="R0" />
        <branch name="XLXN_50">
            <wire x2="1216" y1="2048" y2="2080" x1="1216" />
        </branch>
        <instance x="1152" y="2208" name="XLXI_32" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="1200" y1="2288" y2="2320" x1="1200" />
        </branch>
        <instance x="1136" y="2448" name="XLXI_33" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="1248" y1="2544" y2="2576" x1="1248" />
        </branch>
        <instance x="1184" y="2704" name="XLXI_34" orien="R0" />
    </sheet>
</drawing>