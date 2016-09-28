VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL O
        SIGNAL A
        SIGNAL B
        PORT Output O
        PORT Input A
        PORT Input B
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
        BEGIN BLOCK XLXI_1 or2
            PIN I0 B
            PIN I1 A
            PIN O O
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1568 1392 R0
        BEGIN BRANCH O
            WIRE 1824 1296 1872 1296
        END BRANCH
        BEGIN BRANCH A
            WIRE 1520 1264 1568 1264
        END BRANCH
        BEGIN BRANCH B
            WIRE 1520 1328 1568 1328
        END BRANCH
        IOMARKER 1520 1264 A R180 28
        IOMARKER 1520 1328 B R180 28
        IOMARKER 1872 1296 O R0 28
    END SHEET
END SCHEMATIC
