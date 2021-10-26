<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW1_P24" />
        <signal name="SW0_P23" />
        <signal name="LED1_P33" />
        <signal name="LED0_P32" />
        <port polarity="Input" name="SW1_P24" />
        <port polarity="Input" name="SW0_P23" />
        <port polarity="Output" name="LED1_P33" />
        <port polarity="Output" name="LED0_P32" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="SW1_P24" name="I0" />
            <blockpin signalname="SW0_P23" name="I1" />
            <blockpin signalname="LED1_P33" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_3">
            <blockpin signalname="SW0_P23" name="I0" />
            <blockpin signalname="SW1_P24" name="I1" />
            <blockpin signalname="LED0_P32" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="432" y="752" name="XLXI_1" orien="R0" />
        <instance x="432" y="960" name="XLXI_3" orien="R0" />
        <branch name="SW1_P24">
            <wire x2="336" y1="688" y2="688" x1="176" />
            <wire x2="432" y1="688" y2="688" x1="336" />
            <wire x2="336" y1="688" y2="832" x1="336" />
            <wire x2="432" y1="832" y2="832" x1="336" />
        </branch>
        <branch name="SW0_P23">
            <wire x2="192" y1="624" y2="624" x1="176" />
            <wire x2="240" y1="624" y2="624" x1="192" />
            <wire x2="432" y1="624" y2="624" x1="240" />
            <wire x2="240" y1="624" y2="896" x1="240" />
            <wire x2="432" y1="896" y2="896" x1="240" />
        </branch>
        <iomarker fontsize="28" x="176" y="624" name="SW0_P23" orien="R180" />
        <iomarker fontsize="28" x="176" y="688" name="SW1_P24" orien="R180" />
        <branch name="LED1_P33">
            <wire x2="720" y1="656" y2="656" x1="688" />
        </branch>
        <iomarker fontsize="28" x="720" y="656" name="LED1_P33" orien="R0" />
        <branch name="LED0_P32">
            <wire x2="720" y1="864" y2="864" x1="688" />
        </branch>
        <iomarker fontsize="28" x="720" y="864" name="LED0_P32" orien="R0" />
    </sheet>
</drawing>