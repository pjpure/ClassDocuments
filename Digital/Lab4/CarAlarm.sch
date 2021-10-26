<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_28" />
        <signal name="SW0_P33" />
        <signal name="SW1_P34" />
        <signal name="SW2_P36" />
        <signal name="SW3_P37" />
        <signal name="SW4_P38" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="LED0_P48" />
        <port polarity="Input" name="SW0_P33" />
        <port polarity="Input" name="SW1_P34" />
        <port polarity="Input" name="SW2_P36" />
        <port polarity="Input" name="SW3_P37" />
        <port polarity="Input" name="SW4_P38" />
        <port polarity="Output" name="LED0_P48" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="SW4_P38" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="SW4_P38" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="SW0_P33" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="SW2_P36" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="SW1_P34" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="LED0_P48" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="SW1_P34" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="SW2_P36" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="SW4_P38" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="SW3_P37" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="SW3_P37" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="496" name="XLXI_1" orien="R0" />
        <instance x="1280" y="912" name="XLXI_3" orien="R0" />
        <instance x="1280" y="1120" name="XLXI_4" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1280" y1="576" y2="576" x1="1248" />
        </branch>
        <instance x="992" y="672" name="XLXI_5" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1280" y1="784" y2="784" x1="1248" />
        </branch>
        <instance x="992" y="880" name="XLXI_6" orien="R0" />
        <instance x="1616" y="592" name="XLXI_7" orien="R0" />
        <instance x="1616" y="1024" name="XLXI_8" orien="R0" />
        <instance x="1936" y="800" name="XLXI_9" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1904" y1="496" y2="496" x1="1872" />
            <wire x2="1904" y1="496" y2="672" x1="1904" />
            <wire x2="1936" y1="672" y2="672" x1="1904" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1904" y1="928" y2="928" x1="1872" />
            <wire x2="1904" y1="736" y2="928" x1="1904" />
            <wire x2="1936" y1="736" y2="736" x1="1904" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1568" y1="400" y2="400" x1="1536" />
            <wire x2="1568" y1="400" y2="464" x1="1568" />
            <wire x2="1616" y1="464" y2="464" x1="1568" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1568" y1="608" y2="608" x1="1536" />
            <wire x2="1568" y1="528" y2="608" x1="1568" />
            <wire x2="1616" y1="528" y2="528" x1="1568" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1568" y1="816" y2="816" x1="1536" />
            <wire x2="1568" y1="816" y2="896" x1="1568" />
            <wire x2="1616" y1="896" y2="896" x1="1568" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1568" y1="1024" y2="1024" x1="1536" />
            <wire x2="1568" y1="960" y2="1024" x1="1568" />
            <wire x2="1616" y1="960" y2="960" x1="1568" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1280" y1="368" y2="368" x1="1264" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="992" y1="544" y2="544" x1="960" />
        </branch>
        <instance x="736" y="576" name="XLXI_11" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="992" y1="816" y2="816" x1="960" />
        </branch>
        <instance x="736" y="848" name="XLXI_15" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1280" y1="1056" y2="1056" x1="1248" />
        </branch>
        <instance x="1024" y="1088" name="XLXI_16" orien="R0" />
        <instance x="1040" y="400" name="XLXI_18" orien="R0" />
        <branch name="SW0_P33">
            <wire x2="240" y1="320" y2="320" x1="192" />
            <wire x2="720" y1="320" y2="320" x1="240" />
            <wire x2="720" y1="320" y2="992" x1="720" />
            <wire x2="1280" y1="992" y2="992" x1="720" />
        </branch>
        <branch name="SW1_P34">
            <wire x2="224" y1="544" y2="544" x1="192" />
            <wire x2="224" y1="544" y2="656" x1="224" />
            <wire x2="704" y1="656" y2="656" x1="224" />
            <wire x2="704" y1="656" y2="752" x1="704" />
            <wire x2="992" y1="752" y2="752" x1="704" />
            <wire x2="736" y1="544" y2="544" x1="704" />
            <wire x2="704" y1="544" y2="656" x1="704" />
        </branch>
        <branch name="SW2_P36">
            <wire x2="240" y1="704" y2="704" x1="192" />
            <wire x2="240" y1="704" y2="720" x1="240" />
            <wire x2="656" y1="720" y2="720" x1="240" />
            <wire x2="656" y1="720" y2="816" x1="656" />
            <wire x2="736" y1="816" y2="816" x1="656" />
            <wire x2="992" y1="608" y2="608" x1="656" />
            <wire x2="656" y1="608" y2="720" x1="656" />
        </branch>
        <branch name="SW3_P37">
            <wire x2="240" y1="864" y2="864" x1="192" />
            <wire x2="432" y1="864" y2="864" x1="240" />
            <wire x2="432" y1="480" y2="864" x1="432" />
            <wire x2="640" y1="480" y2="480" x1="432" />
            <wire x2="640" y1="480" y2="640" x1="640" />
            <wire x2="1280" y1="640" y2="640" x1="640" />
            <wire x2="656" y1="368" y2="368" x1="640" />
            <wire x2="1040" y1="368" y2="368" x1="656" />
            <wire x2="640" y1="368" y2="480" x1="640" />
        </branch>
        <branch name="SW4_P38">
            <wire x2="224" y1="1072" y2="1072" x1="176" />
            <wire x2="688" y1="1008" y2="1008" x1="224" />
            <wire x2="688" y1="1008" y2="1056" x1="688" />
            <wire x2="1024" y1="1056" y2="1056" x1="688" />
            <wire x2="224" y1="1008" y2="1072" x1="224" />
            <wire x2="1280" y1="432" y2="432" x1="688" />
            <wire x2="688" y1="432" y2="856" x1="688" />
            <wire x2="688" y1="856" y2="864" x1="688" />
            <wire x2="1024" y1="864" y2="864" x1="688" />
            <wire x2="688" y1="864" y2="1008" x1="688" />
            <wire x2="1024" y1="848" y2="864" x1="1024" />
            <wire x2="1280" y1="848" y2="848" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="192" y="544" name="SW1_P34" orien="R180" />
        <iomarker fontsize="28" x="192" y="704" name="SW2_P36" orien="R180" />
        <iomarker fontsize="28" x="192" y="864" name="SW3_P37" orien="R180" />
        <iomarker fontsize="28" x="176" y="1072" name="SW4_P38" orien="R180" />
        <instance x="1280" y="704" name="XLXI_19" orien="R0" />
        <iomarker fontsize="28" x="192" y="320" name="SW0_P33" orien="R180" />
        <branch name="LED0_P48">
            <wire x2="2224" y1="704" y2="704" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="704" name="LED0_P48" orien="R0" />
    </sheet>
</drawing>