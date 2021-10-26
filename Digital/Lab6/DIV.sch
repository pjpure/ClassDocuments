<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="CI" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="co" />
        <port polarity="Input" name="CI" />
        <port polarity="Output" name="co" />
        <blockdef name="div2">
            <timestamp>2020-10-21T15:28:32</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="div2" name="XLXI_11">
            <blockpin signalname="XLXN_22" name="clock_in" />
            <blockpin signalname="XLXN_23" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_12">
            <blockpin signalname="CI" name="clock_in" />
            <blockpin signalname="XLXN_22" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_13">
            <blockpin signalname="XLXN_23" name="clock_in" />
            <blockpin signalname="XLXN_24" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_14">
            <blockpin signalname="XLXN_24" name="clock_in" />
            <blockpin signalname="XLXN_29" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_15">
            <blockpin signalname="XLXN_26" name="clock_in" />
            <blockpin signalname="XLXN_27" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_16">
            <blockpin signalname="XLXN_29" name="clock_in" />
            <blockpin signalname="XLXN_26" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_17">
            <blockpin signalname="XLXN_27" name="clock_in" />
            <blockpin signalname="XLXN_28" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_18">
            <blockpin signalname="XLXN_28" name="clock_in" />
            <blockpin signalname="XLXN_33" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_19">
            <blockpin signalname="XLXN_30" name="clock_in" />
            <blockpin signalname="XLXN_31" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_20">
            <blockpin signalname="XLXN_33" name="clock_in" />
            <blockpin signalname="XLXN_30" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_21">
            <blockpin signalname="XLXN_31" name="clock_in" />
            <blockpin signalname="XLXN_32" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_22">
            <blockpin signalname="XLXN_32" name="clock_in" />
            <blockpin signalname="XLXN_37" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_23">
            <blockpin signalname="XLXN_34" name="clock_in" />
            <blockpin signalname="XLXN_35" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_24">
            <blockpin signalname="XLXN_37" name="clock_in" />
            <blockpin signalname="XLXN_34" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_25">
            <blockpin signalname="XLXN_35" name="clock_in" />
            <blockpin signalname="XLXN_36" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_26">
            <blockpin signalname="XLXN_36" name="clock_in" />
            <blockpin signalname="XLXN_61" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_28">
            <blockpin signalname="XLXN_58" name="clock_in" />
            <blockpin signalname="XLXN_59" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_29">
            <blockpin signalname="XLXN_61" name="clock_in" />
            <blockpin signalname="XLXN_58" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_30">
            <blockpin signalname="XLXN_59" name="clock_in" />
            <blockpin signalname="XLXN_60" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_31">
            <blockpin signalname="XLXN_60" name="clock_in" />
            <blockpin signalname="XLXN_65" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_32">
            <blockpin signalname="XLXN_62" name="clock_in" />
            <blockpin signalname="XLXN_63" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_33">
            <blockpin signalname="XLXN_65" name="clock_in" />
            <blockpin signalname="XLXN_62" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_34">
            <blockpin signalname="XLXN_63" name="clock_in" />
            <blockpin signalname="XLXN_64" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_35">
            <blockpin signalname="XLXN_64" name="clock_in" />
            <blockpin signalname="XLXN_69" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_36">
            <blockpin signalname="XLXN_66" name="clock_in" />
            <blockpin signalname="XLXN_67" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_37">
            <blockpin signalname="XLXN_69" name="clock_in" />
            <blockpin signalname="XLXN_66" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_38">
            <blockpin signalname="XLXN_67" name="clock_in" />
            <blockpin signalname="XLXN_68" name="clock_out" />
        </block>
        <block symbolname="div2" name="XLXI_39">
            <blockpin signalname="XLXN_68" name="clock_in" />
            <blockpin signalname="co" name="clock_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1248" y="432" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_22">
            <wire x2="1248" y1="400" y2="400" x1="1216" />
        </branch>
        <instance x="832" y="432" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_23">
            <wire x2="1664" y1="400" y2="400" x1="1632" />
        </branch>
        <instance x="1664" y="432" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_24">
            <wire x2="2080" y1="400" y2="400" x1="2048" />
        </branch>
        <instance x="2080" y="432" name="XLXI_14" orien="R0">
        </instance>
        <branch name="CI">
            <wire x2="832" y1="400" y2="400" x1="800" />
        </branch>
        <instance x="1280" y="688" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_26">
            <wire x2="1280" y1="656" y2="656" x1="1248" />
        </branch>
        <instance x="864" y="688" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_27">
            <wire x2="1696" y1="656" y2="656" x1="1664" />
        </branch>
        <instance x="1696" y="688" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_28">
            <wire x2="2112" y1="656" y2="656" x1="2080" />
        </branch>
        <instance x="2112" y="688" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_29">
            <wire x2="832" y1="544" y2="656" x1="832" />
            <wire x2="864" y1="656" y2="656" x1="832" />
            <wire x2="2544" y1="544" y2="544" x1="832" />
            <wire x2="2544" y1="400" y2="400" x1="2464" />
            <wire x2="2544" y1="400" y2="544" x1="2544" />
        </branch>
        <instance x="1280" y="944" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_30">
            <wire x2="1280" y1="912" y2="912" x1="1248" />
        </branch>
        <instance x="864" y="944" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_31">
            <wire x2="1696" y1="912" y2="912" x1="1664" />
        </branch>
        <instance x="1696" y="944" name="XLXI_21" orien="R0">
        </instance>
        <branch name="XLXN_32">
            <wire x2="2112" y1="912" y2="912" x1="2080" />
        </branch>
        <instance x="2112" y="944" name="XLXI_22" orien="R0">
        </instance>
        <branch name="XLXN_33">
            <wire x2="864" y1="912" y2="912" x1="832" />
            <wire x2="832" y1="912" y2="1024" x1="832" />
            <wire x2="2576" y1="1024" y2="1024" x1="832" />
            <wire x2="2576" y1="656" y2="656" x1="2496" />
            <wire x2="2576" y1="656" y2="1024" x1="2576" />
        </branch>
        <instance x="1280" y="1200" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_34">
            <wire x2="1280" y1="1168" y2="1168" x1="1248" />
        </branch>
        <instance x="864" y="1200" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_35">
            <wire x2="1696" y1="1168" y2="1168" x1="1664" />
        </branch>
        <instance x="1696" y="1200" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_36">
            <wire x2="2096" y1="1168" y2="1168" x1="2080" />
            <wire x2="2112" y1="1168" y2="1168" x1="2096" />
        </branch>
        <instance x="2112" y="1200" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_37">
            <wire x2="864" y1="1168" y2="1168" x1="832" />
            <wire x2="832" y1="1168" y2="1264" x1="832" />
            <wire x2="2560" y1="1264" y2="1264" x1="832" />
            <wire x2="2560" y1="912" y2="912" x1="2496" />
            <wire x2="2560" y1="912" y2="1264" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="800" y="400" name="CI" orien="R180" />
        <instance x="1296" y="1472" name="XLXI_28" orien="R0">
        </instance>
        <branch name="XLXN_58">
            <wire x2="1296" y1="1440" y2="1440" x1="1264" />
        </branch>
        <instance x="880" y="1472" name="XLXI_29" orien="R0">
        </instance>
        <branch name="XLXN_59">
            <wire x2="1712" y1="1440" y2="1440" x1="1680" />
        </branch>
        <instance x="1712" y="1472" name="XLXI_30" orien="R0">
        </instance>
        <branch name="XLXN_60">
            <wire x2="2128" y1="1440" y2="1440" x1="2096" />
        </branch>
        <instance x="2128" y="1472" name="XLXI_31" orien="R0">
        </instance>
        <branch name="XLXN_61">
            <wire x2="848" y1="1344" y2="1440" x1="848" />
            <wire x2="880" y1="1440" y2="1440" x1="848" />
            <wire x2="2544" y1="1344" y2="1344" x1="848" />
            <wire x2="2544" y1="1168" y2="1168" x1="2496" />
            <wire x2="2544" y1="1168" y2="1344" x1="2544" />
        </branch>
        <instance x="1296" y="1664" name="XLXI_32" orien="R0">
        </instance>
        <branch name="XLXN_62">
            <wire x2="1296" y1="1632" y2="1632" x1="1264" />
        </branch>
        <instance x="880" y="1664" name="XLXI_33" orien="R0">
        </instance>
        <branch name="XLXN_63">
            <wire x2="1712" y1="1632" y2="1632" x1="1680" />
        </branch>
        <instance x="1712" y="1664" name="XLXI_34" orien="R0">
        </instance>
        <branch name="XLXN_64">
            <wire x2="2128" y1="1632" y2="1632" x1="2096" />
        </branch>
        <instance x="2128" y="1664" name="XLXI_35" orien="R0">
        </instance>
        <branch name="XLXN_65">
            <wire x2="880" y1="1632" y2="1632" x1="848" />
            <wire x2="848" y1="1632" y2="1728" x1="848" />
            <wire x2="2592" y1="1728" y2="1728" x1="848" />
            <wire x2="2592" y1="1440" y2="1440" x1="2512" />
            <wire x2="2592" y1="1440" y2="1728" x1="2592" />
        </branch>
        <instance x="1280" y="1840" name="XLXI_36" orien="R0">
        </instance>
        <branch name="XLXN_66">
            <wire x2="1280" y1="1808" y2="1808" x1="1248" />
        </branch>
        <instance x="864" y="1840" name="XLXI_37" orien="R0">
        </instance>
        <branch name="XLXN_67">
            <wire x2="1696" y1="1808" y2="1808" x1="1664" />
        </branch>
        <instance x="1696" y="1840" name="XLXI_38" orien="R0">
        </instance>
        <branch name="XLXN_68">
            <wire x2="2112" y1="1808" y2="1808" x1="2080" />
        </branch>
        <instance x="2112" y="1840" name="XLXI_39" orien="R0">
        </instance>
        <branch name="XLXN_69">
            <wire x2="832" y1="1712" y2="1808" x1="832" />
            <wire x2="864" y1="1808" y2="1808" x1="832" />
            <wire x2="2576" y1="1712" y2="1712" x1="832" />
            <wire x2="2576" y1="1632" y2="1632" x1="2512" />
            <wire x2="2576" y1="1632" y2="1712" x1="2576" />
        </branch>
        <branch name="co">
            <wire x2="2512" y1="1808" y2="1808" x1="2496" />
            <wire x2="2800" y1="1808" y2="1808" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2800" y="1808" name="co" orien="R0" />
    </sheet>
</drawing>