VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL reset
        SIGNAL clk_disp
        SIGNAL clk_man
        SIGNAL sel(1:0)
        SIGNAL LEDS(7:0)
        SIGNAL Control(7:0)
        SIGNAL sw(7:0)
        SIGNAL Inst(15:0)
        SIGNAL PCout(7:0)
        SIGNAL OpA(7:0)
        SIGNAL OpB(7:0)
        SIGNAL Res(7:0)
        SIGNAL aux0(4:0)
        SIGNAL aux1(4:0)
        SIGNAL aux2(4:0)
        SIGNAL aux3(4:0)
        SIGNAL pulse2
        SIGNAL btn3
        SIGNAL clk
        SIGNAL btn2
        SIGNAL btn1
        SIGNAL LD(7:0)
        SIGNAL D3(4)
        SIGNAL aux3(4)
        SIGNAL aux0(4)
        SIGNAL aux1(4)
        SIGNAL aux2(4)
        SIGNAL D0(4)
        SIGNAL D1(4)
        SIGNAL D2(4)
        SIGNAL PCout(3:0)
        SIGNAL Inst(3:0)
        SIGNAL OpB(3:0)
        SIGNAL PCout(7:4)
        SIGNAL Inst(7:4)
        SIGNAL OpB(7:4)
        SIGNAL Res(3:0)
        SIGNAL aux2(3:0)
        SIGNAL Inst(11:8)
        SIGNAL OpA(3:0)
        SIGNAL Res(7:4)
        SIGNAL aux3(3:0)
        SIGNAL Inst(15:12)
        SIGNAL OpA(7:4)
        SIGNAL D0(3:0)
        SIGNAL D1(3:0)
        SIGNAL D2(3:0)
        SIGNAL D3(3:0)
        SIGNAL aux0(3:0)
        SIGNAL aux1(3:0)
        SIGNAL XLXN_41(6:0)
        SIGNAL XLXN_42(6:0)
        SIGNAL XLXN_43(6:0)
        SIGNAL XLXN_44(6:0)
        SIGNAL XLXN_199(6:0)
        SIGNAL seg(6:0)
        SIGNAL an(3:0)
        SIGNAL D0(4:0)
        SIGNAL D1(4:0)
        SIGNAL D2(4:0)
        SIGNAL D3(4:0)
        SIGNAL dp
        PORT Input reset
        PORT Input sw(7:0)
        PORT Input btn3
        PORT Input clk
        PORT Input btn2
        PORT Input btn1
        PORT Output LD(7:0)
        PORT Output seg(6:0)
        PORT Output an(3:0)
        PORT Output dp
        BEGIN BLOCKDEF MIPS
            TIMESTAMP 2009 4 28 16 8 51
            RECTANGLE N 64 -448 320 0 
            LINE N 64 -416 0 -416 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -428 384 -404 
            LINE N 320 -416 384 -416 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF clk_div
            TIMESTAMP 2009 5 4 11 39 30
            LINE N 64 32 0 32 
            LINE N 320 32 384 32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -192 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF Contr_7seg
            TIMESTAMP 2009 4 30 14 10 22
            RECTANGLE N 64 -384 320 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -204 384 -180 
            LINE N 320 -192 384 -192 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF control_out
            TIMESTAMP 2009 5 4 13 58 15
            RECTANGLE N 320 340 384 364 
            LINE N 320 352 384 352 
            RECTANGLE N 320 84 384 108 
            LINE N 320 96 384 96 
            RECTANGLE N 320 148 384 172 
            LINE N 320 160 384 160 
            RECTANGLE N 320 212 384 236 
            LINE N 320 224 384 224 
            RECTANGLE N 320 276 384 300 
            LINE N 320 288 384 288 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -128 320 384 
        END BLOCKDEF
        BEGIN BLOCKDEF HEX_7Seg_DEC
            TIMESTAMP 2009 4 30 14 10 28
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF M4to1_4
            TIMESTAMP 2009 4 30 15 30 52
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX8bits
            TIMESTAMP 2009 4 30 15 13 6
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF buf
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 MIPS
            PIN clk clk_man
            PIN reset reset
            PIN SW(7:0) sw(7:0)
            PIN LEDS(7:0) LEDS(7:0)
            PIN Inst(15:0) Inst(15:0)
            PIN PCout(7:0) PCout(7:0)
            PIN OpA(7:0) OpA(7:0)
            PIN OpB(7:0) OpB(7:0)
            PIN Res(7:0) Res(7:0)
            PIN Control(7:0) Control(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 control_out
            PIN clk pulse2
            PIN reset reset
            PIN aux0(4:0) aux0(4:0)
            PIN aux1(4:0) aux1(4:0)
            PIN aux2(4:0) aux2(4:0)
            PIN aux3(4:0) aux3(4:0)
            PIN sel(1:0) sel(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 clk_div
            PIN clk_in clk
            PIN reset reset
            PIN manual btn3
            PIN clk_50MHz clk_disp
            PIN pulse clk_man
            PIN clk_2sec
            PIN manual2 btn2
            PIN pulse2 pulse2
        END BLOCK
        BEGIN BLOCK XLXI_32 MUX8bits
            PIN Sel btn1
            PIN A(7:0) LEDS(7:0)
            PIN B(7:0) Control(7:0)
            PIN Y(7:0) LD(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_73 buf
            PIN I aux3(4)
            PIN O D3(4)
        END BLOCK
        BEGIN BLOCK XLXI_70 buf
            PIN I aux0(4)
            PIN O D0(4)
        END BLOCK
        BEGIN BLOCK XLXI_71 buf
            PIN I aux1(4)
            PIN O D1(4)
        END BLOCK
        BEGIN BLOCK XLXI_72 buf
            PIN I aux2(4)
            PIN O D2(4)
        END BLOCK
        BEGIN BLOCK XLXI_18 M4to1_4
            PIN I0(3:0) PCout(7:4)
            PIN I1(3:0) Inst(7:4)
            PIN I2(3:0) OpB(7:4)
            PIN I3(3:0) Res(3:0)
            PIN sel(1:0) sel(1:0)
            PIN Y(3:0) D1(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_20 M4to1_4
            PIN I0(3:0) aux3(3:0)
            PIN I1(3:0) Inst(15:12)
            PIN I2(3:0) OpA(7:4)
            PIN I3(3:0) aux1(3:0)
            PIN sel(1:0) sel(1:0)
            PIN Y(3:0) D3(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_19 M4to1_4
            PIN I0(3:0) aux2(3:0)
            PIN I1(3:0) Inst(11:8)
            PIN I2(3:0) OpA(3:0)
            PIN I3(3:0) Res(7:4)
            PIN sel(1:0) sel(1:0)
            PIN Y(3:0) D2(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 M4to1_4
            PIN I0(3:0) PCout(3:0)
            PIN I1(3:0) Inst(3:0)
            PIN I2(3:0) OpB(3:0)
            PIN I3(3:0) aux0(3:0)
            PIN sel(1:0) sel(1:0)
            PIN Y(3:0) D0(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 HEX_7Seg_DEC
            PIN bcd(4:0) D0(4:0)
            PIN seg(6:0) XLXN_41(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 HEX_7Seg_DEC
            PIN bcd(4:0) D1(4:0)
            PIN seg(6:0) XLXN_42(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 HEX_7Seg_DEC
            PIN bcd(4:0) D2(4:0)
            PIN seg(6:0) XLXN_43(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 HEX_7Seg_DEC
            PIN bcd(4:0) D3(4:0)
            PIN seg(6:0) XLXN_44(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 Contr_7seg
            PIN clk clk_disp
            PIN reset reset
            PIN disp1(6:0) XLXN_41(6:0)
            PIN disp2(6:0) XLXN_42(6:0)
            PIN disp3(6:0) XLXN_43(6:0)
            PIN disp4(6:0) XLXN_44(6:0)
            PIN dp dp
            PIN seg(6:0) seg(6:0)
            PIN an(3:0) an(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 464 2128 R0
        END INSTANCE
        BEGIN BRANCH clk_man
            WIRE 368 1712 464 1712
            BEGIN DISPLAY 368 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH reset
            WIRE 368 1904 464 1904
            BEGIN DISPLAY 368 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sw(7:0)
            WIRE 368 2096 464 2096
        END BRANCH
        BEGIN BRANCH LEDS(7:0)
            WIRE 848 1712 944 1712
            BEGIN DISPLAY 944 1712 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Inst(15:0)
            WIRE 848 1776 944 1776
            BEGIN DISPLAY 944 1776 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PCout(7:0)
            WIRE 848 1840 944 1840
            BEGIN DISPLAY 944 1840 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OpA(7:0)
            WIRE 848 1904 944 1904
            BEGIN DISPLAY 944 1904 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OpB(7:0)
            WIRE 848 1968 944 1968
            BEGIN DISPLAY 944 1968 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Res(7:0)
            WIRE 848 2032 944 2032
            BEGIN DISPLAY 944 2032 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Control(7:0)
            WIRE 848 2096 944 2096
            BEGIN DISPLAY 944 2096 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 368 2096 sw(7:0) R180 28
        BEGIN BRANCH reset
            WIRE 368 672 464 672
            BEGIN DISPLAY 368 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_8 464 704 R0
        END INSTANCE
        BEGIN BRANCH aux0(4:0)
            WIRE 848 800 928 800
            BEGIN DISPLAY 928 800 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH aux1(4:0)
            WIRE 848 864 928 864
            BEGIN DISPLAY 928 864 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH aux2(4:0)
            WIRE 848 928 928 928
            BEGIN DISPLAY 928 928 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH aux3(4:0)
            WIRE 848 992 928 992
            BEGIN DISPLAY 928 992 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pulse2
            WIRE 368 608 464 608
            BEGIN DISPLAY 368 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH btn3
            WIRE 400 288 464 288
        END BRANCH
        BEGIN BRANCH clk
            WIRE 368 160 464 160
        END BRANCH
        BEGIN BRANCH reset
            WIRE 400 224 464 224
        END BRANCH
        BEGIN BRANCH clk_disp
            WIRE 848 160 992 160
            BEGIN DISPLAY 992 160 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk_man
            WIRE 848 224 992 224
            BEGIN DISPLAY 992 224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH btn2
            WIRE 400 352 464 352
        END BRANCH
        BEGIN BRANCH pulse2
            WIRE 848 352 992 352
            BEGIN DISPLAY 992 352 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 464 320 R0
        END INSTANCE
        IOMARKER 368 160 clk R180 28
        IOMARKER 400 224 reset R180 28
        IOMARKER 400 288 btn3 R180 28
        IOMARKER 400 352 btn2 R180 28
        BEGIN BRANCH btn1
            WIRE 336 2352 480 2352
        END BRANCH
        BEGIN BRANCH LEDS(7:0)
            WIRE 336 2416 480 2416
            BEGIN DISPLAY 336 2416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Control(7:0)
            WIRE 336 2480 480 2480
            BEGIN DISPLAY 336 2480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH LD(7:0)
            WIRE 864 2352 976 2352
        END BRANCH
        BEGIN INSTANCE XLXI_32 480 2512 R0
        END INSTANCE
        IOMARKER 976 2352 LD(7:0) R0 28
        IOMARKER 336 2352 btn1 R180 28
        BEGIN BRANCH sel(1:0)
            WIRE 848 1056 928 1056
            BEGIN DISPLAY 928 1056 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(4)
            WIRE 800 1488 880 1488
            BEGIN DISPLAY 880 1488 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH aux3(4)
            WIRE 480 1488 576 1488
            BEGIN DISPLAY 480 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_73 576 1520 R0
        INSTANCE XLXI_70 576 1232 R0
        INSTANCE XLXI_71 576 1328 R0
        INSTANCE XLXI_72 576 1424 R0
        BEGIN BRANCH aux0(4)
            WIRE 480 1200 576 1200
            BEGIN DISPLAY 480 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH aux1(4)
            WIRE 480 1296 576 1296
            BEGIN DISPLAY 480 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH aux2(4)
            WIRE 480 1392 576 1392
            BEGIN DISPLAY 480 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(4)
            WIRE 800 1200 880 1200
            BEGIN DISPLAY 880 1200 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(4)
            WIRE 800 1296 880 1296
            BEGIN DISPLAY 880 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(4)
            WIRE 800 1392 880 1392
            BEGIN DISPLAY 880 1392 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_18 1584 1360 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_20 1584 2416 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_19 1584 1888 R0
        END INSTANCE
        BEGIN BRANCH PCout(3:0)
            WIRE 1488 560 1568 560
            BEGIN DISPLAY 1488 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Inst(3:0)
            WIRE 1488 624 1568 624
            BEGIN DISPLAY 1488 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OpB(3:0)
            WIRE 1488 688 1568 688
            BEGIN DISPLAY 1488 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel(1:0)
            WIRE 1488 816 1568 816
            BEGIN DISPLAY 1488 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PCout(7:4)
            WIRE 1488 1072 1584 1072
            BEGIN DISPLAY 1488 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Inst(7:4)
            WIRE 1488 1136 1584 1136
            BEGIN DISPLAY 1488 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OpB(7:4)
            WIRE 1488 1200 1584 1200
            BEGIN DISPLAY 1488 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Res(3:0)
            WIRE 1488 1264 1584 1264
            BEGIN DISPLAY 1488 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel(1:0)
            WIRE 1488 1328 1584 1328
            BEGIN DISPLAY 1488 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH aux2(3:0)
            WIRE 1488 1600 1584 1600
            BEGIN DISPLAY 1488 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Inst(11:8)
            WIRE 1488 1664 1584 1664
            BEGIN DISPLAY 1488 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OpA(3:0)
            WIRE 1488 1728 1584 1728
            BEGIN DISPLAY 1488 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Res(7:4)
            WIRE 1488 1792 1584 1792
            BEGIN DISPLAY 1488 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel(1:0)
            WIRE 1488 1856 1584 1856
            BEGIN DISPLAY 1488 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH aux3(3:0)
            WIRE 1488 2128 1584 2128
            BEGIN DISPLAY 1488 2128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Inst(15:12)
            WIRE 1488 2192 1584 2192
            BEGIN DISPLAY 1488 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OpA(7:4)
            WIRE 1488 2256 1584 2256
            BEGIN DISPLAY 1488 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sel(1:0)
            WIRE 1488 2384 1584 2384
            BEGIN DISPLAY 1488 2384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D0(3:0)
            WIRE 1952 560 1984 560
            BEGIN DISPLAY 1984 560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(3:0)
            WIRE 1968 1072 2000 1072
            BEGIN DISPLAY 2000 1072 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(3:0)
            WIRE 1968 1600 2000 1600
            BEGIN DISPLAY 2000 1600 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(3:0)
            WIRE 1968 2128 2000 2128
            BEGIN DISPLAY 2000 2128 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH aux0(3:0)
            WIRE 1488 752 1568 752
            BEGIN DISPLAY 1488 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH aux1(3:0)
            WIRE 1488 2320 1584 2320
            BEGIN DISPLAY 1488 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_17 1568 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 2256 1200 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 2256 1424 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 2256 1680 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 2256 1952 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2816 1392 R0
        END INSTANCE
        BEGIN BRANCH XLXN_41(6:0)
            WIRE 2640 1168 2816 1168
        END BRANCH
        BEGIN BRANCH XLXN_42(6:0)
            WIRE 2640 1392 2720 1392
            WIRE 2720 1232 2720 1392
            WIRE 2720 1232 2816 1232
        END BRANCH
        BEGIN BRANCH XLXN_43(6:0)
            WIRE 2640 1648 2736 1648
            WIRE 2736 1296 2736 1648
            WIRE 2736 1296 2816 1296
        END BRANCH
        BEGIN BRANCH XLXN_44(6:0)
            WIRE 2640 1920 2752 1920
            WIRE 2752 1360 2816 1360
            WIRE 2752 1360 2752 1920
        END BRANCH
        BEGIN BRANCH clk_disp
            WIRE 2752 1040 2816 1040
            BEGIN DISPLAY 2752 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH reset
            WIRE 2752 1104 2816 1104
            BEGIN DISPLAY 2752 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH seg(6:0)
            WIRE 3200 1200 3280 1200
        END BRANCH
        BEGIN BRANCH an(3:0)
            WIRE 3200 1360 3280 1360
        END BRANCH
        BEGIN BRANCH D0(4:0)
            WIRE 2176 1168 2208 1168
            WIRE 2208 1168 2256 1168
            BEGIN DISPLAY 2208 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D1(4:0)
            WIRE 2160 1392 2192 1392
            WIRE 2192 1392 2256 1392
            BEGIN DISPLAY 2192 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D2(4:0)
            WIRE 2160 1648 2192 1648
            WIRE 2192 1648 2256 1648
            BEGIN DISPLAY 2192 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D3(4:0)
            WIRE 2176 1920 2208 1920
            WIRE 2208 1920 2256 1920
            BEGIN DISPLAY 2208 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dp
            WIRE 3200 1040 3280 1040
        END BRANCH
        IOMARKER 3280 1200 seg(6:0) R0 28
        IOMARKER 3280 1360 an(3:0) R0 28
        IOMARKER 3280 1040 dp R0 28
    END SHEET
END SCHEMATIC
