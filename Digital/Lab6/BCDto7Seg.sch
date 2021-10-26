<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="i" />
        <signal name="XLXN_8" />
        <signal name="k" />
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="D" />
        <signal name="E" />
        <signal name="F" />
        <signal name="G" />
        <signal name="XLXN_52" />
        <signal name="XLXN_55" />
        <signal name="XLXN_59" />
        <signal name="XLXN_62" />
        <signal name="XLXN_65" />
        <signal name="XLXN_70" />
        <signal name="j" />
        <signal name="XLXN_77" />
        <signal name="l" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="I0" />
        <signal name="I1" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="com0" />
        <signal name="com1" />
        <signal name="com2" />
        <signal name="com3" />
        <signal name="XLXN_125" />
        <signal name="XLXN_126" />
        <signal name="XLXN_127" />
        <signal name="XLXN_128" />
        <port polarity="Input" name="i" />
        <port polarity="Input" name="k" />
        <port polarity="Output" name="A" />
        <port polarity="Output" name="B" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="D" />
        <port polarity="Output" name="E" />
        <port polarity="Output" name="F" />
        <port polarity="Output" name="G" />
        <port polarity="Input" name="j" />
        <port polarity="Input" name="l" />
        <port polarity="Input" name="I0" />
        <port polarity="Input" name="I1" />
        <port polarity="Output" name="com0" />
        <port polarity="Output" name="com1" />
        <port polarity="Output" name="com2" />
        <port polarity="Output" name="com3" />
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
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
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
        <blockdef name="inv4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="160" y1="-96" y2="-96" x1="224" />
            <line x2="160" y1="-160" y2="-160" x1="224" />
            <line x2="160" y1="-224" y2="-224" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <circle r="16" cx="144" cy="-32" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <circle r="16" cx="144" cy="-96" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <circle r="16" cx="144" cy="-160" />
            <circle r="16" cx="144" cy="-224" />
        </blockdef>
        <block symbolname="inv" name="nj">
            <blockpin signalname="j" name="I" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="inv" name="nk">
            <blockpin signalname="k" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="nl">
            <blockpin signalname="l" name="I" />
            <blockpin signalname="XLXN_90" name="O" />
        </block>
        <block symbolname="and2" name="jl">
            <blockpin signalname="l" name="I0" />
            <blockpin signalname="j" name="I1" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="and2" name="njnl">
            <blockpin signalname="XLXN_90" name="I0" />
            <blockpin signalname="XLXN_77" name="I1" />
            <blockpin signalname="XLXN_88" name="O" />
        </block>
        <block symbolname="and2" name="nknl">
            <blockpin signalname="XLXN_90" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="and2" name="njk">
            <blockpin signalname="k" name="I0" />
            <blockpin signalname="XLXN_77" name="I1" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="and2" name="knl">
            <blockpin signalname="XLXN_90" name="I0" />
            <blockpin signalname="k" name="I1" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and2" name="jnk">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="j" name="I1" />
            <blockpin signalname="XLXN_89" name="O" />
        </block>
        <block symbolname="and2" name="ink">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="i" name="I1" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="and3" name="jnkl">
            <blockpin signalname="l" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="j" name="I2" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_19">
            <blockpin signalname="XLXN_88" name="I0" />
            <blockpin signalname="XLXN_52" name="I1" />
            <blockpin signalname="k" name="I2" />
            <blockpin signalname="i" name="I3" />
            <blockpin signalname="A" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_21">
            <blockpin signalname="j" name="I0" />
            <blockpin signalname="l" name="I1" />
            <blockpin signalname="XLXN_8" name="I2" />
            <blockpin signalname="C" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_22">
            <blockpin signalname="XLXN_88" name="I0" />
            <blockpin signalname="XLXN_62" name="I1" />
            <blockpin signalname="XLXN_65" name="I2" />
            <blockpin signalname="XLXN_59" name="I3" />
            <blockpin signalname="i" name="I4" />
            <blockpin signalname="D" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_23">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="XLXN_88" name="I1" />
            <blockpin signalname="E" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_24">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="i" name="I1" />
            <blockpin signalname="j" name="I2" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_25">
            <blockpin signalname="XLXN_70" name="I0" />
            <blockpin signalname="XLXN_89" name="I1" />
            <blockpin signalname="XLXN_62" name="I2" />
            <blockpin signalname="XLXN_65" name="I3" />
            <blockpin signalname="G" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_26">
            <blockpin signalname="XLXN_87" name="I0" />
            <blockpin signalname="XLXN_55" name="I1" />
            <blockpin signalname="XLXN_77" name="I2" />
            <blockpin signalname="i" name="I3" />
            <blockpin signalname="B" name="O" />
        </block>
        <block symbolname="and2" name="kl">
            <blockpin signalname="l" name="I0" />
            <blockpin signalname="k" name="I1" />
            <blockpin signalname="XLXN_87" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_36">
            <blockpin signalname="I0" name="I" />
            <blockpin signalname="XLXN_99" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_37">
            <blockpin signalname="I1" name="I" />
            <blockpin signalname="XLXN_100" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_38">
            <blockpin signalname="XLXN_100" name="I0" />
            <blockpin signalname="XLXN_99" name="I1" />
            <blockpin signalname="XLXN_128" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_43">
            <blockpin signalname="XLXN_100" name="I0" />
            <blockpin signalname="I0" name="I1" />
            <blockpin signalname="XLXN_127" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_44">
            <blockpin signalname="I1" name="I0" />
            <blockpin signalname="XLXN_99" name="I1" />
            <blockpin signalname="XLXN_126" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_45">
            <blockpin signalname="I1" name="I0" />
            <blockpin signalname="I0" name="I1" />
            <blockpin signalname="XLXN_125" name="O" />
        </block>
        <block symbolname="inv4" name="XLXI_46">
            <blockpin signalname="XLXN_125" name="I0" />
            <blockpin signalname="XLXN_126" name="I1" />
            <blockpin signalname="XLXN_127" name="I2" />
            <blockpin signalname="XLXN_128" name="I3" />
            <blockpin signalname="com3" name="O0" />
            <blockpin signalname="com2" name="O1" />
            <blockpin signalname="com1" name="O2" />
            <blockpin signalname="com0" name="O3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="320" y="192" name="i" orien="R270" />
        <iomarker fontsize="28" x="448" y="192" name="j" orien="R270" />
        <instance x="512" y="288" name="nj" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="224" y="24" type="instance" />
        </instance>
        <iomarker fontsize="28" x="640" y="192" name="k" orien="R270" />
        <iomarker fontsize="28" x="832" y="192" name="l" orien="R270" />
        <instance x="704" y="288" name="nk" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="224" y="24" type="instance" />
        </instance>
        <instance x="896" y="288" name="nl" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="224" y="24" type="instance" />
        </instance>
        <instance x="1152" y="672" name="jl" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1152" y="848" name="njnl" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1152" y="1024" name="nknl" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1152" y="1552" name="njk" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1152" y="1904" name="jnk" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1152" y="2080" name="ink" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="A">
            <wire x2="2432" y1="368" y2="368" x1="2144" />
        </branch>
        <branch name="B">
            <wire x2="2432" y1="688" y2="688" x1="2112" />
        </branch>
        <branch name="C">
            <wire x2="2432" y1="1008" y2="1008" x1="2112" />
        </branch>
        <branch name="D">
            <wire x2="2432" y1="1328" y2="1328" x1="2128" />
        </branch>
        <branch name="E">
            <wire x2="2432" y1="1648" y2="1648" x1="2112" />
        </branch>
        <branch name="F">
            <wire x2="2432" y1="1968" y2="1968" x1="2112" />
        </branch>
        <branch name="G">
            <wire x2="2448" y1="2288" y2="2288" x1="2128" />
        </branch>
        <instance x="1888" y="528" name="XLXI_19" orien="R0" />
        <instance x="1856" y="1136" name="XLXI_21" orien="R0" />
        <instance x="1872" y="1520" name="XLXI_22" orien="R0" />
        <instance x="1856" y="1744" name="XLXI_23" orien="R0" />
        <instance x="1856" y="2096" name="XLXI_24" orien="R0" />
        <instance x="1872" y="2448" name="XLXI_25" orien="R0" />
        <iomarker fontsize="28" x="2432" y="368" name="A" orien="R0" />
        <iomarker fontsize="28" x="2432" y="688" name="B" orien="R0" />
        <iomarker fontsize="28" x="2432" y="1008" name="C" orien="R0" />
        <iomarker fontsize="28" x="2432" y="1328" name="D" orien="R0" />
        <iomarker fontsize="28" x="2432" y="1648" name="E" orien="R0" />
        <iomarker fontsize="28" x="2432" y="1968" name="F" orien="R0" />
        <iomarker fontsize="28" x="2448" y="2288" name="G" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="1648" y1="576" y2="576" x1="1408" />
            <wire x2="1648" y1="400" y2="576" x1="1648" />
            <wire x2="1888" y1="400" y2="400" x1="1648" />
        </branch>
        <instance x="1856" y="848" name="XLXI_26" orien="R0" />
        <branch name="XLXN_55">
            <wire x2="1680" y1="928" y2="928" x1="1408" />
            <wire x2="1680" y1="928" y2="2032" x1="1680" />
            <wire x2="1856" y1="2032" y2="2032" x1="1680" />
            <wire x2="1680" y1="720" y2="928" x1="1680" />
            <wire x2="1856" y1="720" y2="720" x1="1680" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="1632" y1="2160" y2="2160" x1="1408" />
            <wire x2="1632" y1="1264" y2="2160" x1="1632" />
            <wire x2="1872" y1="1264" y2="1264" x1="1632" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="1616" y1="1456" y2="1456" x1="1408" />
            <wire x2="1616" y1="1456" y2="1488" x1="1616" />
            <wire x2="1616" y1="1488" y2="1488" x1="1584" />
            <wire x2="1584" y1="1488" y2="2256" x1="1584" />
            <wire x2="1872" y1="2256" y2="2256" x1="1584" />
            <wire x2="1872" y1="1392" y2="1392" x1="1616" />
            <wire x2="1616" y1="1392" y2="1456" x1="1616" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="1616" y1="1984" y2="1984" x1="1408" />
            <wire x2="1616" y1="1984" y2="2384" x1="1616" />
            <wire x2="1872" y1="2384" y2="2384" x1="1616" />
        </branch>
        <instance x="1152" y="1248" name="kl" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="XLXN_87">
            <wire x2="1632" y1="1152" y2="1152" x1="1408" />
            <wire x2="1632" y1="784" y2="1152" x1="1632" />
            <wire x2="1856" y1="784" y2="784" x1="1632" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="1632" y1="752" y2="752" x1="1408" />
            <wire x2="1744" y1="752" y2="752" x1="1632" />
            <wire x2="1744" y1="752" y2="1456" x1="1744" />
            <wire x2="1744" y1="1456" y2="1616" x1="1744" />
            <wire x2="1856" y1="1616" y2="1616" x1="1744" />
            <wire x2="1872" y1="1456" y2="1456" x1="1744" />
            <wire x2="1632" y1="464" y2="752" x1="1632" />
            <wire x2="1888" y1="464" y2="464" x1="1632" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="1600" y1="1808" y2="1808" x1="1408" />
            <wire x2="1600" y1="1808" y2="2320" x1="1600" />
            <wire x2="1872" y1="2320" y2="2320" x1="1600" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="1616" y1="1632" y2="1632" x1="1408" />
            <wire x2="1616" y1="1632" y2="1680" x1="1616" />
            <wire x2="1856" y1="1680" y2="1680" x1="1616" />
            <wire x2="1728" y1="1632" y2="1632" x1="1616" />
            <wire x2="1616" y1="1680" y2="1680" x1="1552" />
            <wire x2="1552" y1="1680" y2="2192" x1="1552" />
            <wire x2="1872" y1="2192" y2="2192" x1="1552" />
            <wire x2="1728" y1="1328" y2="1632" x1="1728" />
            <wire x2="1872" y1="1328" y2="1328" x1="1728" />
        </branch>
        <instance x="1152" y="1728" name="knl" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="XLXN_90">
            <wire x2="928" y1="512" y2="784" x1="928" />
            <wire x2="1152" y1="784" y2="784" x1="928" />
            <wire x2="928" y1="784" y2="960" x1="928" />
            <wire x2="1152" y1="960" y2="960" x1="928" />
            <wire x2="928" y1="960" y2="1664" x1="928" />
            <wire x2="1152" y1="1664" y2="1664" x1="928" />
        </branch>
        <branch name="l">
            <wire x2="832" y1="192" y2="224" x1="832" />
            <wire x2="928" y1="224" y2="224" x1="832" />
            <wire x2="928" y1="224" y2="288" x1="928" />
            <wire x2="832" y1="224" y2="608" x1="832" />
            <wire x2="1152" y1="608" y2="608" x1="832" />
            <wire x2="832" y1="608" y2="992" x1="832" />
            <wire x2="1536" y1="992" y2="992" x1="832" />
            <wire x2="1536" y1="992" y2="1008" x1="1536" />
            <wire x2="1856" y1="1008" y2="1008" x1="1536" />
            <wire x2="832" y1="992" y2="1184" x1="832" />
            <wire x2="1152" y1="1184" y2="1184" x1="832" />
            <wire x2="832" y1="1184" y2="2224" x1="832" />
            <wire x2="1152" y1="2224" y2="2224" x1="832" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="736" y1="512" y2="896" x1="736" />
            <wire x2="1152" y1="896" y2="896" x1="736" />
            <wire x2="736" y1="896" y2="1008" x1="736" />
            <wire x2="1472" y1="1008" y2="1008" x1="736" />
            <wire x2="736" y1="1008" y2="1840" x1="736" />
            <wire x2="800" y1="1840" y2="1840" x1="736" />
            <wire x2="736" y1="1840" y2="2016" x1="736" />
            <wire x2="1152" y1="2016" y2="2016" x1="736" />
            <wire x2="736" y1="2016" y2="2160" x1="736" />
            <wire x2="1152" y1="2160" y2="2160" x1="736" />
            <wire x2="992" y1="1792" y2="1792" x1="800" />
            <wire x2="992" y1="1792" y2="1840" x1="992" />
            <wire x2="1152" y1="1840" y2="1840" x1="992" />
            <wire x2="800" y1="1792" y2="1840" x1="800" />
            <wire x2="1856" y1="944" y2="944" x1="1472" />
            <wire x2="1472" y1="944" y2="1008" x1="1472" />
        </branch>
        <branch name="k">
            <wire x2="640" y1="192" y2="224" x1="640" />
            <wire x2="736" y1="224" y2="224" x1="640" />
            <wire x2="736" y1="224" y2="288" x1="736" />
            <wire x2="640" y1="224" y2="672" x1="640" />
            <wire x2="1088" y1="672" y2="672" x1="640" />
            <wire x2="640" y1="672" y2="1120" x1="640" />
            <wire x2="1152" y1="1120" y2="1120" x1="640" />
            <wire x2="640" y1="1120" y2="1488" x1="640" />
            <wire x2="1152" y1="1488" y2="1488" x1="640" />
            <wire x2="640" y1="1488" y2="1600" x1="640" />
            <wire x2="1152" y1="1600" y2="1600" x1="640" />
            <wire x2="1888" y1="336" y2="336" x1="1088" />
            <wire x2="1088" y1="336" y2="672" x1="1088" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="544" y1="512" y2="688" x1="544" />
            <wire x2="1200" y1="688" y2="688" x1="544" />
            <wire x2="544" y1="688" y2="720" x1="544" />
            <wire x2="1152" y1="720" y2="720" x1="544" />
            <wire x2="544" y1="720" y2="1424" x1="544" />
            <wire x2="1152" y1="1424" y2="1424" x1="544" />
            <wire x2="1856" y1="656" y2="656" x1="1200" />
            <wire x2="1200" y1="656" y2="688" x1="1200" />
        </branch>
        <branch name="j">
            <wire x2="448" y1="192" y2="224" x1="448" />
            <wire x2="544" y1="224" y2="224" x1="448" />
            <wire x2="544" y1="224" y2="288" x1="544" />
            <wire x2="448" y1="224" y2="544" x1="448" />
            <wire x2="1152" y1="544" y2="544" x1="448" />
            <wire x2="448" y1="544" y2="1776" x1="448" />
            <wire x2="1152" y1="1776" y2="1776" x1="448" />
            <wire x2="448" y1="1776" y2="1888" x1="448" />
            <wire x2="1504" y1="1888" y2="1888" x1="448" />
            <wire x2="1856" y1="1888" y2="1888" x1="1504" />
            <wire x2="1856" y1="1888" y2="1904" x1="1856" />
            <wire x2="448" y1="1888" y2="2096" x1="448" />
            <wire x2="1152" y1="2096" y2="2096" x1="448" />
            <wire x2="1856" y1="1072" y2="1072" x1="1504" />
            <wire x2="1504" y1="1072" y2="1888" x1="1504" />
        </branch>
        <branch name="i">
            <wire x2="320" y1="192" y2="272" x1="320" />
            <wire x2="1696" y1="272" y2="272" x1="320" />
            <wire x2="1888" y1="272" y2="272" x1="1696" />
            <wire x2="1696" y1="272" y2="592" x1="1696" />
            <wire x2="1856" y1="592" y2="592" x1="1696" />
            <wire x2="1696" y1="592" y2="1200" x1="1696" />
            <wire x2="1872" y1="1200" y2="1200" x1="1696" />
            <wire x2="1696" y1="1200" y2="1968" x1="1696" />
            <wire x2="1856" y1="1968" y2="1968" x1="1696" />
            <wire x2="320" y1="272" y2="1952" x1="320" />
            <wire x2="1152" y1="1952" y2="1952" x1="320" />
        </branch>
        <branch name="I0">
            <wire x2="480" y1="2400" y2="2400" x1="400" />
            <wire x2="480" y1="2400" y2="2480" x1="480" />
            <wire x2="560" y1="2480" y2="2480" x1="480" />
            <wire x2="800" y1="2400" y2="2400" x1="480" />
            <wire x2="800" y1="2400" y2="2416" x1="800" />
            <wire x2="1024" y1="2416" y2="2416" x1="800" />
            <wire x2="800" y1="2416" y2="2464" x1="800" />
            <wire x2="880" y1="2464" y2="2464" x1="800" />
            <wire x2="880" y1="2464" y2="2608" x1="880" />
            <wire x2="1024" y1="2608" y2="2608" x1="880" />
        </branch>
        <iomarker fontsize="28" x="400" y="2400" name="I0" orien="R180" />
        <branch name="I1">
            <wire x2="480" y1="2560" y2="2560" x1="400" />
            <wire x2="480" y1="2560" y2="2640" x1="480" />
            <wire x2="560" y1="2640" y2="2640" x1="480" />
            <wire x2="800" y1="2560" y2="2560" x1="480" />
            <wire x2="800" y1="2560" y2="2576" x1="800" />
            <wire x2="800" y1="2576" y2="2624" x1="800" />
            <wire x2="864" y1="2624" y2="2624" x1="800" />
            <wire x2="864" y1="2624" y2="2672" x1="864" />
            <wire x2="1024" y1="2672" y2="2672" x1="864" />
            <wire x2="1024" y1="2576" y2="2576" x1="800" />
        </branch>
        <iomarker fontsize="28" x="400" y="2560" name="I1" orien="R180" />
        <instance x="560" y="2512" name="XLXI_36" orien="R0" />
        <instance x="560" y="2672" name="XLXI_37" orien="R0" />
        <branch name="XLXN_99">
            <wire x2="912" y1="2480" y2="2480" x1="784" />
            <wire x2="912" y1="2480" y2="2512" x1="912" />
            <wire x2="1024" y1="2512" y2="2512" x1="912" />
            <wire x2="912" y1="2320" y2="2480" x1="912" />
            <wire x2="1024" y1="2320" y2="2320" x1="912" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="928" y1="2640" y2="2640" x1="784" />
            <wire x2="1024" y1="2384" y2="2384" x1="928" />
            <wire x2="928" y1="2384" y2="2480" x1="928" />
            <wire x2="928" y1="2480" y2="2640" x1="928" />
            <wire x2="1024" y1="2480" y2="2480" x1="928" />
        </branch>
        <instance x="1024" y="2448" name="XLXI_38" orien="R0" />
        <instance x="1024" y="2544" name="XLXI_43" orien="R0" />
        <instance x="1024" y="2640" name="XLXI_44" orien="R0" />
        <instance x="1024" y="2736" name="XLXI_45" orien="R0" />
        <instance x="1152" y="2288" name="jnkl" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1328" y="2672" name="XLXI_46" orien="R0" />
        <branch name="com0">
            <wire x2="1632" y1="2448" y2="2448" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1632" y="2448" name="com0" orien="R0" />
        <branch name="com1">
            <wire x2="1632" y1="2512" y2="2512" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1632" y="2512" name="com1" orien="R0" />
        <branch name="com2">
            <wire x2="1632" y1="2576" y2="2576" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1632" y="2576" name="com2" orien="R0" />
        <branch name="com3">
            <wire x2="1632" y1="2640" y2="2640" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1632" y="2640" name="com3" orien="R0" />
        <branch name="XLXN_125">
            <wire x2="1328" y1="2640" y2="2640" x1="1280" />
        </branch>
        <branch name="XLXN_126">
            <wire x2="1296" y1="2544" y2="2544" x1="1280" />
            <wire x2="1296" y1="2544" y2="2576" x1="1296" />
            <wire x2="1328" y1="2576" y2="2576" x1="1296" />
        </branch>
        <branch name="XLXN_127">
            <wire x2="1296" y1="2448" y2="2448" x1="1280" />
            <wire x2="1296" y1="2448" y2="2512" x1="1296" />
            <wire x2="1328" y1="2512" y2="2512" x1="1296" />
        </branch>
        <branch name="XLXN_128">
            <wire x2="1312" y1="2352" y2="2352" x1="1280" />
            <wire x2="1312" y1="2352" y2="2448" x1="1312" />
            <wire x2="1328" y1="2448" y2="2448" x1="1312" />
        </branch>
    </sheet>
</drawing>