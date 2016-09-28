<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="A(3:0)" />
        <signal name="A(3)" />
        <signal name="A(2)" />
        <signal name="A(1)" />
        <signal name="A(0)" />
        <signal name="O(3:0)" />
        <signal name="O(3)" />
        <signal name="O(2)" />
        <signal name="O(1)" />
        <signal name="O(0)" />
        <signal name="D(3:0)" />
        <signal name="D(3)" />
        <signal name="D(2)" />
        <signal name="D(1)" />
        <signal name="D(0)" />
        <signal name="WE" />
        <signal name="WCLK" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Output" name="O(3:0)" />
        <port polarity="Input" name="D(3:0)" />
        <port polarity="Input" name="WE" />
        <port polarity="Input" name="WCLK" />
        <blockdef name="ram32x4s">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="80" y1="-432" y2="-448" x1="64" />
            <line x2="64" y1="-448" y2="-464" x1="80" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-640" y2="-640" x1="384" />
            <line x2="320" y1="-704" y2="-704" x1="384" />
            <rect width="256" x="64" y="-832" height="768" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-640" y2="-640" x1="0" />
            <line x2="64" y1="-704" y2="-704" x1="0" />
            <line x2="64" y1="-768" y2="-768" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
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
        <block symbolname="ram32x4s" name="XLXI_1">
            <blockpin signalname="A(0)" name="A0" />
            <blockpin signalname="A(1)" name="A1" />
            <blockpin signalname="A(2)" name="A2" />
            <blockpin signalname="A(3)" name="A3" />
            <blockpin signalname="XLXN_1" name="A4" />
            <blockpin signalname="D(0)" name="D0" />
            <blockpin signalname="D(1)" name="D1" />
            <blockpin signalname="D(2)" name="D2" />
            <blockpin signalname="D(3)" name="D3" />
            <blockpin signalname="WCLK" name="WCLK" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="O(0)" name="O0" />
            <blockpin signalname="O(1)" name="O1" />
            <blockpin signalname="O(2)" name="O2" />
            <blockpin signalname="O(3)" name="O3" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1584" y="1696" name="XLXI_1" orien="R0" />
        <instance x="1488" y="1696" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1584" y1="1568" y2="1568" x1="1552" />
        </branch>
        <branch name="A(3:0)">
            <wire x2="1456" y1="1296" y2="1296" x1="1376" />
            <wire x2="1456" y1="1296" y2="1312" x1="1456" />
            <wire x2="1456" y1="1312" y2="1376" x1="1456" />
            <wire x2="1456" y1="1376" y2="1440" x1="1456" />
            <wire x2="1456" y1="1440" y2="1504" x1="1456" />
            <wire x2="1456" y1="1504" y2="1520" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1376" y="1296" name="A(3:0)" orien="R180" />
        <bustap x2="1552" y1="1504" y2="1504" x1="1456" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1504" type="branch" />
            <wire x2="1568" y1="1504" y2="1504" x1="1552" />
            <wire x2="1584" y1="1504" y2="1504" x1="1568" />
        </branch>
        <bustap x2="1552" y1="1440" y2="1440" x1="1456" />
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1440" type="branch" />
            <wire x2="1568" y1="1440" y2="1440" x1="1552" />
            <wire x2="1584" y1="1440" y2="1440" x1="1568" />
        </branch>
        <bustap x2="1552" y1="1376" y2="1376" x1="1456" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1376" type="branch" />
            <wire x2="1568" y1="1376" y2="1376" x1="1552" />
            <wire x2="1584" y1="1376" y2="1376" x1="1568" />
        </branch>
        <bustap x2="1552" y1="1312" y2="1312" x1="1456" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1312" type="branch" />
            <wire x2="1568" y1="1312" y2="1312" x1="1552" />
            <wire x2="1584" y1="1312" y2="1312" x1="1568" />
        </branch>
        <branch name="O(3:0)">
            <wire x2="2160" y1="976" y2="976" x1="2096" />
            <wire x2="2096" y1="976" y2="992" x1="2096" />
            <wire x2="2096" y1="992" y2="1056" x1="2096" />
            <wire x2="2096" y1="1056" y2="1120" x1="2096" />
            <wire x2="2096" y1="1120" y2="1184" x1="2096" />
            <wire x2="2096" y1="1184" y2="1200" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2160" y="976" name="O(3:0)" orien="R0" />
        <bustap x2="2000" y1="1184" y2="1184" x1="2096" />
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1184" type="branch" />
            <wire x2="1984" y1="1184" y2="1184" x1="1968" />
            <wire x2="2000" y1="1184" y2="1184" x1="1984" />
        </branch>
        <bustap x2="2000" y1="1120" y2="1120" x1="2096" />
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1120" type="branch" />
            <wire x2="1984" y1="1120" y2="1120" x1="1968" />
            <wire x2="2000" y1="1120" y2="1120" x1="1984" />
        </branch>
        <bustap x2="2000" y1="1056" y2="1056" x1="2096" />
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1056" type="branch" />
            <wire x2="1984" y1="1056" y2="1056" x1="1968" />
            <wire x2="2000" y1="1056" y2="1056" x1="1984" />
        </branch>
        <bustap x2="2000" y1="992" y2="992" x1="2096" />
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="992" type="branch" />
            <wire x2="1984" y1="992" y2="992" x1="1968" />
            <wire x2="2000" y1="992" y2="992" x1="1984" />
        </branch>
        <branch name="D(3:0)">
            <wire x2="1456" y1="976" y2="976" x1="1376" />
            <wire x2="1456" y1="976" y2="992" x1="1456" />
            <wire x2="1456" y1="992" y2="1056" x1="1456" />
            <wire x2="1456" y1="1056" y2="1120" x1="1456" />
            <wire x2="1456" y1="1120" y2="1184" x1="1456" />
            <wire x2="1456" y1="1184" y2="1200" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1376" y="976" name="D(3:0)" orien="R180" />
        <bustap x2="1552" y1="1184" y2="1184" x1="1456" />
        <branch name="D(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1184" type="branch" />
            <wire x2="1568" y1="1184" y2="1184" x1="1552" />
            <wire x2="1584" y1="1184" y2="1184" x1="1568" />
        </branch>
        <bustap x2="1552" y1="1120" y2="1120" x1="1456" />
        <branch name="D(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1120" type="branch" />
            <wire x2="1568" y1="1120" y2="1120" x1="1552" />
            <wire x2="1584" y1="1120" y2="1120" x1="1568" />
        </branch>
        <bustap x2="1552" y1="1056" y2="1056" x1="1456" />
        <branch name="D(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1056" type="branch" />
            <wire x2="1568" y1="1056" y2="1056" x1="1552" />
            <wire x2="1584" y1="1056" y2="1056" x1="1568" />
        </branch>
        <bustap x2="1552" y1="992" y2="992" x1="1456" />
        <branch name="D(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="992" type="branch" />
            <wire x2="1568" y1="992" y2="992" x1="1552" />
            <wire x2="1584" y1="992" y2="992" x1="1568" />
        </branch>
        <branch name="WE">
            <wire x2="1584" y1="928" y2="928" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="928" name="WE" orien="R180" />
        <branch name="WCLK">
            <wire x2="1584" y1="1248" y2="1248" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="1248" name="WCLK" orien="R180" />
    </sheet>
</drawing>