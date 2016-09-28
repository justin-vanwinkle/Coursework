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
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="Y" />
        <signal name="X" />
        <signal name="B" />
        <signal name="A" />
        <signal name="F" />
        <port polarity="Input" name="Y" />
        <port polarity="Input" name="X" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="F" />
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
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
        <block symbolname="and3" name="XLXI_1">
            <blockpin signalname="X" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_13" name="I2" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_2">
            <blockpin signalname="Y" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_3">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_5">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="XLXN_7" name="I3" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="X" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="Y" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2160" y="1168" name="XLXI_5" orien="R0" />
        <instance x="1792" y="1232" name="XLXI_3" orien="R0" />
        <instance x="1792" y="1040" name="XLXI_2" orien="R0" />
        <instance x="1792" y="848" name="XLXI_1" orien="R0" />
        <instance x="1792" y="1424" name="XLXI_4" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="2096" y1="912" y2="912" x1="2048" />
            <wire x2="2096" y1="912" y2="976" x1="2096" />
            <wire x2="2160" y1="976" y2="976" x1="2096" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2096" y1="1104" y2="1104" x1="2048" />
            <wire x2="2096" y1="1040" y2="1104" x1="2096" />
            <wire x2="2160" y1="1040" y2="1040" x1="2096" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2160" y1="1296" y2="1296" x1="2048" />
            <wire x2="2160" y1="1104" y2="1296" x1="2160" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2160" y1="720" y2="720" x1="2048" />
            <wire x2="2160" y1="720" y2="912" x1="2160" />
        </branch>
        <instance x="1520" y="688" name="XLXI_6" orien="R0" />
        <instance x="1520" y="752" name="XLXI_7" orien="R0" />
        <instance x="1520" y="880" name="XLXI_8" orien="R0" />
        <instance x="1520" y="1200" name="XLXI_9" orien="R0" />
        <instance x="1520" y="1328" name="XLXI_19" orien="R0" />
        <instance x="1520" y="1392" name="XLXI_20" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1792" y1="1360" y2="1360" x1="1744" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1792" y1="1296" y2="1296" x1="1744" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1792" y1="1168" y2="1168" x1="1744" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1792" y1="848" y2="848" x1="1744" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1792" y1="720" y2="720" x1="1744" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1792" y1="656" y2="656" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="1296" y="560" name="A" orien="R270" />
        <iomarker fontsize="28" x="1344" y="560" name="B" orien="R270" />
        <iomarker fontsize="28" x="1392" y="560" name="X" orien="R270" />
        <iomarker fontsize="28" x="1440" y="560" name="Y" orien="R270" />
        <branch name="Y">
            <wire x2="1440" y1="560" y2="976" x1="1440" />
            <wire x2="1792" y1="976" y2="976" x1="1440" />
            <wire x2="1440" y1="976" y2="1360" x1="1440" />
            <wire x2="1520" y1="1360" y2="1360" x1="1440" />
        </branch>
        <branch name="B">
            <wire x2="1344" y1="560" y2="720" x1="1344" />
            <wire x2="1520" y1="720" y2="720" x1="1344" />
            <wire x2="1344" y1="720" y2="912" x1="1344" />
            <wire x2="1792" y1="912" y2="912" x1="1344" />
            <wire x2="1344" y1="912" y2="1104" x1="1344" />
            <wire x2="1792" y1="1104" y2="1104" x1="1344" />
            <wire x2="1344" y1="1104" y2="1296" x1="1344" />
            <wire x2="1520" y1="1296" y2="1296" x1="1344" />
        </branch>
        <branch name="A">
            <wire x2="1296" y1="560" y2="656" x1="1296" />
            <wire x2="1520" y1="656" y2="656" x1="1296" />
            <wire x2="1296" y1="656" y2="848" x1="1296" />
            <wire x2="1520" y1="848" y2="848" x1="1296" />
            <wire x2="1296" y1="848" y2="1040" x1="1296" />
            <wire x2="1792" y1="1040" y2="1040" x1="1296" />
            <wire x2="1296" y1="1040" y2="1232" x1="1296" />
            <wire x2="1792" y1="1232" y2="1232" x1="1296" />
        </branch>
        <branch name="X">
            <wire x2="1392" y1="560" y2="784" x1="1392" />
            <wire x2="1392" y1="784" y2="1168" x1="1392" />
            <wire x2="1520" y1="1168" y2="1168" x1="1392" />
            <wire x2="1792" y1="784" y2="784" x1="1392" />
        </branch>
        <branch name="F">
            <wire x2="2432" y1="1008" y2="1008" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2432" y="1008" name="F" orien="R0" />
    </sheet>
</drawing>