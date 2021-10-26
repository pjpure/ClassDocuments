<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="In0(3:0)" />
        <signal name="In0(0)" />
        <signal name="In0(1)" />
        <signal name="In0(2)" />
        <signal name="In0(3)" />
        <signal name="In1(3:0)" />
        <signal name="In1(0)" />
        <signal name="In1(1)" />
        <signal name="In1(2)" />
        <signal name="In1(3)" />
        <signal name="In3" />
        <signal name="XLXN_19" />
        <signal name="XLXN_22" />
        <signal name="Clock" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="S(3:0)" />
        <signal name="S(3)" />
        <signal name="S(2)" />
        <signal name="S(1)" />
        <signal name="S(0)" />
        <port polarity="Input" name="In0(3:0)" />
        <port polarity="Input" name="In1(3:0)" />
        <port polarity="Input" name="In3" />
        <port polarity="Input" name="Clock" />
        <port polarity="Output" name="S(3:0)" />
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
        <block symbolname="m4_1e" name="XLXI_1">
            <blockpin signalname="In0(0)" name="D0" />
            <blockpin signalname="In1(0)" name="D1" />
            <blockpin signalname="In3" name="D2" />
            <blockpin signalname="XLXN_44" name="D3" />
            <blockpin signalname="XLXN_26" name="E" />
            <blockpin signalname="XLXN_43" name="S0" />
            <blockpin signalname="XLXN_42" name="S1" />
            <blockpin signalname="S(0)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_2">
            <blockpin signalname="In0(1)" name="D0" />
            <blockpin signalname="In1(1)" name="D1" />
            <blockpin signalname="XLXN_45" name="D2" />
            <blockpin signalname="XLXN_30" name="D3" />
            <blockpin signalname="XLXN_27" name="E" />
            <blockpin signalname="XLXN_43" name="S0" />
            <blockpin signalname="XLXN_42" name="S1" />
            <blockpin signalname="S(1)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_3">
            <blockpin signalname="In0(2)" name="D0" />
            <blockpin signalname="In1(2)" name="D1" />
            <blockpin signalname="XLXN_46" name="D2" />
            <blockpin signalname="XLXN_29" name="D3" />
            <blockpin signalname="XLXN_25" name="E" />
            <blockpin signalname="XLXN_43" name="S0" />
            <blockpin signalname="XLXN_42" name="S1" />
            <blockpin signalname="S(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_4">
            <blockpin signalname="In0(3)" name="D0" />
            <blockpin signalname="In1(3)" name="D1" />
            <blockpin signalname="XLXN_47" name="D2" />
            <blockpin signalname="XLXN_28" name="D3" />
            <blockpin signalname="XLXN_24" name="E" />
            <blockpin signalname="XLXN_43" name="S0" />
            <blockpin signalname="XLXN_42" name="S1" />
            <blockpin signalname="S(3)" name="O" />
        </block>
        <block symbolname="cb2ce" name="XLXI_5">
            <blockpin signalname="Clock" name="C" />
            <blockpin signalname="XLXN_22" name="CE" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_43" name="Q0" />
            <blockpin signalname="XLXN_42" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_19" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="XLXN_22" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="XLXN_24" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_25" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="XLXN_26" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="XLXN_27" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_18">
            <blockpin signalname="XLXN_45" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_19">
            <blockpin signalname="XLXN_46" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_20">
            <blockpin signalname="XLXN_47" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_21">
            <blockpin signalname="XLXN_44" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_22">
            <blockpin signalname="XLXN_30" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_23">
            <blockpin signalname="XLXN_29" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_24">
            <blockpin signalname="XLXN_28" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1696" y="800" name="XLXI_1" orien="R0" />
        <instance x="1696" y="1856" name="XLXI_3" orien="R0" />
        <instance x="1712" y="2400" name="XLXI_4" orien="R0" />
        <branch name="In0(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="384" type="branch" />
            <wire x2="1696" y1="384" y2="384" x1="1616" />
        </branch>
        <branch name="In0(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1440" type="branch" />
            <wire x2="1696" y1="1440" y2="1440" x1="1600" />
        </branch>
        <branch name="In0(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="1984" type="branch" />
            <wire x2="1712" y1="1984" y2="1984" x1="1616" />
        </branch>
        <branch name="In1(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="448" type="branch" />
            <wire x2="1696" y1="448" y2="448" x1="1616" />
        </branch>
        <branch name="In1(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1504" type="branch" />
            <wire x2="1696" y1="1504" y2="1504" x1="1584" />
        </branch>
        <branch name="In1(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="2048" type="branch" />
            <wire x2="1712" y1="2048" y2="2048" x1="1584" />
        </branch>
        <instance x="448" y="2560" name="XLXI_5" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="448" y1="2528" y2="2560" x1="448" />
        </branch>
        <instance x="384" y="2688" name="XLXI_6" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="448" y1="2368" y2="2368" x1="416" />
        </branch>
        <instance x="416" y="2432" name="XLXI_8" orien="R270" />
        <branch name="Clock">
            <wire x2="448" y1="2432" y2="2432" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="2432" name="Clock" orien="R180" />
        <branch name="XLXN_24">
            <wire x2="1712" y1="2368" y2="2368" x1="1680" />
        </branch>
        <instance x="1680" y="2432" name="XLXI_10" orien="R270" />
        <branch name="XLXN_25">
            <wire x2="1696" y1="1824" y2="1824" x1="1664" />
        </branch>
        <instance x="1664" y="1888" name="XLXI_11" orien="R270" />
        <branch name="XLXN_26">
            <wire x2="1696" y1="768" y2="768" x1="1664" />
        </branch>
        <instance x="1664" y="832" name="XLXI_12" orien="R270" />
        <instance x="1664" y="1360" name="XLXI_13" orien="R270" />
        <branch name="XLXN_28">
            <wire x2="1712" y1="2176" y2="2176" x1="1680" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1696" y1="1632" y2="1632" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="720" y="480" name="In0(3:0)" orien="R180" />
        <branch name="In0(3:0)">
            <wire x2="944" y1="480" y2="480" x1="720" />
        </branch>
        <iomarker fontsize="28" x="704" y="640" name="In1(3:0)" orien="R180" />
        <branch name="In1(3:0)">
            <wire x2="912" y1="640" y2="640" x1="704" />
        </branch>
        <iomarker fontsize="28" x="656" y="800" name="In3" orien="R180" />
        <branch name="In3">
            <wire x2="912" y1="800" y2="800" x1="656" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1328" y1="2304" y2="2304" x1="832" />
            <wire x2="1712" y1="2304" y2="2304" x1="1328" />
            <wire x2="1696" y1="704" y2="704" x1="1328" />
            <wire x2="1328" y1="704" y2="1232" x1="1328" />
            <wire x2="1328" y1="1232" y2="1248" x1="1328" />
            <wire x2="1328" y1="1248" y2="1760" x1="1328" />
            <wire x2="1696" y1="1760" y2="1760" x1="1328" />
            <wire x2="1328" y1="1760" y2="2304" x1="1328" />
            <wire x2="1696" y1="1232" y2="1232" x1="1328" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1232" y1="2240" y2="2240" x1="832" />
            <wire x2="1712" y1="2240" y2="2240" x1="1232" />
            <wire x2="1696" y1="640" y2="640" x1="1232" />
            <wire x2="1232" y1="640" y2="1168" x1="1232" />
            <wire x2="1232" y1="1168" y2="1184" x1="1232" />
            <wire x2="1232" y1="1184" y2="1696" x1="1232" />
            <wire x2="1696" y1="1696" y2="1696" x1="1232" />
            <wire x2="1232" y1="1696" y2="2240" x1="1232" />
            <wire x2="1696" y1="1168" y2="1168" x1="1232" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1696" y1="576" y2="576" x1="1664" />
        </branch>
        <branch name="In3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="512" type="branch" />
            <wire x2="1696" y1="512" y2="512" x1="1600" />
        </branch>
        <instance x="1536" y="976" name="XLXI_18" orien="R90" />
        <branch name="XLXN_46">
            <wire x2="1696" y1="1568" y2="1568" x1="1664" />
        </branch>
        <instance x="1536" y="1504" name="XLXI_19" orien="R90" />
        <branch name="XLXN_47">
            <wire x2="1712" y1="2112" y2="2112" x1="1680" />
        </branch>
        <instance x="1552" y="2048" name="XLXI_20" orien="R90" />
        <branch name="S(3:0)">
            <wire x2="2592" y1="432" y2="432" x1="2448" />
        </branch>
        <iomarker fontsize="28" x="2592" y="432" name="S(3:0)" orien="R0" />
        <branch name="S(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="2080" type="branch" />
            <wire x2="2128" y1="2080" y2="2080" x1="2032" />
        </branch>
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1536" type="branch" />
            <wire x2="2112" y1="1536" y2="1536" x1="2016" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="1008" type="branch" />
            <wire x2="2112" y1="1008" y2="1008" x1="2016" />
            <wire x2="2128" y1="1008" y2="1008" x1="2112" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="480" type="branch" />
            <wire x2="2128" y1="480" y2="480" x1="2016" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1680" y1="1296" y2="1296" x1="1664" />
            <wire x2="1696" y1="1296" y2="1296" x1="1680" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1680" y1="1104" y2="1104" x1="1664" />
            <wire x2="1696" y1="1104" y2="1104" x1="1680" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1680" y1="1040" y2="1040" x1="1664" />
            <wire x2="1696" y1="1040" y2="1040" x1="1680" />
        </branch>
        <branch name="In1(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="976" type="branch" />
            <wire x2="1648" y1="976" y2="976" x1="1632" />
            <wire x2="1696" y1="976" y2="976" x1="1648" />
        </branch>
        <branch name="In0(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="912" type="branch" />
            <wire x2="1664" y1="912" y2="912" x1="1648" />
            <wire x2="1696" y1="912" y2="912" x1="1664" />
        </branch>
        <instance x="1696" y="1328" name="XLXI_2" orien="R0" />
        <instance x="1664" y="640" name="XLXI_21" orien="R270" />
        <instance x="1664" y="1168" name="XLXI_22" orien="R270" />
        <instance x="1664" y="1696" name="XLXI_23" orien="R270" />
        <instance x="1680" y="2240" name="XLXI_24" orien="R270" />
    </sheet>
</drawing>