<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_70" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="XLXN_90" />
        <signal name="XLXN_104" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <signal name="XLXN_112" />
        <signal name="XLXN_113" />
        <signal name="XLXN_114" />
        <signal name="XLXN_116" />
        <signal name="XLXN_102" />
        <signal name="C1" />
        <signal name="XLXN_126" />
        <signal name="B1" />
        <signal name="XLXN_128" />
        <signal name="XLXN_129" />
        <signal name="XLXN_108" />
        <signal name="D1" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111" />
        <signal name="XLXN_134" />
        <signal name="XLXN_135" />
        <signal name="XLXN_136" />
        <signal name="A1" />
        <signal name="XLXN_138" />
        <signal name="XLXN_117" />
        <signal name="XLXN_118" />
        <signal name="XLXN_71" />
        <signal name="C2" />
        <signal name="XLXN_148" />
        <signal name="B2" />
        <signal name="XLXN_150" />
        <signal name="XLXN_151" />
        <signal name="XLXN_87" />
        <signal name="D2" />
        <signal name="XLXN_89" />
        <signal name="XLXN_91" />
        <signal name="XLXN_156" />
        <signal name="XLXN_157" />
        <signal name="XLXN_158" />
        <signal name="XLXN_92" />
        <signal name="XLXN_160" />
        <signal name="XLXN_93" />
        <signal name="clock" />
        <signal name="XLXN_101" />
        <signal name="XLXN_168" />
        <signal name="XLXN_169" />
        <signal name="XLXN_170" />
        <signal name="XLXN_171" />
        <signal name="A2" />
        <signal name="XLXN_173" />
        <signal name="XLXN_174" />
        <signal name="XLXN_175" />
        <signal name="XLXN_177" />
        <signal name="XLXN_178" />
        <signal name="XLXN_179" />
        <signal name="XLXN_180" />
        <signal name="XLXN_181" />
        <signal name="XLXN_182" />
        <signal name="XLXN_183" />
        <signal name="XLXN_184" />
        <port polarity="Output" name="C1" />
        <port polarity="Output" name="B1" />
        <port polarity="Output" name="D1" />
        <port polarity="Output" name="A1" />
        <port polarity="Output" name="C2" />
        <port polarity="Output" name="B2" />
        <port polarity="Output" name="D2" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="A2" />
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="fjkc" name="XLXI_29">
            <blockpin signalname="XLXN_118" name="C" />
            <blockpin signalname="XLXN_181" name="CLR" />
            <blockpin signalname="XLXN_102" name="J" />
            <blockpin signalname="A1" name="K" />
            <blockpin signalname="D1" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_30">
            <blockpin signalname="XLXN_118" name="C" />
            <blockpin signalname="XLXN_181" name="CLR" />
            <blockpin signalname="XLXN_108" name="J" />
            <blockpin signalname="XLXN_108" name="K" />
            <blockpin signalname="C1" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_31">
            <blockpin signalname="XLXN_118" name="C" />
            <blockpin signalname="XLXN_181" name="CLR" />
            <blockpin signalname="XLXN_111" name="J" />
            <blockpin signalname="A1" name="K" />
            <blockpin signalname="B1" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_32">
            <blockpin signalname="XLXN_118" name="C" />
            <blockpin signalname="XLXN_181" name="CLR" />
            <blockpin signalname="XLXN_117" name="J" />
            <blockpin signalname="XLXN_117" name="K" />
            <blockpin signalname="A1" name="Q" />
        </block>
        <block symbolname="and3" name="XLXI_33">
            <blockpin signalname="A1" name="I0" />
            <blockpin signalname="B1" name="I1" />
            <blockpin signalname="C1" name="I2" />
            <blockpin signalname="XLXN_102" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_34">
            <blockpin signalname="B1" name="I0" />
            <blockpin signalname="A1" name="I1" />
            <blockpin signalname="XLXN_108" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_35">
            <blockpin signalname="A1" name="I0" />
            <blockpin signalname="XLXN_110" name="I1" />
            <blockpin signalname="XLXN_111" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_36">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_110" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_37">
            <blockpin signalname="XLXN_117" name="P" />
        </block>
        <block symbolname="fjkc" name="XLXI_5">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_177" name="CLR" />
            <blockpin signalname="XLXN_71" name="J" />
            <blockpin signalname="A2" name="K" />
            <blockpin signalname="D2" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_6">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_177" name="CLR" />
            <blockpin signalname="XLXN_87" name="J" />
            <blockpin signalname="XLXN_87" name="K" />
            <blockpin signalname="C2" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_7">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_177" name="CLR" />
            <blockpin signalname="XLXN_91" name="J" />
            <blockpin signalname="A2" name="K" />
            <blockpin signalname="B2" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_8">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_177" name="CLR" />
            <blockpin signalname="XLXN_93" name="J" />
            <blockpin signalname="XLXN_93" name="K" />
            <blockpin signalname="A2" name="Q" />
        </block>
        <block symbolname="and3" name="XLXI_10">
            <blockpin signalname="A2" name="I0" />
            <blockpin signalname="B2" name="I1" />
            <blockpin signalname="C2" name="I2" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="B2" name="I0" />
            <blockpin signalname="A2" name="I1" />
            <blockpin signalname="XLXN_87" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="A2" name="I0" />
            <blockpin signalname="XLXN_89" name="I1" />
            <blockpin signalname="XLXN_91" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_89" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_24">
            <blockpin signalname="XLXN_93" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_27">
            <blockpin signalname="XLXN_101" name="I" />
            <blockpin signalname="XLXN_177" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_28">
            <blockpin signalname="XLXN_101" name="P" />
        </block>
        <block symbolname="nand2" name="XLXI_63">
            <blockpin signalname="A2" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="XLXN_118" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_65">
            <blockpin signalname="XLXN_170" name="I" />
            <blockpin signalname="XLXN_181" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_66">
            <blockpin signalname="XLXN_170" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="608" y="2464" name="XLXI_29" orien="R0" />
        <instance x="1248" y="2464" name="XLXI_30" orien="R0" />
        <instance x="1920" y="2464" name="XLXI_31" orien="R0" />
        <instance x="2544" y="2464" name="XLXI_32" orien="R0" />
        <instance x="320" y="2112" name="XLXI_33" orien="R0" />
        <branch name="XLXN_102">
            <wire x2="592" y1="1984" y2="1984" x1="576" />
            <wire x2="592" y1="1984" y2="2144" x1="592" />
            <wire x2="608" y1="2144" y2="2144" x1="592" />
        </branch>
        <branch name="C1">
            <wire x2="320" y1="1872" y2="1920" x1="320" />
            <wire x2="1696" y1="1872" y2="1872" x1="320" />
            <wire x2="1696" y1="1872" y2="2208" x1="1696" />
            <wire x2="1744" y1="2208" y2="2208" x1="1696" />
            <wire x2="1744" y1="2208" y2="2656" x1="1744" />
            <wire x2="1824" y1="2656" y2="2656" x1="1744" />
            <wire x2="1696" y1="2208" y2="2208" x1="1632" />
        </branch>
        <text style="fontsize:36;fontname:Arial" x="780" y="2216">D</text>
        <text style="fontsize:36;fontname:Arial" x="1436" y="2216">C</text>
        <text style="fontsize:36;fontname:Arial" x="2092" y="2216">B</text>
        <text style="fontsize:36;fontname:Arial" x="2716" y="2216">A</text>
        <instance x="960" y="2064" name="XLXI_34" orien="R0" />
        <branch name="B1">
            <wire x2="272" y1="1680" y2="1984" x1="272" />
            <wire x2="320" y1="1984" y2="1984" x1="272" />
            <wire x2="2064" y1="1680" y2="1680" x1="272" />
            <wire x2="2368" y1="1680" y2="1680" x1="2064" />
            <wire x2="2368" y1="1680" y2="2208" x1="2368" />
            <wire x2="2448" y1="2208" y2="2208" x1="2368" />
            <wire x2="2448" y1="2208" y2="2672" x1="2448" />
            <wire x2="2528" y1="2672" y2="2672" x1="2448" />
            <wire x2="944" y1="1664" y2="2000" x1="944" />
            <wire x2="960" y1="2000" y2="2000" x1="944" />
            <wire x2="2368" y1="1664" y2="1664" x1="944" />
            <wire x2="2368" y1="1664" y2="1680" x1="2368" />
            <wire x2="2368" y1="2208" y2="2208" x1="2304" />
        </branch>
        <branch name="XLXN_108">
            <wire x2="1280" y1="2064" y2="2064" x1="1168" />
            <wire x2="1168" y1="2064" y2="2192" x1="1168" />
            <wire x2="1232" y1="2192" y2="2192" x1="1168" />
            <wire x2="1232" y1="2192" y2="2208" x1="1232" />
            <wire x2="1248" y1="2208" y2="2208" x1="1232" />
            <wire x2="1280" y1="1968" y2="1968" x1="1216" />
            <wire x2="1280" y1="1968" y2="2064" x1="1280" />
            <wire x2="1248" y1="2144" y2="2144" x1="1232" />
            <wire x2="1232" y1="2144" y2="2192" x1="1232" />
        </branch>
        <instance x="1568" y="1888" name="XLXI_35" orien="R0" />
        <branch name="D1">
            <wire x2="1072" y1="2208" y2="2208" x1="992" />
            <wire x2="1104" y1="2208" y2="2208" x1="1072" />
            <wire x2="1104" y1="2208" y2="2640" x1="1104" />
            <wire x2="1152" y1="2640" y2="2640" x1="1104" />
            <wire x2="1072" y1="2080" y2="2208" x1="1072" />
            <wire x2="1232" y1="2080" y2="2080" x1="1072" />
            <wire x2="1232" y1="1760" y2="2080" x1="1232" />
        </branch>
        <instance x="1232" y="1792" name="XLXI_36" orien="R0" />
        <branch name="XLXN_110">
            <wire x2="1568" y1="1760" y2="1760" x1="1456" />
        </branch>
        <branch name="XLXN_111">
            <wire x2="1872" y1="1792" y2="1792" x1="1824" />
            <wire x2="1872" y1="1792" y2="2144" x1="1872" />
            <wire x2="1920" y1="2144" y2="2144" x1="1872" />
        </branch>
        <branch name="A1">
            <wire x2="288" y1="1616" y2="2048" x1="288" />
            <wire x2="320" y1="2048" y2="2048" x1="288" />
            <wire x2="2384" y1="1616" y2="1616" x1="288" />
            <wire x2="2992" y1="1616" y2="1616" x1="2384" />
            <wire x2="2992" y1="1616" y2="1648" x1="2992" />
            <wire x2="2992" y1="1648" y2="1680" x1="2992" />
            <wire x2="2992" y1="1680" y2="1728" x1="2992" />
            <wire x2="2992" y1="1728" y2="2208" x1="2992" />
            <wire x2="2992" y1="2208" y2="2688" x1="2992" />
            <wire x2="3040" y1="2688" y2="2688" x1="2992" />
            <wire x2="304" y1="1584" y2="2208" x1="304" />
            <wire x2="608" y1="2208" y2="2208" x1="304" />
            <wire x2="2992" y1="1584" y2="1584" x1="304" />
            <wire x2="2992" y1="1584" y2="1616" x1="2992" />
            <wire x2="896" y1="1648" y2="1936" x1="896" />
            <wire x2="960" y1="1936" y2="1936" x1="896" />
            <wire x2="2992" y1="1648" y2="1648" x1="896" />
            <wire x2="1504" y1="1696" y2="1824" x1="1504" />
            <wire x2="1568" y1="1824" y2="1824" x1="1504" />
            <wire x2="2448" y1="1696" y2="1696" x1="1504" />
            <wire x2="1840" y1="1728" y2="2208" x1="1840" />
            <wire x2="1920" y1="2208" y2="2208" x1="1840" />
            <wire x2="2992" y1="1728" y2="1728" x1="1840" />
            <wire x2="2448" y1="1680" y2="1696" x1="2448" />
            <wire x2="2992" y1="1680" y2="1680" x1="2448" />
            <wire x2="2992" y1="2208" y2="2208" x1="2928" />
        </branch>
        <instance x="2416" y="2080" name="XLXI_37" orien="R0" />
        <branch name="XLXN_117">
            <wire x2="2480" y1="2080" y2="2144" x1="2480" />
            <wire x2="2480" y1="2144" y2="2208" x1="2480" />
            <wire x2="2544" y1="2208" y2="2208" x1="2480" />
            <wire x2="2544" y1="2144" y2="2144" x1="2480" />
        </branch>
        <branch name="XLXN_118">
            <wire x2="256" y1="2064" y2="2336" x1="256" />
            <wire x2="464" y1="2336" y2="2336" x1="256" />
            <wire x2="608" y1="2336" y2="2336" x1="464" />
            <wire x2="464" y1="2336" y2="2496" x1="464" />
            <wire x2="1056" y1="2496" y2="2496" x1="464" />
            <wire x2="1696" y1="2496" y2="2496" x1="1056" />
            <wire x2="2384" y1="2496" y2="2496" x1="1696" />
            <wire x2="656" y1="2064" y2="2064" x1="256" />
            <wire x2="656" y1="1392" y2="1392" x1="448" />
            <wire x2="656" y1="1392" y2="2064" x1="656" />
            <wire x2="1056" y1="2336" y2="2496" x1="1056" />
            <wire x2="1248" y1="2336" y2="2336" x1="1056" />
            <wire x2="1696" y1="2336" y2="2496" x1="1696" />
            <wire x2="1920" y1="2336" y2="2336" x1="1696" />
            <wire x2="2384" y1="2336" y2="2496" x1="2384" />
            <wire x2="2544" y1="2336" y2="2336" x1="2384" />
        </branch>
        <instance x="544" y="1056" name="XLXI_5" orien="R0" />
        <instance x="1184" y="1056" name="XLXI_6" orien="R0" />
        <instance x="1856" y="1056" name="XLXI_7" orien="R0" />
        <instance x="2480" y="1056" name="XLXI_8" orien="R0" />
        <instance x="256" y="704" name="XLXI_10" orien="R0" />
        <branch name="XLXN_71">
            <wire x2="528" y1="576" y2="576" x1="512" />
            <wire x2="528" y1="576" y2="736" x1="528" />
            <wire x2="544" y1="736" y2="736" x1="528" />
        </branch>
        <branch name="C2">
            <wire x2="256" y1="464" y2="512" x1="256" />
            <wire x2="1632" y1="464" y2="464" x1="256" />
            <wire x2="1632" y1="464" y2="800" x1="1632" />
            <wire x2="1696" y1="800" y2="800" x1="1632" />
            <wire x2="1696" y1="800" y2="1344" x1="1696" />
            <wire x2="1744" y1="1344" y2="1344" x1="1696" />
            <wire x2="1632" y1="800" y2="800" x1="1568" />
        </branch>
        <text style="fontsize:36;fontname:Arial" x="716" y="808">D</text>
        <text style="fontsize:36;fontname:Arial" x="1372" y="808">C</text>
        <text style="fontsize:36;fontname:Arial" x="2028" y="808">B</text>
        <text style="fontsize:36;fontname:Arial" x="2652" y="808">A</text>
        <instance x="896" y="656" name="XLXI_21" orien="R0" />
        <branch name="B2">
            <wire x2="208" y1="272" y2="576" x1="208" />
            <wire x2="256" y1="576" y2="576" x1="208" />
            <wire x2="2000" y1="272" y2="272" x1="208" />
            <wire x2="2304" y1="272" y2="272" x1="2000" />
            <wire x2="2304" y1="272" y2="800" x1="2304" />
            <wire x2="2304" y1="800" y2="1344" x1="2304" />
            <wire x2="2336" y1="1344" y2="1344" x1="2304" />
            <wire x2="880" y1="256" y2="592" x1="880" />
            <wire x2="896" y1="592" y2="592" x1="880" />
            <wire x2="2304" y1="256" y2="256" x1="880" />
            <wire x2="2304" y1="256" y2="272" x1="2304" />
            <wire x2="2304" y1="800" y2="800" x1="2240" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="1216" y1="656" y2="656" x1="1104" />
            <wire x2="1104" y1="656" y2="784" x1="1104" />
            <wire x2="1168" y1="784" y2="784" x1="1104" />
            <wire x2="1168" y1="784" y2="800" x1="1168" />
            <wire x2="1184" y1="800" y2="800" x1="1168" />
            <wire x2="1216" y1="560" y2="560" x1="1152" />
            <wire x2="1216" y1="560" y2="656" x1="1216" />
            <wire x2="1184" y1="736" y2="736" x1="1168" />
            <wire x2="1168" y1="736" y2="784" x1="1168" />
        </branch>
        <instance x="1504" y="480" name="XLXI_22" orien="R0" />
        <branch name="D2">
            <wire x2="128" y1="1280" y2="1360" x1="128" />
            <wire x2="192" y1="1360" y2="1360" x1="128" />
            <wire x2="1008" y1="1280" y2="1280" x1="128" />
            <wire x2="1008" y1="800" y2="800" x1="928" />
            <wire x2="1008" y1="800" y2="1280" x1="1008" />
            <wire x2="1104" y1="800" y2="800" x1="1008" />
            <wire x2="1104" y1="800" y2="1328" x1="1104" />
            <wire x2="1200" y1="1328" y2="1328" x1="1104" />
            <wire x2="1008" y1="672" y2="800" x1="1008" />
            <wire x2="1168" y1="672" y2="672" x1="1008" />
            <wire x2="1168" y1="352" y2="672" x1="1168" />
        </branch>
        <instance x="1168" y="384" name="XLXI_23" orien="R0" />
        <branch name="XLXN_89">
            <wire x2="1504" y1="352" y2="352" x1="1392" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="1808" y1="384" y2="384" x1="1760" />
            <wire x2="1808" y1="384" y2="736" x1="1808" />
            <wire x2="1856" y1="736" y2="736" x1="1808" />
        </branch>
        <instance x="2352" y="672" name="XLXI_24" orien="R0" />
        <branch name="XLXN_93">
            <wire x2="2416" y1="672" y2="736" x1="2416" />
            <wire x2="2416" y1="736" y2="800" x1="2416" />
            <wire x2="2480" y1="800" y2="800" x1="2416" />
            <wire x2="2480" y1="736" y2="736" x1="2416" />
        </branch>
        <branch name="clock">
            <wire x2="400" y1="928" y2="928" x1="192" />
            <wire x2="544" y1="928" y2="928" x1="400" />
            <wire x2="400" y1="928" y2="1088" x1="400" />
            <wire x2="992" y1="1088" y2="1088" x1="400" />
            <wire x2="1632" y1="1088" y2="1088" x1="992" />
            <wire x2="2320" y1="1088" y2="1088" x1="1632" />
            <wire x2="992" y1="928" y2="1088" x1="992" />
            <wire x2="1184" y1="928" y2="928" x1="992" />
            <wire x2="1632" y1="928" y2="1088" x1="1632" />
            <wire x2="1856" y1="928" y2="928" x1="1632" />
            <wire x2="2320" y1="928" y2="1088" x1="2320" />
            <wire x2="2480" y1="928" y2="928" x1="2320" />
        </branch>
        <instance x="96" y="1136" name="XLXI_27" orien="R0" />
        <branch name="XLXN_101">
            <wire x2="96" y1="1072" y2="1104" x1="96" />
        </branch>
        <instance x="32" y="1072" name="XLXI_28" orien="R0" />
        <iomarker fontsize="28" x="192" y="928" name="clock" orien="R180" />
        <instance x="192" y="1488" name="XLXI_63" orien="R0" />
        <instance x="160" y="2544" name="XLXI_65" orien="R0" />
        <branch name="XLXN_170">
            <wire x2="160" y1="2480" y2="2512" x1="160" />
        </branch>
        <instance x="96" y="2480" name="XLXI_66" orien="R0" />
        <branch name="A2">
            <wire x2="192" y1="1424" y2="1424" x1="128" />
            <wire x2="128" y1="1424" y2="1504" x1="128" />
            <wire x2="2928" y1="1504" y2="1504" x1="128" />
            <wire x2="224" y1="208" y2="640" x1="224" />
            <wire x2="256" y1="640" y2="640" x1="224" />
            <wire x2="2320" y1="208" y2="208" x1="224" />
            <wire x2="2928" y1="208" y2="208" x1="2320" />
            <wire x2="2928" y1="208" y2="240" x1="2928" />
            <wire x2="2928" y1="240" y2="272" x1="2928" />
            <wire x2="2928" y1="272" y2="320" x1="2928" />
            <wire x2="2928" y1="320" y2="800" x1="2928" />
            <wire x2="2928" y1="800" y2="1504" x1="2928" />
            <wire x2="240" y1="176" y2="800" x1="240" />
            <wire x2="544" y1="800" y2="800" x1="240" />
            <wire x2="2928" y1="176" y2="176" x1="240" />
            <wire x2="2928" y1="176" y2="208" x1="2928" />
            <wire x2="832" y1="240" y2="528" x1="832" />
            <wire x2="896" y1="528" y2="528" x1="832" />
            <wire x2="2928" y1="240" y2="240" x1="832" />
            <wire x2="1440" y1="288" y2="416" x1="1440" />
            <wire x2="1504" y1="416" y2="416" x1="1440" />
            <wire x2="2384" y1="288" y2="288" x1="1440" />
            <wire x2="1776" y1="320" y2="800" x1="1776" />
            <wire x2="1856" y1="800" y2="800" x1="1776" />
            <wire x2="2928" y1="320" y2="320" x1="1776" />
            <wire x2="2384" y1="272" y2="288" x1="2384" />
            <wire x2="2928" y1="272" y2="272" x1="2384" />
            <wire x2="2912" y1="800" y2="800" x1="2864" />
            <wire x2="2928" y1="800" y2="800" x1="2912" />
            <wire x2="2912" y1="800" y2="1328" x1="2912" />
            <wire x2="2992" y1="1328" y2="1328" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1328" name="D2" orien="R0" />
        <iomarker fontsize="28" x="1744" y="1344" name="C2" orien="R0" />
        <iomarker fontsize="28" x="2336" y="1344" name="B2" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1328" name="A2" orien="R0" />
        <iomarker fontsize="28" x="1152" y="2640" name="D1" orien="R0" />
        <iomarker fontsize="28" x="1824" y="2656" name="C1" orien="R0" />
        <iomarker fontsize="28" x="2528" y="2672" name="B1" orien="R0" />
        <iomarker fontsize="28" x="3040" y="2688" name="A1" orien="R0" />
        <branch name="XLXN_177">
            <wire x2="544" y1="1104" y2="1104" x1="320" />
            <wire x2="1184" y1="1104" y2="1104" x1="544" />
            <wire x2="1856" y1="1104" y2="1104" x1="1184" />
            <wire x2="2480" y1="1104" y2="1104" x1="1856" />
            <wire x2="544" y1="1024" y2="1104" x1="544" />
            <wire x2="1184" y1="1024" y2="1104" x1="1184" />
            <wire x2="1856" y1="1024" y2="1104" x1="1856" />
            <wire x2="2480" y1="1024" y2="1104" x1="2480" />
        </branch>
        <branch name="XLXN_181">
            <wire x2="608" y1="2512" y2="2512" x1="384" />
            <wire x2="1248" y1="2512" y2="2512" x1="608" />
            <wire x2="1920" y1="2512" y2="2512" x1="1248" />
            <wire x2="2544" y1="2512" y2="2512" x1="1920" />
            <wire x2="608" y1="2432" y2="2512" x1="608" />
            <wire x2="1248" y1="2432" y2="2512" x1="1248" />
            <wire x2="1920" y1="2432" y2="2512" x1="1920" />
            <wire x2="2544" y1="2432" y2="2512" x1="2544" />
        </branch>
    </sheet>
</drawing>