<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="In1(7:0)" />
        <signal name="In2(7:0)" />
        <signal name="XLXN_1(0:7)" />
        <signal name="XLXN_2(0:3)" />
        <signal name="XLXN_3" />
        <port polarity="Input" name="In1(7:0)" />
        <port polarity="Input" name="In2(7:0)" />
        <port polarity="Input" name="XLXN_3" />
        <blockdef name="add8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
        </blockdef>
        <blockdef name="Mux16">
            <timestamp>2020-11-4T13:34:56</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <blockdef name="BCD27">
            <timestamp>2020-11-4T12:45:5</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
        </blockdef>
        <blockdef name="DIV">
            <timestamp>2020-10-29T8:0:24</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="add8" name="XLXI_1">
            <blockpin signalname="In1(7:0)" name="A(7:0)" />
            <blockpin signalname="In2(7:0)" name="B(7:0)" />
            <blockpin name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_1(0:7)" name="S(7:0)" />
        </block>
        <block symbolname="Mux16" name="XLXI_2">
            <blockpin name="Clock" />
            <blockpin signalname="XLXN_1(0:7)" name="Inp(0:7)" />
            <blockpin signalname="XLXN_2(0:3)" name="S(0:3)" />
        </block>
        <block symbolname="BCD27" name="XLXI_3">
            <blockpin name="A_7" />
            <blockpin signalname="XLXN_2(0:3)" name="bit(0:3)" />
            <blockpin name="B_7" />
            <blockpin name="C_7" />
            <blockpin name="D_7" />
            <blockpin name="E_7" />
            <blockpin name="F_7" />
            <blockpin name="G_7" />
        </block>
        <block symbolname="DIV" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="CI" />
            <blockpin name="CO" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1408" y="1280" name="XLXI_1" orien="R0" />
        <branch name="In1(7:0)">
            <wire x2="1408" y1="960" y2="960" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="960" name="In1(7:0)" orien="R180" />
        <branch name="In2(7:0)">
            <wire x2="1408" y1="1088" y2="1088" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="1088" name="In2(7:0)" orien="R180" />
        <instance x="1984" y="1120" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(0:7)">
            <wire x2="1984" y1="1024" y2="1024" x1="1856" />
        </branch>
        <instance x="2416" y="1440" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2(0:3)">
            <wire x2="2416" y1="1024" y2="1024" x1="2368" />
        </branch>
        <instance x="1440" y="1360" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1440" y1="1328" y2="1328" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1328" name="XLXN_3" orien="R180" />
    </sheet>
</drawing>