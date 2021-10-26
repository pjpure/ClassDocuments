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
        <signal name="XLXN_3" />
        <signal name="clk20MHz" />
        <signal name="Clk1Hz" />
        <port polarity="Input" name="clk20MHz" />
        <port polarity="Output" name="Clk1Hz" />
        <blockdef name="DIV">
            <timestamp>2020-11-4T14:16:52</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="DIV" name="XLXI_1">
            <blockpin signalname="clk20MHz" name="CI" />
            <blockpin signalname="XLXN_1" name="CO" />
        </block>
        <block symbolname="DIV" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="CI" />
            <blockpin signalname="XLXN_2" name="CO" />
        </block>
        <block symbolname="DIV" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="CI" />
            <blockpin signalname="XLXN_3" name="CO" />
        </block>
        <block symbolname="DIV" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="CI" />
            <blockpin signalname="Clk1Hz" name="CO" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="784" y="1152" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1200" y1="1120" y2="1120" x1="1168" />
        </branch>
        <instance x="1200" y="1152" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1616" y1="1120" y2="1120" x1="1584" />
        </branch>
        <instance x="1616" y="1152" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="2032" y1="1120" y2="1120" x1="2000" />
        </branch>
        <instance x="2032" y="1152" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clk20MHz">
            <wire x2="784" y1="1120" y2="1120" x1="752" />
        </branch>
        <iomarker fontsize="28" x="752" y="1120" name="clk20MHz" orien="R180" />
        <branch name="Clk1Hz">
            <wire x2="2448" y1="1120" y2="1120" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1120" name="Clk1Hz" orien="R0" />
    </sheet>
</drawing>