<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="O(0)" />
        <signal name="O(1)" />
        <signal name="O(2)" />
        <signal name="Clock" />
        <signal name="O(3)" />
        <signal name="D(3:0)" />
        <signal name="D(3)" />
        <signal name="D(0)" />
        <signal name="XLXN_57" />
        <signal name="Shift" />
        <signal name="Load" />
        <signal name="XLXN_63" />
        <signal name="XLXN_66" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="D(1)" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="D(2)" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="O(3:0)" />
        <signal name="C25M" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_97" />
        <signal name="XLXN_100" />
        <port polarity="Input" name="Clock" />
        <port polarity="Input" name="D(3:0)" />
        <port polarity="Input" name="Shift" />
        <port polarity="Input" name="Load" />
        <port polarity="Output" name="O(3:0)" />
        <port polarity="Input" name="C25M" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
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
        <blockdef name="cd4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="cc16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_74" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_89" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_84" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="D(3)" name="I0" />
            <blockpin signalname="Shift" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="O(2)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="Shift" name="I0" />
            <blockpin signalname="O(3)" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="O(1)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="Shift" name="I0" />
            <blockpin signalname="O(2)" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="O(0)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="Shift" name="I0" />
            <blockpin signalname="O(1)" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_29">
            <blockpin signalname="Shift" name="I" />
            <blockpin signalname="XLXN_57" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_30">
            <blockpin signalname="XLXN_57" name="I0" />
            <blockpin signalname="D(0)" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_32">
            <blockpin signalname="XLXN_63" name="I0" />
            <blockpin signalname="XLXN_66" name="I1" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="XLXN_100" name="C" />
            <blockpin signalname="XLXN_70" name="D" />
            <blockpin signalname="O(0)" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_37">
            <blockpin signalname="Load" name="I" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_38">
            <blockpin signalname="Load" name="I0" />
            <blockpin signalname="D(0)" name="I1" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_39">
            <blockpin signalname="XLXN_68" name="I0" />
            <blockpin signalname="XLXN_69" name="I1" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_40">
            <blockpin signalname="XLXN_74" name="I0" />
            <blockpin signalname="XLXN_71" name="I1" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_41">
            <blockpin signalname="Load" name="I" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_42">
            <blockpin signalname="Load" name="I0" />
            <blockpin signalname="D(1)" name="I1" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_43">
            <blockpin signalname="XLXN_72" name="I0" />
            <blockpin signalname="XLXN_73" name="I1" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="XLXN_100" name="C" />
            <blockpin signalname="XLXN_75" name="D" />
            <blockpin signalname="O(1)" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_45">
            <blockpin signalname="XLXN_89" name="I0" />
            <blockpin signalname="XLXN_78" name="I1" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_46">
            <blockpin signalname="Load" name="I" />
            <blockpin signalname="XLXN_78" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_47">
            <blockpin signalname="Load" name="I0" />
            <blockpin signalname="D(2)" name="I1" />
            <blockpin signalname="XLXN_80" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_48">
            <blockpin signalname="XLXN_79" name="I0" />
            <blockpin signalname="XLXN_80" name="I1" />
            <blockpin signalname="XLXN_90" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_49">
            <blockpin signalname="XLXN_84" name="I0" />
            <blockpin signalname="XLXN_81" name="I1" />
            <blockpin signalname="XLXN_82" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_50">
            <blockpin signalname="Load" name="I" />
            <blockpin signalname="XLXN_81" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_51">
            <blockpin signalname="Load" name="I0" />
            <blockpin signalname="D(3)" name="I1" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_52">
            <blockpin signalname="XLXN_82" name="I0" />
            <blockpin signalname="XLXN_83" name="I1" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="XLXN_100" name="C" />
            <blockpin signalname="XLXN_90" name="D" />
            <blockpin signalname="O(2)" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="XLXN_100" name="C" />
            <blockpin signalname="XLXN_85" name="D" />
            <blockpin signalname="O(3)" name="Q" />
        </block>
        <block symbolname="cd4ce" name="XLXI_56">
            <blockpin signalname="C25M" name="C" />
            <blockpin signalname="XLXN_94" name="CE" />
            <blockpin signalname="XLXN_93" name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q0" />
            <blockpin name="Q1" />
            <blockpin name="Q2" />
            <blockpin name="Q3" />
            <blockpin signalname="XLXN_100" name="TC" />
        </block>
        <block symbolname="cc16ce" name="XLXI_57">
            <blockpin signalname="C25M" name="C" />
            <blockpin signalname="XLXN_95" name="CE" />
            <blockpin signalname="XLXN_93" name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin signalname="XLXN_94" name="TC" />
        </block>
        <block symbolname="and2b1" name="XLXI_58">
            <blockpin signalname="XLXN_100" name="I0" />
            <blockpin signalname="Clock" name="I1" />
            <blockpin signalname="XLXN_95" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_59">
            <blockpin signalname="Clock" name="I" />
            <blockpin signalname="XLXN_93" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1264" y="800" name="XLXI_6" orien="R90" />
        <instance x="1888" y="800" name="XLXI_7" orien="R90" />
        <instance x="2512" y="800" name="XLXI_8" orien="R90" />
        <instance x="2576" y="544" name="XLXI_9" orien="R90" />
        <instance x="2448" y="544" name="XLXI_11" orien="R90" />
        <instance x="1952" y="544" name="XLXI_12" orien="R90" />
        <instance x="1824" y="544" name="XLXI_13" orien="R90" />
        <instance x="1328" y="544" name="XLXI_14" orien="R90" />
        <instance x="1200" y="544" name="XLXI_15" orien="R90" />
        <instance x="720" y="544" name="XLXI_16" orien="R90" />
        <branch name="XLXN_1">
            <wire x2="720" y1="800" y2="800" x1="688" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="816" y1="800" y2="800" x1="784" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1328" y1="800" y2="800" x1="1296" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1424" y1="800" y2="800" x1="1392" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2048" y1="800" y2="800" x1="2016" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1952" y1="800" y2="800" x1="1920" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2576" y1="800" y2="800" x1="2544" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2672" y1="800" y2="800" x1="2640" />
        </branch>
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1320" type="branch" />
            <wire x2="1200" y1="1216" y2="1216" x1="1136" />
            <wire x2="1200" y1="1216" y2="1328" x1="1200" />
            <wire x2="1200" y1="1328" y2="1424" x1="1200" />
            <wire x2="1200" y1="544" y2="1216" x1="1200" />
            <wire x2="1264" y1="544" y2="544" x1="1200" />
        </branch>
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1320" type="branch" />
            <wire x2="848" y1="528" y2="544" x1="848" />
            <wire x2="1808" y1="528" y2="528" x1="848" />
            <wire x2="1888" y1="528" y2="528" x1="1808" />
            <wire x2="1888" y1="528" y2="544" x1="1888" />
            <wire x2="1808" y1="528" y2="1216" x1="1808" />
            <wire x2="1808" y1="1216" y2="1328" x1="1808" />
            <wire x2="1808" y1="1328" y2="1424" x1="1808" />
            <wire x2="1808" y1="1216" y2="1216" x1="1744" />
        </branch>
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2464" y="1312" type="branch" />
            <wire x2="1456" y1="480" y2="544" x1="1456" />
            <wire x2="2464" y1="480" y2="480" x1="1456" />
            <wire x2="2512" y1="480" y2="480" x1="2464" />
            <wire x2="2512" y1="480" y2="544" x1="2512" />
            <wire x2="2464" y1="480" y2="1200" x1="2464" />
            <wire x2="2464" y1="1200" y2="1312" x1="2464" />
            <wire x2="2464" y1="1312" y2="1424" x1="2464" />
            <wire x2="2464" y1="1200" y2="1200" x1="2368" />
        </branch>
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="1312" type="branch" />
            <wire x2="2080" y1="496" y2="544" x1="2080" />
            <wire x2="2992" y1="496" y2="496" x1="2080" />
            <wire x2="2992" y1="496" y2="1184" x1="2992" />
            <wire x2="2992" y1="1184" y2="1200" x1="2992" />
            <wire x2="2992" y1="1200" y2="1312" x1="2992" />
            <wire x2="2992" y1="1312" y2="1424" x1="2992" />
        </branch>
        <branch name="D(3:0)">
            <wire x2="720" y1="112" y2="112" x1="576" />
            <wire x2="1104" y1="112" y2="112" x1="720" />
            <wire x2="1712" y1="112" y2="112" x1="1104" />
            <wire x2="2336" y1="112" y2="112" x1="1712" />
            <wire x2="2640" y1="112" y2="112" x1="2336" />
            <wire x2="2960" y1="112" y2="112" x1="2640" />
            <wire x2="2976" y1="112" y2="112" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="576" y="112" name="D(3:0)" orien="R180" />
        <bustap x2="2640" y1="112" y2="208" x1="2640" />
        <branch name="D(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="376" type="branch" />
            <wire x2="2640" y1="208" y2="384" x1="2640" />
            <wire x2="2640" y1="384" y2="544" x1="2640" />
        </branch>
        <bustap x2="720" y1="112" y2="208" x1="720" />
        <branch name="D(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="376" type="branch" />
            <wire x2="720" y1="208" y2="384" x1="720" />
            <wire x2="720" y1="384" y2="544" x1="720" />
        </branch>
        <instance x="592" y="544" name="XLXI_30" orien="R90" />
        <instance x="416" y="544" name="XLXI_29" orien="R0" />
        <branch name="XLXN_57">
            <wire x2="656" y1="512" y2="512" x1="640" />
            <wire x2="1328" y1="512" y2="512" x1="656" />
            <wire x2="1952" y1="512" y2="512" x1="1328" />
            <wire x2="2576" y1="512" y2="512" x1="1952" />
            <wire x2="2576" y1="512" y2="544" x1="2576" />
            <wire x2="1952" y1="512" y2="544" x1="1952" />
            <wire x2="1328" y1="512" y2="544" x1="1328" />
            <wire x2="656" y1="512" y2="544" x1="656" />
        </branch>
        <branch name="Shift">
            <wire x2="400" y1="512" y2="512" x1="384" />
            <wire x2="416" y1="512" y2="512" x1="400" />
            <wire x2="400" y1="464" y2="512" x1="400" />
            <wire x2="784" y1="464" y2="464" x1="400" />
            <wire x2="1392" y1="464" y2="464" x1="784" />
            <wire x2="1392" y1="464" y2="544" x1="1392" />
            <wire x2="2016" y1="464" y2="464" x1="1392" />
            <wire x2="2016" y1="464" y2="544" x1="2016" />
            <wire x2="2704" y1="464" y2="464" x1="2016" />
            <wire x2="2704" y1="464" y2="544" x1="2704" />
            <wire x2="784" y1="464" y2="544" x1="784" />
        </branch>
        <iomarker fontsize="28" x="384" y="512" name="Shift" orien="R180" />
        <branch name="Load">
            <wire x2="976" y1="240" y2="240" x1="576" />
            <wire x2="976" y1="240" y2="544" x1="976" />
            <wire x2="1040" y1="240" y2="240" x1="976" />
            <wire x2="1040" y1="240" y2="544" x1="1040" />
            <wire x2="1584" y1="240" y2="240" x1="1040" />
            <wire x2="1584" y1="240" y2="544" x1="1584" />
            <wire x2="1648" y1="240" y2="240" x1="1584" />
            <wire x2="1648" y1="240" y2="544" x1="1648" />
            <wire x2="2208" y1="240" y2="240" x1="1648" />
            <wire x2="2208" y1="240" y2="544" x1="2208" />
            <wire x2="2272" y1="240" y2="240" x1="2208" />
            <wire x2="2832" y1="240" y2="240" x1="2272" />
            <wire x2="2864" y1="240" y2="240" x1="2832" />
            <wire x2="2896" y1="240" y2="240" x1="2864" />
            <wire x2="2896" y1="240" y2="544" x1="2896" />
            <wire x2="2832" y1="240" y2="544" x1="2832" />
            <wire x2="2272" y1="240" y2="544" x1="2272" />
        </branch>
        <instance x="752" y="1472" name="XLXI_1" orien="R0" />
        <instance x="848" y="784" name="XLXI_32" orien="R90" />
        <instance x="656" y="800" name="XLXI_5" orien="R90" />
        <branch name="XLXN_63">
            <wire x2="864" y1="1056" y2="1056" x1="752" />
            <wire x2="912" y1="784" y2="784" x1="864" />
            <wire x2="864" y1="784" y2="1056" x1="864" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="976" y1="768" y2="784" x1="976" />
        </branch>
        <instance x="944" y="544" name="XLXI_37" orien="R90" />
        <instance x="976" y="544" name="XLXI_38" orien="R90" />
        <instance x="976" y="816" name="XLXI_39" orien="R90" />
        <branch name="XLXN_68">
            <wire x2="1008" y1="1040" y2="1040" x1="944" />
            <wire x2="1008" y1="816" y2="1040" x1="1008" />
            <wire x2="1040" y1="816" y2="816" x1="1008" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="1072" y1="800" y2="816" x1="1072" />
            <wire x2="1104" y1="816" y2="816" x1="1072" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="1072" y1="1072" y2="1072" x1="752" />
            <wire x2="752" y1="1072" y2="1216" x1="752" />
        </branch>
        <instance x="1456" y="784" name="XLXI_40" orien="R90" />
        <branch name="XLXN_71">
            <wire x2="1584" y1="768" y2="784" x1="1584" />
        </branch>
        <instance x="1552" y="544" name="XLXI_41" orien="R90" />
        <instance x="1584" y="544" name="XLXI_42" orien="R90" />
        <instance x="1584" y="816" name="XLXI_43" orien="R90" />
        <branch name="XLXN_72">
            <wire x2="1616" y1="1040" y2="1040" x1="1552" />
            <wire x2="1616" y1="816" y2="1040" x1="1616" />
            <wire x2="1648" y1="816" y2="816" x1="1616" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="1680" y1="800" y2="816" x1="1680" />
            <wire x2="1712" y1="816" y2="816" x1="1680" />
        </branch>
        <instance x="1360" y="1472" name="XLXI_2" orien="R0" />
        <branch name="XLXN_74">
            <wire x2="1472" y1="1056" y2="1056" x1="1360" />
            <wire x2="1472" y1="784" y2="1056" x1="1472" />
            <wire x2="1520" y1="784" y2="784" x1="1472" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="1680" y1="1072" y2="1072" x1="1360" />
            <wire x2="1360" y1="1072" y2="1216" x1="1360" />
        </branch>
        <bustap x2="1104" y1="112" y2="208" x1="1104" />
        <branch name="D(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="376" type="branch" />
            <wire x2="1104" y1="208" y2="384" x1="1104" />
            <wire x2="1104" y1="384" y2="544" x1="1104" />
        </branch>
        <bustap x2="1712" y1="112" y2="208" x1="1712" />
        <branch name="D(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="376" type="branch" />
            <wire x2="1712" y1="208" y2="384" x1="1712" />
            <wire x2="1712" y1="384" y2="544" x1="1712" />
        </branch>
        <instance x="2080" y="784" name="XLXI_45" orien="R90" />
        <branch name="XLXN_78">
            <wire x2="2208" y1="768" y2="784" x1="2208" />
        </branch>
        <instance x="2176" y="544" name="XLXI_46" orien="R90" />
        <instance x="2208" y="544" name="XLXI_47" orien="R90" />
        <instance x="2208" y="816" name="XLXI_48" orien="R90" />
        <branch name="XLXN_79">
            <wire x2="2240" y1="1040" y2="1040" x1="2176" />
            <wire x2="2240" y1="816" y2="1040" x1="2240" />
            <wire x2="2272" y1="816" y2="816" x1="2240" />
        </branch>
        <branch name="XLXN_80">
            <wire x2="2304" y1="800" y2="816" x1="2304" />
            <wire x2="2336" y1="816" y2="816" x1="2304" />
        </branch>
        <instance x="2704" y="784" name="XLXI_49" orien="R90" />
        <branch name="XLXN_81">
            <wire x2="2832" y1="768" y2="784" x1="2832" />
        </branch>
        <instance x="2800" y="544" name="XLXI_50" orien="R90" />
        <instance x="2832" y="544" name="XLXI_51" orien="R90" />
        <instance x="2832" y="816" name="XLXI_52" orien="R90" />
        <branch name="XLXN_82">
            <wire x2="2864" y1="1040" y2="1040" x1="2800" />
            <wire x2="2864" y1="816" y2="1040" x1="2864" />
            <wire x2="2896" y1="816" y2="816" x1="2864" />
        </branch>
        <branch name="XLXN_83">
            <wire x2="2928" y1="800" y2="816" x1="2928" />
            <wire x2="2960" y1="816" y2="816" x1="2928" />
        </branch>
        <instance x="1984" y="1456" name="XLXI_3" orien="R0" />
        <instance x="2608" y="1456" name="XLXI_4" orien="R0" />
        <branch name="XLXN_84">
            <wire x2="2720" y1="1056" y2="1056" x1="2608" />
            <wire x2="2720" y1="784" y2="1056" x1="2720" />
            <wire x2="2768" y1="784" y2="784" x1="2720" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="2928" y1="1072" y2="1072" x1="2608" />
            <wire x2="2608" y1="1072" y2="1200" x1="2608" />
        </branch>
        <bustap x2="2960" y1="112" y2="208" x1="2960" />
        <branch name="D(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="376" type="branch" />
            <wire x2="2960" y1="208" y2="384" x1="2960" />
            <wire x2="2960" y1="384" y2="544" x1="2960" />
        </branch>
        <bustap x2="2336" y1="112" y2="208" x1="2336" />
        <branch name="D(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="376" type="branch" />
            <wire x2="2336" y1="208" y2="384" x1="2336" />
            <wire x2="2336" y1="384" y2="544" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="576" y="240" name="Load" orien="R180" />
        <branch name="XLXN_89">
            <wire x2="2096" y1="1056" y2="1056" x1="1984" />
            <wire x2="2096" y1="784" y2="1056" x1="2096" />
            <wire x2="2144" y1="784" y2="784" x1="2096" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="2304" y1="1072" y2="1072" x1="1984" />
            <wire x2="1984" y1="1072" y2="1200" x1="1984" />
        </branch>
        <branch name="O(3:0)">
            <wire x2="1200" y1="1520" y2="1520" x1="720" />
            <wire x2="1808" y1="1520" y2="1520" x1="1200" />
            <wire x2="2464" y1="1520" y2="1520" x1="1808" />
            <wire x2="2992" y1="1520" y2="1520" x1="2464" />
            <wire x2="3040" y1="1520" y2="1520" x1="2992" />
        </branch>
        <iomarker fontsize="28" x="720" y="1520" name="O(3:0)" orien="R180" />
        <bustap x2="2992" y1="1520" y2="1424" x1="2992" />
        <bustap x2="2464" y1="1520" y2="1424" x1="2464" />
        <bustap x2="1808" y1="1520" y2="1424" x1="1808" />
        <bustap x2="1200" y1="1520" y2="1424" x1="1200" />
        <instance x="432" y="2624" name="XLXI_56" orien="R0" />
        <branch name="C25M">
            <wire x2="416" y1="1952" y2="1952" x1="384" />
            <wire x2="416" y1="1952" y2="2496" x1="416" />
            <wire x2="432" y1="2496" y2="2496" x1="416" />
            <wire x2="464" y1="1904" y2="1904" x1="416" />
            <wire x2="416" y1="1904" y2="1952" x1="416" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="400" y1="2304" y2="2304" x1="384" />
            <wire x2="400" y1="2304" y2="2592" x1="400" />
            <wire x2="432" y1="2592" y2="2592" x1="400" />
            <wire x2="464" y1="2000" y2="2000" x1="400" />
            <wire x2="400" y1="2000" y2="2304" x1="400" />
        </branch>
        <instance x="464" y="2032" name="XLXI_57" orien="R0" />
        <branch name="XLXN_94">
            <wire x2="432" y1="2432" y2="2432" x1="336" />
            <wire x2="336" y1="2432" y2="2672" x1="336" />
            <wire x2="928" y1="2672" y2="2672" x1="336" />
            <wire x2="928" y1="1904" y2="1904" x1="848" />
            <wire x2="928" y1="1904" y2="2672" x1="928" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="464" y1="1840" y2="1840" x1="432" />
        </branch>
        <instance x="176" y="1936" name="XLXI_58" orien="R0" />
        <instance x="160" y="2336" name="XLXI_59" orien="R0" />
        <branch name="Clock">
            <wire x2="176" y1="1808" y2="1808" x1="112" />
            <wire x2="112" y1="1808" y2="2016" x1="112" />
            <wire x2="112" y1="2016" y2="2304" x1="112" />
            <wire x2="160" y1="2304" y2="2304" x1="112" />
            <wire x2="144" y1="2016" y2="2016" x1="112" />
        </branch>
        <iomarker fontsize="28" x="144" y="2016" name="Clock" orien="R0" />
        <iomarker fontsize="28" x="384" y="1952" name="C25M" orien="R180" />
        <branch name="XLXN_100">
            <wire x2="80" y1="1872" y2="2096" x1="80" />
            <wire x2="880" y1="2096" y2="2096" x1="80" />
            <wire x2="880" y1="2096" y2="2496" x1="880" />
            <wire x2="96" y1="1872" y2="1872" x1="80" />
            <wire x2="176" y1="1872" y2="1872" x1="96" />
            <wire x2="96" y1="1440" y2="1872" x1="96" />
            <wire x2="752" y1="1440" y2="1440" x1="96" />
            <wire x2="1360" y1="1440" y2="1440" x1="752" />
            <wire x2="1984" y1="1440" y2="1440" x1="1360" />
            <wire x2="2608" y1="1440" y2="1440" x1="1984" />
            <wire x2="752" y1="1344" y2="1440" x1="752" />
            <wire x2="880" y1="2496" y2="2496" x1="816" />
            <wire x2="1360" y1="1344" y2="1440" x1="1360" />
            <wire x2="1984" y1="1328" y2="1440" x1="1984" />
            <wire x2="2608" y1="1328" y2="1440" x1="2608" />
        </branch>
    </sheet>
</drawing>