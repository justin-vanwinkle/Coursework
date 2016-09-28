<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X(2:0)" />
        <signal name="X(0)" />
        <signal name="X(1)" />
        <signal name="Y(0)" />
        <signal name="Y(1)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="Y(2)" />
        <signal name="X(2)" />
        <signal name="S(2:0)" />
        <signal name="S(2)" />
        <signal name="S(1)" />
        <signal name="S(0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="Cout" />
        <signal name="Y(2:0)" />
        <port polarity="Input" name="X(2:0)" />
        <port polarity="Output" name="S(2:0)" />
        <port polarity="Output" name="Cout" />
        <port polarity="Input" name="Y(2:0)" />
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
        <blockdef name="xor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="208" y1="-128" y2="-128" x1="256" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="64" ey="-176" sx="64" sy="-80" r="56" cx="32" cy="-128" />
            <arc ex="128" ey="-176" sx="208" sy="-128" r="88" cx="132" cy="-88" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="64" y1="-80" y2="-80" x1="128" />
            <line x2="64" y1="-176" y2="-176" x1="128" />
            <arc ex="208" ey="-128" sx="128" sy="-80" r="88" cx="132" cy="-168" />
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
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="Y(0)" name="I0" />
            <blockpin signalname="X(0)" name="I1" />
            <blockpin signalname="S(0)" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_2">
            <blockpin signalname="Y(1)" name="I0" />
            <blockpin signalname="X(1)" name="I1" />
            <blockpin signalname="XLXN_53" name="I2" />
            <blockpin signalname="S(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="Y(0)" name="I0" />
            <blockpin signalname="X(0)" name="I1" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="X(1)" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="Y(1)" name="I0" />
            <blockpin signalname="X(1)" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="Y(1)" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_3">
            <blockpin signalname="Y(2)" name="I0" />
            <blockpin signalname="X(2)" name="I1" />
            <blockpin signalname="XLXN_54" name="I2" />
            <blockpin signalname="S(2)" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_22">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_2" name="I2" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="X(2)" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="Y(2)" name="I0" />
            <blockpin signalname="X(2)" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="Y(2)" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_27">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_5" name="I2" />
            <blockpin signalname="Cout" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="992" y="320" name="XLXI_1" orien="R0" />
        <branch name="X(2:0)">
            <wire x2="512" y1="176" y2="176" x1="384" />
            <wire x2="608" y1="176" y2="176" x1="512" />
            <wire x2="608" y1="176" y2="192" x1="608" />
            <wire x2="608" y1="192" y2="304" x1="608" />
            <wire x2="608" y1="304" y2="368" x1="608" />
            <wire x2="608" y1="368" y2="464" x1="608" />
            <wire x2="608" y1="464" y2="624" x1="608" />
            <wire x2="608" y1="624" y2="736" x1="608" />
            <wire x2="608" y1="736" y2="800" x1="608" />
            <wire x2="608" y1="800" y2="976" x1="608" />
            <wire x2="608" y1="976" y2="1104" x1="608" />
            <wire x2="608" y1="1104" y2="1280" x1="608" />
            <wire x2="608" y1="1280" y2="1776" x1="608" />
        </branch>
        <iomarker fontsize="28" x="384" y="176" name="X(2:0)" orien="R180" />
        <iomarker fontsize="28" x="432" y="112" name="Y(2:0)" orien="R180" />
        <bustap x2="704" y1="192" y2="192" x1="608" />
        <branch name="X(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="192" type="branch" />
            <wire x2="848" y1="192" y2="192" x1="704" />
            <wire x2="992" y1="192" y2="192" x1="848" />
        </branch>
        <bustap x2="704" y1="464" y2="464" x1="608" />
        <branch name="X(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="464" type="branch" />
            <wire x2="848" y1="464" y2="464" x1="704" />
            <wire x2="1024" y1="464" y2="464" x1="848" />
        </branch>
        <bustap x2="736" y1="256" y2="256" x1="640" />
        <branch name="Y(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="256" type="branch" />
            <wire x2="864" y1="256" y2="256" x1="736" />
            <wire x2="992" y1="256" y2="256" x1="864" />
        </branch>
        <bustap x2="736" y1="528" y2="528" x1="640" />
        <branch name="Y(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="528" type="branch" />
            <wire x2="864" y1="528" y2="528" x1="736" />
            <wire x2="1024" y1="528" y2="528" x1="864" />
        </branch>
        <bustap x2="704" y1="304" y2="304" x1="608" />
        <branch name="X(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="304" type="branch" />
            <wire x2="720" y1="304" y2="304" x1="704" />
            <wire x2="752" y1="304" y2="304" x1="720" />
        </branch>
        <instance x="752" y="432" name="XLXI_16" orien="R0" />
        <bustap x2="736" y1="368" y2="368" x1="640" />
        <branch name="Y(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="744" y="368" type="branch" />
            <wire x2="752" y1="368" y2="368" x1="736" />
        </branch>
        <instance x="1024" y="592" name="XLXI_2" orien="R0" />
        <instance x="752" y="864" name="XLXI_9" orien="R0" />
        <instance x="752" y="752" name="XLXI_10" orien="R0" />
        <instance x="752" y="976" name="XLXI_11" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1024" y1="656" y2="656" x1="1008" />
            <wire x2="1024" y1="656" y2="704" x1="1024" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1024" y1="768" y2="768" x1="1008" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1024" y1="880" y2="880" x1="1008" />
            <wire x2="1024" y1="832" y2="880" x1="1024" />
        </branch>
        <bustap x2="704" y1="624" y2="624" x1="608" />
        <branch name="X(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="728" y="624" type="branch" />
            <wire x2="736" y1="624" y2="624" x1="704" />
            <wire x2="752" y1="624" y2="624" x1="736" />
        </branch>
        <bustap x2="736" y1="688" y2="688" x1="640" />
        <branch name="Y(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="744" y="688" type="branch" />
            <wire x2="752" y1="688" y2="688" x1="736" />
        </branch>
        <bustap x2="704" y1="800" y2="800" x1="608" />
        <branch name="X(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="728" y="800" type="branch" />
            <wire x2="736" y1="800" y2="800" x1="704" />
            <wire x2="752" y1="800" y2="800" x1="736" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="944" y1="560" y2="560" x1="672" />
            <wire x2="672" y1="560" y2="736" x1="672" />
            <wire x2="672" y1="736" y2="848" x1="672" />
            <wire x2="752" y1="848" y2="848" x1="672" />
            <wire x2="752" y1="736" y2="736" x1="672" />
            <wire x2="944" y1="384" y2="400" x1="944" />
            <wire x2="944" y1="400" y2="560" x1="944" />
            <wire x2="1024" y1="384" y2="384" x1="944" />
            <wire x2="1024" y1="384" y2="400" x1="1024" />
            <wire x2="1024" y1="336" y2="336" x1="1008" />
            <wire x2="1024" y1="336" y2="384" x1="1024" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="1088" y1="1056" y2="1056" x1="672" />
            <wire x2="672" y1="1056" y2="1216" x1="672" />
            <wire x2="672" y1="1216" y2="1328" x1="672" />
            <wire x2="752" y1="1328" y2="1328" x1="672" />
            <wire x2="752" y1="1216" y2="1216" x1="672" />
            <wire x2="1296" y1="880" y2="880" x1="1088" />
            <wire x2="1296" y1="880" y2="912" x1="1296" />
            <wire x2="1088" y1="880" y2="1056" x1="1088" />
            <wire x2="1296" y1="768" y2="768" x1="1280" />
            <wire x2="1296" y1="768" y2="880" x1="1296" />
        </branch>
        <instance x="1024" y="896" name="XLXI_22" orien="R0" />
        <instance x="1296" y="1104" name="XLXI_3" orien="R0" />
        <bustap x2="736" y1="1040" y2="1040" x1="640" />
        <branch name="Y(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1016" y="1040" type="branch" />
            <wire x2="1024" y1="1040" y2="1040" x1="736" />
            <wire x2="1296" y1="1040" y2="1040" x1="1024" />
        </branch>
        <bustap x2="704" y1="976" y2="976" x1="608" />
        <branch name="X(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1000" y="976" type="branch" />
            <wire x2="1008" y1="976" y2="976" x1="704" />
            <wire x2="1296" y1="976" y2="976" x1="1008" />
        </branch>
        <branch name="S(2:0)">
            <wire x2="1760" y1="128" y2="128" x1="1712" />
            <wire x2="1712" y1="128" y2="224" x1="1712" />
            <wire x2="1712" y1="224" y2="464" x1="1712" />
            <wire x2="1712" y1="464" y2="976" x1="1712" />
            <wire x2="1712" y1="976" y2="1008" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1760" y="128" name="S(2:0)" orien="R0" />
        <bustap x2="1616" y1="976" y2="976" x1="1712" />
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="976" type="branch" />
            <wire x2="1584" y1="976" y2="976" x1="1552" />
            <wire x2="1616" y1="976" y2="976" x1="1584" />
        </branch>
        <bustap x2="1616" y1="464" y2="464" x1="1712" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1448" y="464" type="branch" />
            <wire x2="1456" y1="464" y2="464" x1="1280" />
            <wire x2="1616" y1="464" y2="464" x1="1456" />
        </branch>
        <bustap x2="1616" y1="224" y2="224" x1="1712" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1432" y="224" type="branch" />
            <wire x2="1440" y1="224" y2="224" x1="1248" />
            <wire x2="1616" y1="224" y2="224" x1="1440" />
        </branch>
        <instance x="752" y="1344" name="XLXI_13" orien="R0" />
        <instance x="752" y="1232" name="XLXI_14" orien="R0" />
        <instance x="752" y="1456" name="XLXI_15" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1024" y1="1136" y2="1136" x1="1008" />
            <wire x2="1024" y1="1136" y2="1184" x1="1024" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1024" y1="1248" y2="1248" x1="1008" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1024" y1="1360" y2="1360" x1="1008" />
            <wire x2="1024" y1="1312" y2="1360" x1="1024" />
        </branch>
        <bustap x2="736" y1="1168" y2="1168" x1="640" />
        <branch name="Y(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="744" y="1168" type="branch" />
            <wire x2="752" y1="1168" y2="1168" x1="736" />
        </branch>
        <bustap x2="704" y1="1104" y2="1104" x1="608" />
        <branch name="X(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="728" y="1104" type="branch" />
            <wire x2="736" y1="1104" y2="1104" x1="704" />
            <wire x2="752" y1="1104" y2="1104" x1="736" />
        </branch>
        <bustap x2="736" y1="1392" y2="1392" x1="640" />
        <branch name="Y(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="744" y="1392" type="branch" />
            <wire x2="752" y1="1392" y2="1392" x1="736" />
        </branch>
        <bustap x2="704" y1="1280" y2="1280" x1="608" />
        <branch name="X(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="728" y="1280" type="branch" />
            <wire x2="736" y1="1280" y2="1280" x1="704" />
            <wire x2="752" y1="1280" y2="1280" x1="736" />
        </branch>
        <branch name="Cout">
            <wire x2="1296" y1="1248" y2="1248" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1248" name="Cout" orien="R0" />
        <instance x="1024" y="1376" name="XLXI_27" orien="R0" />
        <branch name="Y(2:0)">
            <wire x2="640" y1="112" y2="112" x1="432" />
            <wire x2="640" y1="112" y2="144" x1="640" />
            <wire x2="640" y1="144" y2="176" x1="640" />
            <wire x2="640" y1="176" y2="192" x1="640" />
            <wire x2="640" y1="192" y2="256" x1="640" />
            <wire x2="640" y1="256" y2="368" x1="640" />
            <wire x2="640" y1="368" y2="384" x1="640" />
            <wire x2="640" y1="384" y2="432" x1="640" />
            <wire x2="640" y1="432" y2="528" x1="640" />
            <wire x2="640" y1="528" y2="688" x1="640" />
            <wire x2="640" y1="688" y2="800" x1="640" />
            <wire x2="640" y1="800" y2="864" x1="640" />
            <wire x2="640" y1="864" y2="912" x1="640" />
            <wire x2="640" y1="912" y2="928" x1="640" />
            <wire x2="640" y1="928" y2="1040" x1="640" />
            <wire x2="640" y1="1040" y2="1168" x1="640" />
            <wire x2="640" y1="1168" y2="1392" x1="640" />
            <wire x2="640" y1="1392" y2="1776" x1="640" />
        </branch>
        <bustap x2="736" y1="912" y2="912" x1="640" />
        <branch name="Y(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="744" y="912" type="branch" />
            <wire x2="752" y1="912" y2="912" x1="736" />
        </branch>
    </sheet>
</drawing>