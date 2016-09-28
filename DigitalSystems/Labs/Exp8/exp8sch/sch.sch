<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q" />
        <signal name="Qbar" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="CLK" />
        <signal name="R" />
        <signal name="S" />
        <signal name="XLXN_41" />
        <signal name="D" />
        <signal name="Pbar" />
        <signal name="P" />
        <signal name="O" />
        <signal name="Obar" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Qbar" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="R" />
        <port polarity="Input" name="S" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="Pbar" />
        <port polarity="Output" name="P" />
        <port polarity="Output" name="O" />
        <port polarity="Output" name="Obar" />
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
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
        <block symbolname="nor2" name="XLXI_13">
            <blockpin signalname="Qbar" name="I0" />
            <blockpin signalname="R" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_14">
            <blockpin signalname="S" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Qbar" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_17">
            <blockpin signalname="Obar" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="O" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_18">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="O" name="I1" />
            <blockpin signalname="Obar" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="CLK" name="I0" />
            <blockpin signalname="R" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="CLK" name="I0" />
            <blockpin signalname="S" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_23">
            <blockpin signalname="Pbar" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="P" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_24">
            <blockpin signalname="XLXN_34" name="I0" />
            <blockpin signalname="P" name="I1" />
            <blockpin signalname="Pbar" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="XLXN_41" name="I0" />
            <blockpin signalname="CLK" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="CLK" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_27">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Q">
            <wire x2="1360" y1="1168" y2="1248" x1="1360" />
            <wire x2="1424" y1="1248" y2="1248" x1="1360" />
            <wire x2="1760" y1="1168" y2="1168" x1="1360" />
            <wire x2="1760" y1="1040" y2="1040" x1="1680" />
            <wire x2="1760" y1="1040" y2="1168" x1="1760" />
            <wire x2="1776" y1="1040" y2="1040" x1="1760" />
        </branch>
        <branch name="Qbar">
            <wire x2="1424" y1="1072" y2="1072" x1="1360" />
            <wire x2="1360" y1="1072" y2="1152" x1="1360" />
            <wire x2="1744" y1="1152" y2="1152" x1="1360" />
            <wire x2="1744" y1="1152" y2="1280" x1="1744" />
            <wire x2="1776" y1="1280" y2="1280" x1="1744" />
            <wire x2="1744" y1="1280" y2="1280" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1040" name="Q" orien="R0" />
        <iomarker fontsize="28" x="1776" y="1280" name="Qbar" orien="R0" />
        <instance x="1424" y="1136" name="XLXI_13" orien="R0" />
        <instance x="1424" y="1376" name="XLXI_14" orien="R0" />
        <instance x="1712" y="1616" name="XLXI_17" orien="R0" />
        <instance x="1712" y="1856" name="XLXI_18" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1712" y1="1488" y2="1488" x1="1680" />
        </branch>
        <instance x="1424" y="1584" name="XLXI_15" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="1712" y1="1792" y2="1792" x1="1680" />
        </branch>
        <instance x="1424" y="1888" name="XLXI_16" orien="R0" />
        <instance x="1712" y="2112" name="XLXI_23" orien="R0" />
        <instance x="1712" y="2352" name="XLXI_24" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="1712" y1="1984" y2="1984" x1="1680" />
        </branch>
        <instance x="1424" y="2080" name="XLXI_25" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="1712" y1="2288" y2="2288" x1="1680" />
        </branch>
        <instance x="1424" y="2384" name="XLXI_26" orien="R0" />
        <branch name="CLK">
            <wire x2="1408" y1="1888" y2="1888" x1="1296" />
            <wire x2="1408" y1="1888" y2="1952" x1="1408" />
            <wire x2="1408" y1="1952" y2="2256" x1="1408" />
            <wire x2="1424" y1="2256" y2="2256" x1="1408" />
            <wire x2="1424" y1="1952" y2="1952" x1="1408" />
            <wire x2="1424" y1="1520" y2="1520" x1="1408" />
            <wire x2="1408" y1="1520" y2="1824" x1="1408" />
            <wire x2="1424" y1="1824" y2="1824" x1="1408" />
            <wire x2="1408" y1="1824" y2="1888" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1296" y="1888" name="CLK" orien="R180" />
        <branch name="R">
            <wire x2="1344" y1="1008" y2="1008" x1="1264" />
            <wire x2="1424" y1="1008" y2="1008" x1="1344" />
            <wire x2="1344" y1="1008" y2="1456" x1="1344" />
            <wire x2="1424" y1="1456" y2="1456" x1="1344" />
        </branch>
        <branch name="S">
            <wire x2="1328" y1="1312" y2="1312" x1="1264" />
            <wire x2="1424" y1="1312" y2="1312" x1="1328" />
            <wire x2="1328" y1="1312" y2="1760" x1="1328" />
            <wire x2="1424" y1="1760" y2="1760" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1008" name="R" orien="R180" />
        <iomarker fontsize="28" x="1264" y="1312" name="S" orien="R180" />
        <branch name="XLXN_41">
            <wire x2="1424" y1="2016" y2="2016" x1="1392" />
        </branch>
        <instance x="1168" y="2048" name="XLXI_27" orien="R0" />
        <branch name="D">
            <wire x2="1152" y1="2016" y2="2016" x1="1120" />
            <wire x2="1168" y1="2016" y2="2016" x1="1152" />
            <wire x2="1152" y1="2016" y2="2320" x1="1152" />
            <wire x2="1424" y1="2320" y2="2320" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1120" y="2016" name="D" orien="R180" />
        <branch name="Pbar">
            <wire x2="1712" y1="2048" y2="2048" x1="1648" />
            <wire x2="1648" y1="2048" y2="2080" x1="1648" />
            <wire x2="2032" y1="2080" y2="2080" x1="1648" />
            <wire x2="2032" y1="2080" y2="2256" x1="2032" />
            <wire x2="2064" y1="2256" y2="2256" x1="2032" />
            <wire x2="2032" y1="2256" y2="2256" x1="1968" />
        </branch>
        <branch name="P">
            <wire x2="1984" y1="2112" y2="2112" x1="1712" />
            <wire x2="1712" y1="2112" y2="2224" x1="1712" />
            <wire x2="1984" y1="2016" y2="2016" x1="1968" />
            <wire x2="2000" y1="2016" y2="2016" x1="1984" />
            <wire x2="2016" y1="2016" y2="2016" x1="2000" />
            <wire x2="1984" y1="2016" y2="2112" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2016" y="2016" name="P" orien="R0" />
        <iomarker fontsize="28" x="2064" y="2256" name="Pbar" orien="R0" />
        <branch name="O">
            <wire x2="2000" y1="1616" y2="1616" x1="1680" />
            <wire x2="1680" y1="1616" y2="1728" x1="1680" />
            <wire x2="1712" y1="1728" y2="1728" x1="1680" />
            <wire x2="2000" y1="1520" y2="1520" x1="1968" />
            <wire x2="2016" y1="1520" y2="1520" x1="2000" />
            <wire x2="2000" y1="1520" y2="1616" x1="2000" />
        </branch>
        <branch name="Obar">
            <wire x2="1712" y1="1552" y2="1648" x1="1712" />
            <wire x2="2000" y1="1648" y2="1648" x1="1712" />
            <wire x2="2000" y1="1648" y2="1760" x1="2000" />
            <wire x2="2016" y1="1760" y2="1760" x1="2000" />
            <wire x2="2000" y1="1760" y2="1760" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="2016" y="1520" name="O" orien="R0" />
        <iomarker fontsize="28" x="2016" y="1760" name="Obar" orien="R0" />
    </sheet>
</drawing>