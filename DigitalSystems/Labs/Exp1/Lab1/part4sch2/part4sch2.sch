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
        INSTANCE XLXI_1 1056 1072 R0
        INSTANCE XLXI_2 1024 1248 R0
        INSTANCE XLXI_3 1024 1376 R0
        INSTANCE XLXI_4 1024 1504 R0
        INSTANCE XLXI_5 1024 1632 R0
        BEGIN BRANCH A
            WIRE 896 880 976 880
            WIRE 976 880 976 1040
            WIRE 976 1040 1056 1040
            WIRE 976 1040 976 1120
            WIRE 976 1120 976 1248
            WIRE 976 1248 976 1376
            WIRE 976 1376 976 1504
            WIRE 976 1504 1024 1504
            WIRE 976 1376 1024 1376
            WIRE 976 1248 1024 1248
            WIRE 976 1120 1024 1120
        END BRANCH
        BEGIN BRANCH B
            WIRE 896 960 944 960
            WIRE 944 960 944 1184
            WIRE 944 1184 944 1312
            WIRE 944 1312 944 1440
            WIRE 944 1440 944 1568
            WIRE 944 1568 1024 1568
            WIRE 944 1440 1024 1440
            WIRE 944 1312 1024 1312
            WIRE 944 1184 1024 1184
        END BRANCH
        BEGIN BRANCH S
            WIRE 1280 1040 1312 1040
        END BRANCH
        BEGIN BRANCH W
            WIRE 1280 1152 1312 1152
        END BRANCH
        BEGIN BRANCH X
            WIRE 1280 1280 1312 1280
        END BRANCH
        BEGIN BRANCH Y
            WIRE 1280 1408 1312 1408
        END BRANCH
        BEGIN BRANCH Z
            WIRE 1280 1536 1312 1536
        END BRANCH
        IOMARKER 896 880 A R180 28
        IOMARKER 896 960 B R180 28
        IOMARKER 1312 1040 S R0 28
        IOMARKER 1312 1152 W R0 28
        IOMARKER 1312 1280 X R0 28
        IOMARKER 1312 1408 Y R0 28
        IOMARKER 1312 1536 Z R0 28
    END SHEET
END SCHEMATIC
