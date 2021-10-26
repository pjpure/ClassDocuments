<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="a" />
        <signal name="com0" />
        <signal name="com3" />
        <signal name="com2" />
        <signal name="com1" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="com0" />
        <port polarity="Output" name="com3" />
        <port polarity="Output" name="com2" />
        <port polarity="Output" name="com1" />
        <blockdef name="CLK1Hz">
            <timestamp>2020-11-25T20:28:56</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="counter05">
            <timestamp>2020-11-25T20:30:59</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="BCD27">
            <timestamp>2020-11-25T20:13:51</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="CLK1Hz" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="Clk1Hz" />
            <blockpin signalname="clk" name="clk20MHz" />
        </block>
        <block symbolname="counter05" name="XLXI_3">
            <blockpin signalname="XLXN_5" name="A" />
            <blockpin signalname="XLXN_4" name="B" />
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="XLXN_2" name="CLK" />
            <blockpin signalname="XLXN_7" name="CLR" />
        </block>
        <block symbolname="BCD27" name="XLXI_4">
            <blockpin signalname="XLXN_6" name="Bit_0" />
            <blockpin signalname="XLXN_3" name="Bit_1" />
            <blockpin signalname="XLXN_4" name="Bit_2" />
            <blockpin signalname="XLXN_5" name="Bit_3" />
            <blockpin signalname="g" name="G_7" />
            <blockpin signalname="f" name="F_7" />
            <blockpin signalname="e" name="E_7" />
            <blockpin signalname="d" name="D_7" />
            <blockpin signalname="c" name="C_7" />
            <blockpin signalname="b" name="B_7" />
            <blockpin signalname="a" name="A_7" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_6" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_7" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_7">
            <blockpin signalname="com0" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="com1" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_9">
            <blockpin signalname="com2" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_10">
            <blockpin signalname="com3" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="784" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="784" y1="1168" y2="1168" x1="752" />
        </branch>
        <iomarker fontsize="28" x="752" y="1168" name="clk" orien="R180" />
        <branch name="XLXN_2">
            <wire x2="1200" y1="1168" y2="1168" x1="1168" />
        </branch>
        <instance x="1200" y="1328" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1616" y1="1168" y2="1168" x1="1584" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1616" y1="1232" y2="1232" x1="1584" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1616" y1="1296" y2="1296" x1="1584" />
        </branch>
        <instance x="1616" y="1520" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_6">
            <wire x2="1616" y1="1072" y2="1104" x1="1616" />
        </branch>
        <instance x="1680" y="944" name="XLXI_5" orien="R180" />
        <branch name="XLXN_7">
            <wire x2="1200" y1="1232" y2="1232" x1="1168" />
        </branch>
        <instance x="1104" y="1360" name="XLXI_6" orien="R0" />
        <branch name="g">
            <wire x2="2032" y1="1104" y2="1104" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1104" name="g" orien="R0" />
        <branch name="f">
            <wire x2="2032" y1="1168" y2="1168" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1168" name="f" orien="R0" />
        <branch name="e">
            <wire x2="2032" y1="1232" y2="1232" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1232" name="e" orien="R0" />
        <branch name="d">
            <wire x2="2032" y1="1296" y2="1296" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1296" name="d" orien="R0" />
        <branch name="c">
            <wire x2="2032" y1="1360" y2="1360" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1360" name="c" orien="R0" />
        <branch name="b">
            <wire x2="2032" y1="1424" y2="1424" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1424" name="b" orien="R0" />
        <branch name="a">
            <wire x2="2032" y1="1488" y2="1488" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2032" y="1488" name="a" orien="R0" />
        <branch name="com0">
            <wire x2="1280" y1="1696" y2="1696" x1="848" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1696" name="com0" orien="R0" />
        <iomarker fontsize="28" x="1280" y="1760" name="com1" orien="R0" />
        <iomarker fontsize="28" x="1280" y="1920" name="com3" orien="R0" />
        <iomarker fontsize="28" x="1280" y="1840" name="com2" orien="R0" />
        <branch name="com3">
            <wire x2="1280" y1="1920" y2="1920" x1="832" />
        </branch>
        <branch name="com2">
            <wire x2="1280" y1="1840" y2="1840" x1="832" />
        </branch>
        <branch name="com1">
            <wire x2="1280" y1="1760" y2="1760" x1="848" />
        </branch>
        <instance x="720" y="1632" name="XLXI_7" orien="R90" />
        <instance x="720" y="1696" name="XLXI_8" orien="R90" />
        <instance x="704" y="1776" name="XLXI_9" orien="R90" />
        <instance x="704" y="1856" name="XLXI_10" orien="R90" />
    </sheet>
</drawing>