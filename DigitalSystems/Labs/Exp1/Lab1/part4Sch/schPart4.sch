VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A
        SIGNAL B
        SIGNAL S
        SIGNAL W
        SIGNAL X
        SIGNAL Y
        SIGNAL Z
        PORT Input A
        PORT Input B
        PORT Output S
        PORT Output W
        PORT Output X
        PORT Output Y
        PORT Output Z
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF nand2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 inv
            PIN I A
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B
            PIN I1 A
            PIN O W
        END BLOCK
        BEGIN BLOCK XLXI_3 or2
            PIN I0 B
            PIN I1 A
            PIN O X
        END BLOCK
        BEGIN BLOCK XLXI_4 nand2
            PIN I0 B
            PIN I1 A
            PIN O Y
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 B
            PIN I1 A
            PIN O Z
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 880 672 R0
        INSTANCE XLXI_2 848 848 R0
        INSTANCE XLXI_3 848 976 R0
        INSTANCE XLXI_4 848 1104 R0
        INSTANCE XLXI_5 848 1232 R0
        BEGIN BRANCH A
            WIRE 720 480 800 480
            WIRE 800 480 800 640
            WIRE 800 640 880 640
            WIRE 800 640 800 720
            WIRE 800 720 800 848
            WIRE 800 848 800 976
            WIRE 800 976 800 1104
            WIRE 800 1104 848 1104
            WIRE 800 976 848 976
            WIRE 800 848 848 848
            WIRE 800 720 848 720
        END BRANCH
        BEGIN BRANCH B
            WIRE 720 560 768 560
            WIRE 768 560 768 784
            WIRE 768 784 768 912
            WIRE 768 912 768 1040
            WIRE 768 1040 768 1168
            WIRE 768 1168 848 1168
            WIRE 768 1040 848 1040
            WIRE 768 912 848 912
            WIRE 768 784 848 784
        END BRANCH
        IOMARKER 720 480 A R180 28
        IOMARKER 720 560 B R180 28
        BEGIN BRANCH S
            WIRE 1104 640 1136 640
        END BRANCH
        IOMARKER 1136 640 S R0 28
        BEGIN BRANCH W
            WIRE 1104 752 1136 752
        END BRANCH
        IOMARKER 1136 752 W R0 28
        BEGIN BRANCH X
            WIRE 1104 880 1136 880
        END BRANCH
        IOMARKER 1136 880 X R0 28
        BEGIN BRANCH Y
            WIRE 1104 1008 1136 1008
        END BRANCH
        IOMARKER 1136 1008 Y R0 28
        BEGIN BRANCH Z
            WIRE 1104 1136 1136 1136
        END BRANCH
        IOMARKER 1136 1136 Z R0 28
    END SHEET
END SCHEMATIC
