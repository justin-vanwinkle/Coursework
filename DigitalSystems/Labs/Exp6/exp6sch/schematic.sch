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
        <signal name="XLXN_3" />
        <signal name="A" />
        <signal name="B" />
        <signal name="C" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="F" />
        <signal name="Z" />
        <signal name="Y" />
        <signal name="X" />
        <signal name="W" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="G" />
        <signal name="XLXN_26" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="F" />
        <port polarity="Input" name="Z" />
        <port polarity="Input" name="Y" />
        <port polarity="Input" name="X" />
        <port polarity="Input" name="W" />
        <port polarity="Output" name="G" />
        <blockdef name="d3_8e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
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
        <blockdef name="or7">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="72" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-256" y2="-256" x1="256" />
            <arc ex="112" ey="-304" sx="192" sy="-256" r="88" cx="116" cy="-216" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="192" ey="-256" sx="112" sy="-208" r="88" cx="116" cy="-296" />
            <line x2="48" y1="-304" y2="-304" x1="112" />
            <line x2="48" y1="-448" y2="-304" x1="48" />
            <line x2="48" y1="-64" y2="-208" x1="48" />
            <arc ex="48" ey="-304" sx="48" sy="-208" r="56" cx="16" cy="-256" />
        </blockdef>
        <block symbolname="d3_8e" name="XLXI_1">
            <blockpin signalname="C" name="A0" />
            <blockpin signalname="B" name="A1" />
            <blockpin signalname="A" name="A2" />
            <blockpin signalname="C" name="E" />
            <blockpin name="D0" />
            <blockpin signalname="XLXN_1" name="D1" />
            <blockpin name="D2" />
            <blockpin name="D3" />
            <blockpin name="D4" />
            <blockpin signalname="XLXN_2" name="D5" />
            <blockpin name="D6" />
            <blockpin signalname="XLXN_3" name="D7" />
        </block>
        <block symbolname="or3" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="d3_8e" name="XLXI_3">
            <blockpin signalname="Z" name="A0" />
            <blockpin signalname="Y" name="A1" />
            <blockpin signalname="X" name="A2" />
            <blockpin signalname="XLXN_16" name="E" />
            <blockpin name="D0" />
            <blockpin name="D1" />
            <blockpin signalname="XLXN_17" name="D2" />
            <blockpin name="D3" />
            <blockpin name="D4" />
            <blockpin name="D5" />
            <blockpin signalname="XLXN_26" name="D6" />
            <blockpin name="D7" />
        </block>
        <block symbolname="d3_8e" name="XLXI_4">
            <blockpin signalname="Z" name="A0" />
            <blockpin signalname="Y" name="A1" />
            <blockpin signalname="X" name="A2" />
            <blockpin signalname="W" name="E" />
            <blockpin signalname="XLXN_20" name="D0" />
            <blockpin signalname="XLXN_21" name="D1" />
            <blockpin signalname="XLXN_22" name="D2" />
            <blockpin signalname="XLXN_23" name="D3" />
            <blockpin name="D4" />
            <blockpin name="D5" />
            <blockpin signalname="XLXN_24" name="D6" />
            <blockpin name="D7" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="W" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="or7" name="XLXI_9">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="XLXN_21" name="I3" />
            <blockpin signalname="XLXN_20" name="I4" />
            <blockpin signalname="XLXN_26" name="I5" />
            <blockpin signalname="XLXN_17" name="I6" />
            <blockpin signalname="G" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="880" y="1040" name="XLXI_1" orien="R0" />
        <instance x="1520" y="800" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1520" y1="528" y2="528" x1="1264" />
            <wire x2="1520" y1="528" y2="608" x1="1520" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1392" y1="784" y2="784" x1="1264" />
            <wire x2="1392" y1="672" y2="784" x1="1392" />
            <wire x2="1520" y1="672" y2="672" x1="1392" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1520" y1="912" y2="912" x1="1264" />
            <wire x2="1520" y1="736" y2="912" x1="1520" />
        </branch>
        <branch name="A">
            <wire x2="880" y1="592" y2="592" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="592" name="A" orien="R180" />
        <branch name="B">
            <wire x2="880" y1="528" y2="528" x1="848" />
        </branch>
        <iomarker fontsize="28" x="848" y="528" name="B" orien="R180" />
        <branch name="C">
            <wire x2="752" y1="464" y2="464" x1="688" />
            <wire x2="864" y1="464" y2="464" x1="752" />
            <wire x2="880" y1="464" y2="464" x1="864" />
            <wire x2="752" y1="464" y2="912" x1="752" />
            <wire x2="880" y1="912" y2="912" x1="752" />
        </branch>
        <iomarker fontsize="28" x="688" y="464" name="C" orien="R180" />
        <branch name="F">
            <wire x2="1808" y1="672" y2="672" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1808" y="672" name="F" orien="R0" />
        <instance x="880" y="1680" name="XLXI_3" orien="R0" />
        <instance x="880" y="2288" name="XLXI_4" orien="R0" />
        <branch name="Z">
            <wire x2="864" y1="1104" y2="1104" x1="768" />
            <wire x2="880" y1="1104" y2="1104" x1="864" />
            <wire x2="864" y1="1104" y2="1712" x1="864" />
            <wire x2="880" y1="1712" y2="1712" x1="864" />
        </branch>
        <branch name="Y">
            <wire x2="848" y1="1168" y2="1168" x1="768" />
            <wire x2="880" y1="1168" y2="1168" x1="848" />
            <wire x2="848" y1="1168" y2="1552" x1="848" />
            <wire x2="848" y1="1552" y2="1776" x1="848" />
            <wire x2="880" y1="1776" y2="1776" x1="848" />
        </branch>
        <branch name="X">
            <wire x2="832" y1="1232" y2="1232" x1="768" />
            <wire x2="880" y1="1232" y2="1232" x1="832" />
            <wire x2="832" y1="1232" y2="1840" x1="832" />
            <wire x2="880" y1="1840" y2="1840" x1="832" />
        </branch>
        <branch name="W">
            <wire x2="816" y1="2160" y2="2160" x1="784" />
            <wire x2="880" y1="2160" y2="2160" x1="816" />
            <wire x2="816" y1="2048" y2="2160" x1="816" />
        </branch>
        <instance x="848" y="2048" name="XLXI_8" orien="R270" />
        <branch name="XLXN_16">
            <wire x2="816" y1="1552" y2="1824" x1="816" />
            <wire x2="880" y1="1552" y2="1552" x1="816" />
        </branch>
        <iomarker fontsize="28" x="768" y="1168" name="Y" orien="R180" />
        <iomarker fontsize="28" x="768" y="1232" name="X" orien="R180" />
        <iomarker fontsize="28" x="784" y="2160" name="W" orien="R180" />
        <instance x="1536" y="1888" name="XLXI_9" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1536" y1="1232" y2="1232" x1="1264" />
            <wire x2="1536" y1="1232" y2="1440" x1="1536" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1392" y1="1712" y2="1712" x1="1264" />
            <wire x2="1392" y1="1568" y2="1712" x1="1392" />
            <wire x2="1536" y1="1568" y2="1568" x1="1392" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1408" y1="1776" y2="1776" x1="1264" />
            <wire x2="1408" y1="1632" y2="1776" x1="1408" />
            <wire x2="1536" y1="1632" y2="1632" x1="1408" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1424" y1="1840" y2="1840" x1="1264" />
            <wire x2="1424" y1="1696" y2="1840" x1="1424" />
            <wire x2="1536" y1="1696" y2="1696" x1="1424" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1440" y1="1904" y2="1904" x1="1264" />
            <wire x2="1440" y1="1760" y2="1904" x1="1440" />
            <wire x2="1536" y1="1760" y2="1760" x1="1440" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1536" y1="2096" y2="2096" x1="1264" />
            <wire x2="1536" y1="1824" y2="2096" x1="1536" />
        </branch>
        <branch name="G">
            <wire x2="1824" y1="1632" y2="1632" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="1632" name="G" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="1392" y1="1488" y2="1488" x1="1264" />
            <wire x2="1392" y1="1488" y2="1504" x1="1392" />
            <wire x2="1536" y1="1504" y2="1504" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="768" y="1104" name="Z" orien="R180" />
    </sheet>
</drawing>