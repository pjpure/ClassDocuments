<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sw" />
        <signal name="g" />
        <signal name="f" />
        <signal name="e" />
        <signal name="d" />
        <signal name="c" />
        <signal name="b" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="sw1" />
        <signal name="XLXN_94" />
        <signal name="clock" />
        <signal name="XLXN_96" />
        <signal name="a" />
        <signal name="Com(38:0)" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <signal name="XLXN_108" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="b" />
        <port polarity="Input" name="sw1" />
        <port polarity="Input" name="clock" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="Com(38:0)" />
        <blockdef name="BCD27">
            <timestamp>2020-11-25T21:16:44</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
        </blockdef>
        <blockdef name="nub15">
            <timestamp>2020-11-26T7:5:24</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
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
        <blockdef name="Clock_Divider">
            <timestamp>2020-12-15T13:33:10</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="debounce">
            <timestamp>2020-12-15T13:32:31</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MuxSEL37">
            <timestamp>2020-12-16T7:25:14</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Clock5">
            <timestamp>2020-12-16T7:41:21</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="BCD27" name="XLXI_1">
            <blockpin signalname="a" name="A_7" />
            <blockpin signalname="XLXN_90" name="Bit_0" />
            <blockpin signalname="XLXN_91" name="Bit_1" />
            <blockpin signalname="XLXN_92" name="Bit_2" />
            <blockpin signalname="XLXN_89" name="Bit_3" />
            <blockpin signalname="b" name="B_7" />
            <blockpin signalname="c" name="C_7" />
            <blockpin signalname="d" name="D_7" />
            <blockpin signalname="e" name="E_7" />
            <blockpin signalname="f" name="F_7" />
            <blockpin signalname="g" name="G_7" />
        </block>
        <block symbolname="nub15" name="XLXI_22">
            <blockpin signalname="XLXN_90" name="a" />
            <blockpin signalname="XLXN_91" name="b" />
            <blockpin signalname="XLXN_92" name="c" />
            <blockpin signalname="sw" name="sw" />
        </block>
        <block symbolname="gnd" name="XLXI_75">
            <blockpin signalname="XLXN_89" name="G" />
        </block>
        <block symbolname="debounce" name="XLXI_77">
            <blockpin signalname="XLXN_94" name="Clock" />
            <blockpin signalname="sw1" name="sw" />
            <blockpin signalname="sw" name="outp" />
        </block>
        <block symbolname="gnd" name="XLXI_79">
            <blockpin signalname="XLXN_96" name="G" />
        </block>
        <block symbolname="MuxSEL37" name="XLXI_82">
            <blockpin signalname="XLXN_98" name="CLK" />
            <blockpin signalname="Com(38:0)" name="Q(38:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_84">
            <blockpin signalname="XLXN_99" name="G" />
        </block>
        <block symbolname="Clock_Divider" name="XLXI_83">
            <blockpin signalname="clock" name="clk" />
            <blockpin signalname="XLXN_99" name="reset" />
            <blockpin signalname="XLXN_98" name="clock_out" />
        </block>
        <block symbolname="Clock5" name="XLXI_88">
            <blockpin signalname="clock" name="clk" />
            <blockpin signalname="XLXN_96" name="reset" />
            <blockpin signalname="XLXN_94" name="clock_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="sw">
            <wire x2="1104" y1="704" y2="704" x1="1040" />
        </branch>
        <instance x="1632" y="1104" name="XLXI_1" orien="R0">
        </instance>
        <branch name="g">
            <wire x2="2048" y1="688" y2="688" x1="2016" />
        </branch>
        <branch name="f">
            <wire x2="2048" y1="752" y2="752" x1="2016" />
        </branch>
        <branch name="e">
            <wire x2="2048" y1="816" y2="816" x1="2016" />
        </branch>
        <branch name="d">
            <wire x2="2048" y1="880" y2="880" x1="2016" />
        </branch>
        <branch name="c">
            <wire x2="2048" y1="944" y2="944" x1="2016" />
        </branch>
        <branch name="b">
            <wire x2="2048" y1="1008" y2="1008" x1="2016" />
        </branch>
        <instance x="1104" y="864" name="XLXI_22" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2048" y="688" name="g" orien="R0" />
        <iomarker fontsize="28" x="2048" y="752" name="f" orien="R0" />
        <iomarker fontsize="28" x="2048" y="816" name="e" orien="R0" />
        <iomarker fontsize="28" x="2048" y="880" name="d" orien="R0" />
        <iomarker fontsize="28" x="2048" y="944" name="c" orien="R0" />
        <iomarker fontsize="28" x="2048" y="1008" name="b" orien="R0" />
        <branch name="XLXN_89">
            <wire x2="1632" y1="880" y2="880" x1="1568" />
            <wire x2="1568" y1="880" y2="896" x1="1568" />
        </branch>
        <instance x="1504" y="1024" name="XLXI_75" orien="R0" />
        <branch name="XLXN_90">
            <wire x2="1552" y1="832" y2="832" x1="1488" />
            <wire x2="1552" y1="688" y2="832" x1="1552" />
            <wire x2="1632" y1="688" y2="688" x1="1552" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="1536" y1="768" y2="768" x1="1488" />
            <wire x2="1536" y1="752" y2="768" x1="1536" />
            <wire x2="1632" y1="752" y2="752" x1="1536" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="1520" y1="704" y2="704" x1="1488" />
            <wire x2="1520" y1="704" y2="816" x1="1520" />
            <wire x2="1632" y1="816" y2="816" x1="1520" />
        </branch>
        <branch name="sw1">
            <wire x2="640" y1="768" y2="768" x1="608" />
            <wire x2="656" y1="768" y2="768" x1="640" />
        </branch>
        <instance x="656" y="800" name="XLXI_77" orien="R0">
        </instance>
        <iomarker fontsize="28" x="608" y="768" name="sw1" orien="R180" />
        <branch name="XLXN_94">
            <wire x2="656" y1="704" y2="704" x1="592" />
        </branch>
        <branch name="clock">
            <wire x2="96" y1="944" y2="944" x1="64" />
            <wire x2="64" y1="944" y2="1168" x1="64" />
            <wire x2="160" y1="1168" y2="1168" x1="64" />
            <wire x2="160" y1="1168" y2="1184" x1="160" />
            <wire x2="240" y1="1184" y2="1184" x1="160" />
            <wire x2="128" y1="704" y2="704" x1="80" />
            <wire x2="208" y1="704" y2="704" x1="128" />
            <wire x2="96" y1="640" y2="944" x1="96" />
            <wire x2="128" y1="640" y2="640" x1="96" />
            <wire x2="128" y1="640" y2="704" x1="128" />
        </branch>
        <iomarker fontsize="28" x="80" y="704" name="clock" orien="R180" />
        <branch name="a">
            <wire x2="2032" y1="1072" y2="1072" x1="2016" />
            <wire x2="2048" y1="1072" y2="1072" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2048" y="1072" name="a" orien="R0" />
        <instance x="656" y="1216" name="XLXI_82" orien="R0">
        </instance>
        <branch name="Com(38:0)">
            <wire x2="1088" y1="1184" y2="1184" x1="1040" />
            <wire x2="1376" y1="1184" y2="1184" x1="1088" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="656" y1="1184" y2="1184" x1="624" />
        </branch>
        <instance x="176" y="1408" name="XLXI_84" orien="R0" />
        <branch name="XLXN_99">
            <wire x2="240" y1="1248" y2="1280" x1="240" />
        </branch>
        <instance x="240" y="1280" name="XLXI_83" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1376" y="1184" name="Com(38:0)" orien="R0" />
        <branch name="XLXN_96">
            <wire x2="208" y1="768" y2="768" x1="192" />
            <wire x2="192" y1="768" y2="816" x1="192" />
        </branch>
        <instance x="128" y="944" name="XLXI_79" orien="R0" />
        <instance x="208" y="800" name="XLXI_88" orien="R0">
        </instance>
    </sheet>
</drawing>