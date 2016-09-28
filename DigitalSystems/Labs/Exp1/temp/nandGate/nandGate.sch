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
        PORT Input A
        PORT Input B
        PORT Output O
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
        BEGIN BLOCK XLXI_1 nand2
            PIN I0 B
            PIN I1 A
            PIN O O
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 528 400 R0
        BEGIN BRANCH A
            WIRE 432 224 464 224
            WIRE 464 224 464 272
            WIRE 464 272 528 272
        END BRANCH
        BEGIN BRANCH B
            WIRE 416 368 464 368
            WIRE 464 336 528 336
            WIRE 464 336 464 368
        END BRANCH
        BEGIN BRANCH O
            WIRE 784 304 832 304
            WIRE 832 272 832 304
            WIRE 832 272 864 272
        END BRANCH
        IOMARKER 432 224 A R180 28
        IOMARKER 416 368 B R180 28
        IOMARKER 864 272 O R0 28
    END SHEET
END SCHEMATIC
