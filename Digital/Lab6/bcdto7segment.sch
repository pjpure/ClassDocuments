<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
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
        <signal name="XLXN_70" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_65" />
        <signal name="XLXN_90" />
        <signal name="l" />
        <signal name="XLXN_8" />
        <signal name="k" />
        <signal name="XLXN_77" />
        <signal name="j" />
        <signal name="i" />
        <port polarity="Output" name="A" />
        <port polarity="Output" name="B" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="D" />
        <port polarity="Output" name="E" />
        <port polarity="Output" name="F" />
        <port polarity="Output" name="G" />
        <port polarity="Input" name="l" />
        <port polarity="Input" name="k" />
        <port polarity="Input" name="j" />
        <port polarity="Input" name="i" />
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
        <block symbolname="or4" name="XLXI_10">
            <blockpin signalname="XLXN_88" name="I0" />
            <blockpin signalname="XLXN_52" name="I1" />
            <blockpin signalname="k" name="I2" />
            <blockpin signalname="i" name="I3" />
            <blockpin signalname="A" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_11">
            <blockpin signalname="j" name="I0" />
            <blockpin signalname="l" name="I1" />
            <blockpin signalname="XLXN_8" name="I2" />
            <blockpin signalname="C" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_12">
            <blockpin signalname="XLXN_88" name="I0" />
            <blockpin signalname="XLXN_62" name="I1" />
            <blockpin signalname="XLXN_65" name="I2" />
            <blockpin signalname="XLXN_59" name="I3" />
            <blockpin signalname="i" name="I4" />
            <blockpin signalname="D" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_13">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="XLXN_88" name="I1" />
            <blockpin signalname="E" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_14">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="i" name="I1" />
            <blockpin signalname="j" name="I2" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_15">
            <blockpin signalname="XLXN_70" name="I0" />
            <blockpin signalname="XLXN_89" name="I1" />
            <blockpin signalname="XLXN_62" name="I2" />
            <blockpin signalname="XLXN_65" name="I3" />
            <blockpin signalname="G" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_16">
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
        <block symbolname="and2" name="knl">
            <blockpin signalname="XLXN_90" name="I0" />
            <blockpin signalname="k" name="I1" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and3" name="jnkl">
            <blockpin signalname="l" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="j" name="I2" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="720" y="240" name="nj" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="224" y="24" type="instance" />
        </instance>
        <instance x="912" y="240" name="nk" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="224" y="24" type="instance" />
        </instance>
        <instance x="1104" y="240" name="nl" orien="R90">
            <attrtext style="alignment:VLEFT;fontsize:28;fontname:Arial" attrname="InstName" x="224" y="24" type="instance" />
        </instance>
        <instance x="1360" y="624" name="jl" orien="R0" />
        <instance x="1360" y="800" name="njnl" orien="R0" />
        <instance x="1360" y="976" name="nknl" orien="R0" />
        <instance x="1360" y="1504" name="njk" orien="R0" />
        <instance x="1360" y="1856" name="jnk" orien="R0" />
        <instance x="1360" y="2032" name="ink" orien="R0" />
        <branch name="A">
            <wire x2="2640" y1="320" y2="320" x1="2352" />
        </branch>
        <branch name="B">
            <wire x2="2640" y1="640" y2="640" x1="2320" />
        </branch>
        <branch name="C">
            <wire x2="2640" y1="960" y2="960" x1="2320" />
        </branch>
        <branch name="D">
            <wire x2="2640" y1="1280" y2="1280" x1="2336" />
        </branch>
        <branch name="E">
            <wire x2="2640" y1="1600" y2="1600" x1="2320" />
        </branch>
        <branch name="F">
            <wire x2="2640" y1="1920" y2="1920" x1="2320" />
        </branch>
        <branch name="G">
            <wire x2="2656" y1="2240" y2="2240" x1="2336" />
        </branch>
        <instance x="2096" y="480" name="XLXI_10" orien="R0" />
        <instance x="2064" y="1088" name="XLXI_11" orien="R0" />
        <instance x="2080" y="1472" name="XLXI_12" orien="R0" />
        <instance x="2064" y="1696" name="XLXI_13" orien="R0" />
        <instance x="2064" y="2048" name="XLXI_14" orien="R0" />
        <instance x="2080" y="2400" name="XLXI_15" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="1856" y1="528" y2="528" x1="1616" />
            <wire x2="1856" y1="352" y2="528" x1="1856" />
            <wire x2="2096" y1="352" y2="352" x1="1856" />
        </branch>
        <instance x="2064" y="800" name="XLXI_16" orien="R0" />
        <branch name="XLXN_55">
            <wire x2="1888" y1="880" y2="880" x1="1616" />
            <wire x2="1888" y1="880" y2="1984" x1="1888" />
            <wire x2="2064" y1="1984" y2="1984" x1="1888" />
            <wire x2="1888" y1="672" y2="880" x1="1888" />
            <wire x2="2064" y1="672" y2="672" x1="1888" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="1840" y1="2112" y2="2112" x1="1616" />
            <wire x2="1840" y1="1216" y2="2112" x1="1840" />
            <wire x2="2080" y1="1216" y2="1216" x1="1840" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="1824" y1="1408" y2="1408" x1="1616" />
            <wire x2="1824" y1="1408" y2="1440" x1="1824" />
            <wire x2="1824" y1="1440" y2="1440" x1="1792" />
            <wire x2="1792" y1="1440" y2="2208" x1="1792" />
            <wire x2="2080" y1="2208" y2="2208" x1="1792" />
            <wire x2="2080" y1="1344" y2="1344" x1="1824" />
            <wire x2="1824" y1="1344" y2="1408" x1="1824" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="1824" y1="1936" y2="1936" x1="1616" />
            <wire x2="1824" y1="1936" y2="2336" x1="1824" />
            <wire x2="2080" y1="2336" y2="2336" x1="1824" />
        </branch>
        <instance x="1360" y="1200" name="kl" orien="R0" />
        <branch name="XLXN_87">
            <wire x2="1840" y1="1104" y2="1104" x1="1616" />
            <wire x2="1840" y1="736" y2="1104" x1="1840" />
            <wire x2="2064" y1="736" y2="736" x1="1840" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="1840" y1="704" y2="704" x1="1616" />
            <wire x2="1952" y1="704" y2="704" x1="1840" />
            <wire x2="1952" y1="704" y2="1408" x1="1952" />
            <wire x2="1952" y1="1408" y2="1568" x1="1952" />
            <wire x2="2064" y1="1568" y2="1568" x1="1952" />
            <wire x2="2080" y1="1408" y2="1408" x1="1952" />
            <wire x2="1840" y1="416" y2="704" x1="1840" />
            <wire x2="2096" y1="416" y2="416" x1="1840" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="1808" y1="1760" y2="1760" x1="1616" />
            <wire x2="1808" y1="1760" y2="2272" x1="1808" />
            <wire x2="2080" y1="2272" y2="2272" x1="1808" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="1824" y1="1584" y2="1584" x1="1616" />
            <wire x2="1824" y1="1584" y2="1632" x1="1824" />
            <wire x2="2064" y1="1632" y2="1632" x1="1824" />
            <wire x2="1936" y1="1584" y2="1584" x1="1824" />
            <wire x2="1824" y1="1632" y2="1632" x1="1760" />
            <wire x2="1760" y1="1632" y2="2144" x1="1760" />
            <wire x2="2080" y1="2144" y2="2144" x1="1760" />
            <wire x2="1936" y1="1280" y2="1584" x1="1936" />
            <wire x2="2080" y1="1280" y2="1280" x1="1936" />
        </branch>
        <instance x="1360" y="1680" name="knl" orien="R0" />
        <branch name="XLXN_90">
            <wire x2="1136" y1="464" y2="736" x1="1136" />
            <wire x2="1360" y1="736" y2="736" x1="1136" />
            <wire x2="1136" y1="736" y2="912" x1="1136" />
            <wire x2="1360" y1="912" y2="912" x1="1136" />
            <wire x2="1136" y1="912" y2="1616" x1="1136" />
            <wire x2="1360" y1="1616" y2="1616" x1="1136" />
        </branch>
        <branch name="l">
            <wire x2="1040" y1="144" y2="176" x1="1040" />
            <wire x2="1136" y1="176" y2="176" x1="1040" />
            <wire x2="1136" y1="176" y2="240" x1="1136" />
            <wire x2="1040" y1="176" y2="560" x1="1040" />
            <wire x2="1360" y1="560" y2="560" x1="1040" />
            <wire x2="1040" y1="560" y2="944" x1="1040" />
            <wire x2="1744" y1="944" y2="944" x1="1040" />
            <wire x2="1744" y1="944" y2="960" x1="1744" />
            <wire x2="2064" y1="960" y2="960" x1="1744" />
            <wire x2="1040" y1="944" y2="1136" x1="1040" />
            <wire x2="1360" y1="1136" y2="1136" x1="1040" />
            <wire x2="1040" y1="1136" y2="2176" x1="1040" />
            <wire x2="1360" y1="2176" y2="2176" x1="1040" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="944" y1="464" y2="848" x1="944" />
            <wire x2="1360" y1="848" y2="848" x1="944" />
            <wire x2="944" y1="848" y2="960" x1="944" />
            <wire x2="1680" y1="960" y2="960" x1="944" />
            <wire x2="944" y1="960" y2="1792" x1="944" />
            <wire x2="1008" y1="1792" y2="1792" x1="944" />
            <wire x2="944" y1="1792" y2="1968" x1="944" />
            <wire x2="1360" y1="1968" y2="1968" x1="944" />
            <wire x2="944" y1="1968" y2="2112" x1="944" />
            <wire x2="1360" y1="2112" y2="2112" x1="944" />
            <wire x2="1200" y1="1744" y2="1744" x1="1008" />
            <wire x2="1200" y1="1744" y2="1792" x1="1200" />
            <wire x2="1360" y1="1792" y2="1792" x1="1200" />
            <wire x2="1008" y1="1744" y2="1792" x1="1008" />
            <wire x2="2064" y1="896" y2="896" x1="1680" />
            <wire x2="1680" y1="896" y2="960" x1="1680" />
        </branch>
        <branch name="k">
            <wire x2="848" y1="144" y2="176" x1="848" />
            <wire x2="944" y1="176" y2="176" x1="848" />
            <wire x2="944" y1="176" y2="240" x1="944" />
            <wire x2="848" y1="176" y2="624" x1="848" />
            <wire x2="1296" y1="624" y2="624" x1="848" />
            <wire x2="848" y1="624" y2="1072" x1="848" />
            <wire x2="1360" y1="1072" y2="1072" x1="848" />
            <wire x2="848" y1="1072" y2="1440" x1="848" />
            <wire x2="1360" y1="1440" y2="1440" x1="848" />
            <wire x2="848" y1="1440" y2="1552" x1="848" />
            <wire x2="1360" y1="1552" y2="1552" x1="848" />
            <wire x2="2096" y1="288" y2="288" x1="1296" />
            <wire x2="1296" y1="288" y2="624" x1="1296" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="752" y1="464" y2="640" x1="752" />
            <wire x2="1408" y1="640" y2="640" x1="752" />
            <wire x2="752" y1="640" y2="672" x1="752" />
            <wire x2="1360" y1="672" y2="672" x1="752" />
            <wire x2="752" y1="672" y2="1376" x1="752" />
            <wire x2="1360" y1="1376" y2="1376" x1="752" />
            <wire x2="2064" y1="608" y2="608" x1="1408" />
            <wire x2="1408" y1="608" y2="640" x1="1408" />
        </branch>
        <branch name="j">
            <wire x2="656" y1="144" y2="176" x1="656" />
            <wire x2="752" y1="176" y2="176" x1="656" />
            <wire x2="752" y1="176" y2="240" x1="752" />
            <wire x2="656" y1="176" y2="496" x1="656" />
            <wire x2="1360" y1="496" y2="496" x1="656" />
            <wire x2="656" y1="496" y2="1728" x1="656" />
            <wire x2="1360" y1="1728" y2="1728" x1="656" />
            <wire x2="656" y1="1728" y2="1840" x1="656" />
            <wire x2="1712" y1="1840" y2="1840" x1="656" />
            <wire x2="2064" y1="1840" y2="1840" x1="1712" />
            <wire x2="2064" y1="1840" y2="1856" x1="2064" />
            <wire x2="656" y1="1840" y2="2048" x1="656" />
            <wire x2="1360" y1="2048" y2="2048" x1="656" />
            <wire x2="2064" y1="1024" y2="1024" x1="1712" />
            <wire x2="1712" y1="1024" y2="1840" x1="1712" />
        </branch>
        <branch name="i">
            <wire x2="528" y1="144" y2="224" x1="528" />
            <wire x2="1904" y1="224" y2="224" x1="528" />
            <wire x2="2096" y1="224" y2="224" x1="1904" />
            <wire x2="1904" y1="224" y2="544" x1="1904" />
            <wire x2="2064" y1="544" y2="544" x1="1904" />
            <wire x2="1904" y1="544" y2="1152" x1="1904" />
            <wire x2="2080" y1="1152" y2="1152" x1="1904" />
            <wire x2="1904" y1="1152" y2="1920" x1="1904" />
            <wire x2="2064" y1="1920" y2="1920" x1="1904" />
            <wire x2="528" y1="224" y2="1904" x1="528" />
            <wire x2="1360" y1="1904" y2="1904" x1="528" />
        </branch>
        <instance x="1360" y="2240" name="jnkl" orien="R0" />
        <iomarker fontsize="28" x="528" y="144" name="i" orien="R270" />
        <iomarker fontsize="28" x="656" y="144" name="j" orien="R270" />
        <iomarker fontsize="28" x="848" y="144" name="k" orien="R270" />
        <iomarker fontsize="28" x="1040" y="144" name="l" orien="R270" />
        <iomarker fontsize="28" x="2640" y="320" name="A" orien="R0" />
        <iomarker fontsize="28" x="2640" y="640" name="B" orien="R0" />
        <iomarker fontsize="28" x="2640" y="960" name="C" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1280" name="D" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1600" name="E" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1920" name="F" orien="R0" />
        <iomarker fontsize="28" x="2656" y="2240" name="G" orien="R0" />
    </sheet>
</drawing>