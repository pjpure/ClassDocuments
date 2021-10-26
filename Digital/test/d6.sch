<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="a" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="g" />
        <signal name="f" />
        <signal name="b" />
        <signal name="inputM" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="b" />
        <port polarity="Input" name="inputM" />
        <blockdef name="obuf">
            <timestamp>2009-3-20T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="c" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="d" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_5">
            <blockpin signalname="e" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="g" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="a" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="inputM" name="I" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_1">
            <blockpin signalname="inputM" name="I" />
            <blockpin signalname="b" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="a">
            <wire x2="1712" y1="496" y2="496" x1="1504" />
        </branch>
        <branch name="c">
            <wire x2="1712" y1="592" y2="592" x1="1504" />
        </branch>
        <branch name="d">
            <wire x2="1712" y1="688" y2="688" x1="1504" />
        </branch>
        <branch name="e">
            <wire x2="1712" y1="784" y2="784" x1="1504" />
        </branch>
        <branch name="g">
            <wire x2="1728" y1="880" y2="880" x1="1504" />
        </branch>
        <instance x="1504" y="656" name="XLXI_3" orien="R270" />
        <instance x="1504" y="752" name="XLXI_4" orien="R270" />
        <instance x="1504" y="848" name="XLXI_5" orien="R270" />
        <instance x="1504" y="944" name="XLXI_6" orien="R270" />
        <instance x="1376" y="432" name="XLXI_7" orien="R90" />
        <iomarker fontsize="28" x="1712" y="496" name="a" orien="R0" />
        <iomarker fontsize="28" x="1712" y="592" name="c" orien="R0" />
        <iomarker fontsize="28" x="1712" y="688" name="d" orien="R0" />
        <iomarker fontsize="28" x="1712" y="784" name="e" orien="R0" />
        <iomarker fontsize="28" x="1728" y="880" name="g" orien="R0" />
        <iomarker fontsize="28" x="1632" y="1264" name="f" orien="R0" />
        <iomarker fontsize="28" x="1648" y="1088" name="b" orien="R0" />
        <instance x="1376" y="1296" name="XLXI_2" orien="R0" />
        <instance x="1392" y="1120" name="XLXI_1" orien="R0" />
        <branch name="f">
            <wire x2="1632" y1="1264" y2="1264" x1="1600" />
        </branch>
        <branch name="b">
            <wire x2="1648" y1="1088" y2="1088" x1="1616" />
        </branch>
        <branch name="inputM">
            <wire x2="1264" y1="1088" y2="1088" x1="1136" />
            <wire x2="1392" y1="1088" y2="1088" x1="1264" />
            <wire x2="1264" y1="1088" y2="1264" x1="1264" />
            <wire x2="1376" y1="1264" y2="1264" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1136" y="1088" name="inputM" orien="R180" />
    </sheet>
</drawing>