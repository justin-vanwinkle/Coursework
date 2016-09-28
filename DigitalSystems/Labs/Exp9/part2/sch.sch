<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q(2:0)" />
        <signal name="Q(0)" />
        <signal name="Q(2)" />
        <signal name="Q(1)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_17" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="S(2:0)" />
        <signal name="S(2)" />
        <signal name="S(1)" />
        <signal name="S(0)" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35">
        </signal>
        <signal name="Clk" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="Clk25M" />
        <signal name="XLXN_42" />
        <port polarity="Input" name="Q(2:0)" />
        <port polarity="Input" name="S(2:0)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Clk25M" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="XLXN_35" name="C" />
            <blockpin signalname="S(2)" name="D" />
            <blockpin signalname="Q(2)" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="XLXN_35" name="C" />
            <blockpin signalname="XLXN_15" name="D" />
            <blockpin signalname="Q(1)" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="XLXN_35" name="C" />
            <blockpin signalname="XLXN_17" name="D" />
            <blockpin signalname="Q(0)" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_20" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_12">
            <blockpin signalname="S(2)" name="I0" />
            <blockpin signalname="S(1)" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_13">
            <blockpin signalname="S(1)" name="I0" />
            <blockpin signalname="S(2)" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_14">
            <blockpin signalname="S(1)" name="I0" />
            <blockpin signalname="S(0)" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_15">
            <blockpin signalname="S(0)" name="I0" />
            <blockpin signalname="S(1)" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="cc16ce" name="XLXI_16">
            <blockpin signalname="Clk25M" name="C" />
            <blockpin signalname="XLXN_34" name="CE" />
            <blockpin signalname="XLXN_37" name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin signalname="XLXN_38" name="TC" />
        </block>
        <block symbolname="cd4ce" name="XLXI_17">
            <blockpin signalname="Clk25M" name="C" />
            <blockpin signalname="XLXN_38" name="CE" />
            <blockpin signalname="XLXN_37" name="CLR" />
            <blockpin name="CEO" />
            <blockpin name="Q0" />
            <blockpin name="Q1" />
            <blockpin name="Q2" />
            <blockpin name="Q3" />
            <blockpin signalname="XLXN_35" name="TC" />
        </block>
        <block symbolname="and2b1" name="XLXI_18">
            <blockpin signalname="XLXN_35" name="I0" />
            <blockpin signalname="Clk" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1120" y="1536" name="XLXI_1" orien="R0" />
        <instance x="1760" y="1536" name="XLXI_2" orien="R0" />
        <instance x="2400" y="1536" name="XLXI_3" orien="R0" />
        <branch name="Q(2:0)">
            <wire x2="1504" y1="1600" y2="1600" x1="1040" />
            <wire x2="2144" y1="1600" y2="1600" x1="1504" />
            <wire x2="2160" y1="1600" y2="1600" x1="2144" />
            <wire x2="2784" y1="1600" y2="1600" x1="2160" />
            <wire x2="2880" y1="1600" y2="1600" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1600" name="Q(2:0)" orien="R180" />
        <bustap x2="2784" y1="1600" y2="1504" x1="2784" />
        <branch name="Q(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="1392" type="branch" />
            <wire x2="2784" y1="1280" y2="1392" x1="2784" />
            <wire x2="2784" y1="1392" y2="1504" x1="2784" />
        </branch>
        <bustap x2="1504" y1="1600" y2="1504" x1="1504" />
        <branch name="Q(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1392" type="branch" />
            <wire x2="1504" y1="1280" y2="1392" x1="1504" />
            <wire x2="1504" y1="1392" y2="1504" x1="1504" />
        </branch>
        <bustap x2="2144" y1="1600" y2="1504" x1="2144" />
        <branch name="Q(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1392" type="branch" />
            <wire x2="2144" y1="1280" y2="1392" x1="2144" />
            <wire x2="2144" y1="1392" y2="1504" x1="2144" />
        </branch>
        <instance x="1568" y="1024" name="XLXI_8" orien="R90" />
        <instance x="2208" y="1024" name="XLXI_9" orien="R90" />
        <branch name="XLXN_15">
            <wire x2="1760" y1="1280" y2="1280" x1="1664" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2400" y1="1280" y2="1280" x1="2304" />
        </branch>
        <instance x="1632" y="768" name="XLXI_12" orien="R90" />
        <instance x="1504" y="768" name="XLXI_13" orien="R90" />
        <instance x="2272" y="768" name="XLXI_14" orien="R90" />
        <instance x="2144" y="768" name="XLXI_15" orien="R90" />
        <branch name="XLXN_20">
            <wire x2="1632" y1="1024" y2="1024" x1="1600" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1728" y1="1024" y2="1024" x1="1696" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2272" y1="1024" y2="1024" x1="2240" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="2368" y1="1024" y2="1024" x1="2336" />
        </branch>
        <branch name="S(2:0)">
            <wire x2="1120" y1="640" y2="640" x1="1040" />
            <wire x2="1568" y1="640" y2="640" x1="1120" />
            <wire x2="1632" y1="640" y2="640" x1="1568" />
            <wire x2="1696" y1="640" y2="640" x1="1632" />
            <wire x2="1760" y1="640" y2="640" x1="1696" />
            <wire x2="2208" y1="640" y2="640" x1="1760" />
            <wire x2="2272" y1="640" y2="640" x1="2208" />
            <wire x2="2336" y1="640" y2="640" x1="2272" />
            <wire x2="2400" y1="640" y2="640" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="1040" y="640" name="S(2:0)" orien="R180" />
        <bustap x2="1120" y1="640" y2="736" x1="1120" />
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1008" type="branch" />
            <wire x2="1120" y1="736" y2="1008" x1="1120" />
            <wire x2="1120" y1="1008" y2="1280" x1="1120" />
        </branch>
        <bustap x2="1568" y1="640" y2="736" x1="1568" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="752" type="branch" />
            <wire x2="1568" y1="736" y2="752" x1="1568" />
            <wire x2="1568" y1="752" y2="768" x1="1568" />
        </branch>
        <bustap x2="2208" y1="640" y2="736" x1="2208" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="752" type="branch" />
            <wire x2="2208" y1="736" y2="752" x1="2208" />
            <wire x2="2208" y1="752" y2="768" x1="2208" />
        </branch>
        <bustap x2="1632" y1="640" y2="736" x1="1632" />
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="752" type="branch" />
            <wire x2="1632" y1="736" y2="752" x1="1632" />
            <wire x2="1632" y1="752" y2="768" x1="1632" />
        </branch>
        <bustap x2="2272" y1="640" y2="736" x1="2272" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="752" type="branch" />
            <wire x2="2272" y1="736" y2="752" x1="2272" />
            <wire x2="2272" y1="752" y2="768" x1="2272" />
        </branch>
        <bustap x2="2400" y1="640" y2="736" x1="2400" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="752" type="branch" />
            <wire x2="2400" y1="736" y2="752" x1="2400" />
            <wire x2="2400" y1="752" y2="768" x1="2400" />
        </branch>
        <bustap x2="1696" y1="640" y2="736" x1="1696" />
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="752" type="branch" />
            <wire x2="1696" y1="736" y2="752" x1="1696" />
            <wire x2="1696" y1="752" y2="768" x1="1696" />
        </branch>
        <bustap x2="2336" y1="640" y2="736" x1="2336" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="752" type="branch" />
            <wire x2="2336" y1="736" y2="752" x1="2336" />
            <wire x2="2336" y1="752" y2="768" x1="2336" />
        </branch>
        <bustap x2="1760" y1="640" y2="736" x1="1760" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="752" type="branch" />
            <wire x2="1760" y1="736" y2="752" x1="1760" />
            <wire x2="1760" y1="752" y2="768" x1="1760" />
        </branch>
        <instance x="368" y="1280" name="XLXI_16" orien="R0" />
        <instance x="368" y="1824" name="XLXI_17" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="368" y1="1088" y2="1088" x1="336" />
        </branch>
        <instance x="80" y="1184" name="XLXI_18" orien="R0" />
        <instance x="80" y="1280" name="XLXI_19" orien="R0" />
        <branch name="Clk">
            <wire x2="80" y1="1056" y2="1056" x1="64" />
            <wire x2="64" y1="1056" y2="1248" x1="64" />
            <wire x2="80" y1="1248" y2="1248" x1="64" />
            <wire x2="64" y1="1248" y2="1328" x1="64" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="336" y1="1248" y2="1248" x1="304" />
            <wire x2="336" y1="1248" y2="1792" x1="336" />
            <wire x2="368" y1="1792" y2="1792" x1="336" />
            <wire x2="368" y1="1248" y2="1248" x1="336" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="368" y1="1632" y2="1632" x1="304" />
            <wire x2="304" y1="1632" y2="1856" x1="304" />
            <wire x2="832" y1="1856" y2="1856" x1="304" />
            <wire x2="832" y1="1152" y2="1152" x1="752" />
            <wire x2="832" y1="1152" y2="1856" x1="832" />
        </branch>
        <branch name="Clk25M">
            <wire x2="352" y1="1424" y2="1424" x1="288" />
            <wire x2="352" y1="1424" y2="1696" x1="352" />
            <wire x2="368" y1="1696" y2="1696" x1="352" />
            <wire x2="368" y1="1152" y2="1152" x1="352" />
            <wire x2="352" y1="1152" y2="1424" x1="352" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="16" y1="896" y2="1120" x1="16" />
            <wire x2="80" y1="1120" y2="1120" x1="16" />
            <wire x2="288" y1="896" y2="896" x1="16" />
            <wire x2="320" y1="896" y2="896" x1="288" />
            <wire x2="816" y1="896" y2="896" x1="320" />
            <wire x2="816" y1="896" y2="1408" x1="816" />
            <wire x2="816" y1="1408" y2="1696" x1="816" />
            <wire x2="1104" y1="1408" y2="1408" x1="816" />
            <wire x2="1120" y1="1408" y2="1408" x1="1104" />
            <wire x2="1104" y1="1408" y2="1520" x1="1104" />
            <wire x2="1120" y1="1520" y2="1520" x1="1104" />
            <wire x2="1760" y1="1520" y2="1520" x1="1120" />
            <wire x2="2400" y1="1520" y2="1520" x1="1760" />
            <wire x2="816" y1="1696" y2="1696" x1="752" />
            <wire x2="1760" y1="1408" y2="1520" x1="1760" />
            <wire x2="2400" y1="1408" y2="1520" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="64" y="1328" name="Clk" orien="R90" />
        <iomarker fontsize="28" x="288" y="1424" name="Clk25M" orien="R180" />
    </sheet>
</drawing>