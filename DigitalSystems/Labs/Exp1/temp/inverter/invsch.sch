VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A
        SIGNAL O
        PORT Input A
        PORT Output O
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 inv
            PIN I A
            PIN O O
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1632 1328 R0
        BEGIN BRANCH A
            WIRE 1600 1296 1632 1296
        END BRANCH
        BEGIN BRANCH O
            WIRE 1856 1296 1888 1296
        END BRANCH
        IOMARKER 1600 1296 A R180 28
        IOMARKER 1888 1296 O R0 28
    END SHEET
END SCHEMATIC
