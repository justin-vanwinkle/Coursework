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
        <signal name="XLXN_11" />
        <signal name="O" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="S(3:0)" />
        <signal name="S(2)" />
        <signal name="S(1)" />
        <signal name="S(0)" />
        <signal name="XLXN_37" />
        <signal name="S(3)" />
        <port polarity="Output" name="O" />
        <port polarity="Input" name="S(3:0)" />
        <blockdef name="m8_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-544" y2="-544" x1="0" />
            <line x2="96" y1="-608" y2="-608" x1="0" />
            <line x2="96" y1="-672" y2="-672" x1="0" />
            <line x2="96" y1="-736" y2="-736" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="160" />
            <line x2="160" y1="-268" y2="-160" x1="160" />
            <line x2="96" y1="-224" y2="-224" x1="128" />
            <line x2="128" y1="-264" y2="-224" x1="128" />
            <line x2="96" y1="-96" y2="-96" x1="192" />
            <line x2="192" y1="-276" y2="-96" x1="192" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-280" y2="-32" x1="224" />
            <line x2="256" y1="-512" y2="-512" x1="320" />
            <line x2="96" y1="-768" y2="-256" x1="96" />
            <line x2="96" y1="-704" y2="-768" x1="256" />
            <line x2="256" y1="-288" y2="-704" x1="256" />
            <line x2="256" y1="-256" y2="-288" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="96" y1="-480" y2="-480" x1="0" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="m8_1e" name="XLXI_1">
            <blockpin signalname="XLXN_16" name="D0" />
            <blockpin signalname="XLXN_16" name="D1" />
            <blockpin signalname="XLXN_16" name="D2" />
            <blockpin signalname="XLXN_15" name="D3" />
            <blockpin signalname="XLXN_16" name="D4" />
            <blockpin signalname="XLXN_16" name="D5" />
            <blockpin signalname="XLXN_16" name="D6" />
            <blockpin signalname="XLXN_15" name="D7" />
            <blockpin signalname="XLXN_37" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="S(2)" name="S2" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="m8_1e" name="XLXI_2">
            <blockpin signalname="XLXN_16" name="D0" />
            <blockpin signalname="XLXN_16" name="D1" />
            <blockpin signalname="XLXN_16" name="D2" />
            <blockpin signalname="XLXN_15" name="D3" />
            <blockpin signalname="XLXN_16" name="D4" />
            <blockpin signalname="XLXN_15" name="D5" />
            <blockpin signalname="XLXN_16" name="D6" />
            <blockpin signalname="XLXN_15" name="D7" />
            <blockpin signalname="S(3)" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="S(2)" name="S2" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="O" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_16" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_15" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="S(3)" name="I" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1136" y="1024" name="XLXI_1" orien="R0" />
        <instance x="1136" y="1840" name="XLXI_2" orien="R0" />
        <instance x="1520" y="1056" name="XLXI_3" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1488" y1="512" y2="512" x1="1456" />
            <wire x2="1488" y1="512" y2="928" x1="1488" />
            <wire x2="1520" y1="928" y2="928" x1="1488" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1488" y1="1328" y2="1328" x1="1456" />
            <wire x2="1488" y1="992" y2="1328" x1="1488" />
            <wire x2="1504" y1="992" y2="992" x1="1488" />
            <wire x2="1520" y1="992" y2="992" x1="1504" />
        </branch>
        <branch name="O">
            <wire x2="1808" y1="960" y2="960" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1808" y="960" name="O" orien="R0" />
        <instance x="1024" y="1984" name="XLXI_5" orien="R0" />
        <instance x="992" y="240" name="XLXI_6" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="1056" y1="240" y2="480" x1="1056" />
            <wire x2="1136" y1="480" y2="480" x1="1056" />
            <wire x2="1056" y1="480" y2="736" x1="1056" />
            <wire x2="1056" y1="736" y2="1296" x1="1056" />
            <wire x2="1056" y1="1296" y2="1424" x1="1056" />
            <wire x2="1056" y1="1424" y2="1552" x1="1056" />
            <wire x2="1136" y1="1552" y2="1552" x1="1056" />
            <wire x2="1136" y1="1424" y2="1424" x1="1056" />
            <wire x2="1136" y1="1296" y2="1296" x1="1056" />
            <wire x2="1136" y1="736" y2="736" x1="1056" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1136" y1="288" y2="288" x1="1088" />
            <wire x2="1088" y1="288" y2="352" x1="1088" />
            <wire x2="1136" y1="352" y2="352" x1="1088" />
            <wire x2="1088" y1="352" y2="416" x1="1088" />
            <wire x2="1136" y1="416" y2="416" x1="1088" />
            <wire x2="1088" y1="416" y2="544" x1="1088" />
            <wire x2="1136" y1="544" y2="544" x1="1088" />
            <wire x2="1088" y1="544" y2="608" x1="1088" />
            <wire x2="1136" y1="608" y2="608" x1="1088" />
            <wire x2="1088" y1="608" y2="672" x1="1088" />
            <wire x2="1136" y1="672" y2="672" x1="1088" />
            <wire x2="1088" y1="672" y2="800" x1="1088" />
            <wire x2="1088" y1="800" y2="864" x1="1088" />
            <wire x2="1088" y1="864" y2="928" x1="1088" />
            <wire x2="1088" y1="928" y2="1104" x1="1088" />
            <wire x2="1136" y1="1104" y2="1104" x1="1088" />
            <wire x2="1088" y1="1104" y2="1168" x1="1088" />
            <wire x2="1136" y1="1168" y2="1168" x1="1088" />
            <wire x2="1088" y1="1168" y2="1232" x1="1088" />
            <wire x2="1136" y1="1232" y2="1232" x1="1088" />
            <wire x2="1088" y1="1232" y2="1360" x1="1088" />
            <wire x2="1136" y1="1360" y2="1360" x1="1088" />
            <wire x2="1088" y1="1360" y2="1488" x1="1088" />
            <wire x2="1088" y1="1488" y2="1856" x1="1088" />
            <wire x2="1136" y1="1488" y2="1488" x1="1088" />
        </branch>
        <branch name="S(3:0)">
            <wire x2="720" y1="736" y2="736" x1="688" />
            <wire x2="720" y1="736" y2="768" x1="720" />
            <wire x2="720" y1="768" y2="800" x1="720" />
            <wire x2="720" y1="800" y2="864" x1="720" />
            <wire x2="720" y1="864" y2="928" x1="720" />
            <wire x2="720" y1="928" y2="992" x1="720" />
            <wire x2="720" y1="992" y2="1616" x1="720" />
            <wire x2="720" y1="1616" y2="1680" x1="720" />
            <wire x2="720" y1="1680" y2="1744" x1="720" />
            <wire x2="720" y1="1744" y2="1808" x1="720" />
            <wire x2="720" y1="1808" y2="1856" x1="720" />
        </branch>
        <iomarker fontsize="28" x="688" y="736" name="S(3:0)" orien="R180" />
        <bustap x2="816" y1="928" y2="928" x1="720" />
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="928" type="branch" />
            <wire x2="976" y1="928" y2="928" x1="816" />
            <wire x2="1136" y1="928" y2="928" x1="976" />
        </branch>
        <bustap x2="816" y1="864" y2="864" x1="720" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="864" type="branch" />
            <wire x2="976" y1="864" y2="864" x1="816" />
            <wire x2="1136" y1="864" y2="864" x1="976" />
        </branch>
        <bustap x2="816" y1="800" y2="800" x1="720" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="800" type="branch" />
            <wire x2="976" y1="800" y2="800" x1="816" />
            <wire x2="1136" y1="800" y2="800" x1="976" />
        </branch>
        <bustap x2="816" y1="1744" y2="1744" x1="720" />
        <branch name="S(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1744" type="branch" />
            <wire x2="848" y1="1744" y2="1744" x1="816" />
            <wire x2="880" y1="1744" y2="1744" x1="848" />
            <wire x2="1104" y1="1744" y2="1744" x1="880" />
            <wire x2="1120" y1="1744" y2="1744" x1="1104" />
            <wire x2="1136" y1="1744" y2="1744" x1="1120" />
        </branch>
        <bustap x2="816" y1="1680" y2="1680" x1="720" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1680" type="branch" />
            <wire x2="848" y1="1680" y2="1680" x1="816" />
            <wire x2="880" y1="1680" y2="1680" x1="848" />
            <wire x2="1104" y1="1680" y2="1680" x1="880" />
            <wire x2="1120" y1="1680" y2="1680" x1="1104" />
            <wire x2="1136" y1="1680" y2="1680" x1="1120" />
        </branch>
        <bustap x2="816" y1="1616" y2="1616" x1="720" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1616" type="branch" />
            <wire x2="848" y1="1616" y2="1616" x1="816" />
            <wire x2="880" y1="1616" y2="1616" x1="848" />
            <wire x2="1104" y1="1616" y2="1616" x1="880" />
            <wire x2="1120" y1="1616" y2="1616" x1="1104" />
            <wire x2="1136" y1="1616" y2="1616" x1="1120" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1136" y1="992" y2="992" x1="1104" />
        </branch>
        <bustap x2="816" y1="1808" y2="1808" x1="720" />
        <branch name="S(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1808" type="branch" />
            <wire x2="976" y1="1808" y2="1808" x1="816" />
            <wire x2="1136" y1="1808" y2="1808" x1="976" />
        </branch>
        <instance x="880" y="1024" name="XLXI_11" orien="R0" />
        <bustap x2="816" y1="992" y2="992" x1="720" />
        <branch name="S(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="992" type="branch" />
            <wire x2="848" y1="992" y2="992" x1="816" />
            <wire x2="880" y1="992" y2="992" x1="848" />
        </branch>
    </sheet>
</drawing>