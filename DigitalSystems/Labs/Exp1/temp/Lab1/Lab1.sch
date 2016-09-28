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
        SIGNAL O
        SIGNAL XLXN_4
        PORT Input A
        PORT Input B
        PORT Output O
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
        BEGIN BLOCK XLXI_1 and2
            PIN I0 B
            PIN I1 A
            PIN O O
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 720 512 R0
        BEGIN BRANCH A
            WIRE 640 384 720 384
        END BRANCH
        BEGIN BRANCH B
            WIRE 640 448 720 448
        END BRANCH
        BEGIN BRANCH O
            WIRE 976 416 992 416
            WIRE 992 416 1072 416
        END BRANCH
        IOMARKER 640 384 A R180 28
        IOMARKER 640 448 B R180 28
        IOMARKER 1072 416 O R0 28
    END SHEET
END SCHEMATIC
