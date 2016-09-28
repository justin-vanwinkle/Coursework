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
        BEGIN BLOCK XLXI_1 xor2
            ATTR Device "XOR"
            PIN I0 B
            PIN I1 A
            PIN O O
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1712 1344 R0
        BEGIN BRANCH O
            WIRE 1968 1248 2064 1248
        END BRANCH
        BEGIN BRANCH A
            WIRE 1600 1216 1712 1216
        END BRANCH
        BEGIN BRANCH B
            WIRE 1600 1280 1712 1280
        END BRANCH
        IOMARKER 1600 1216 A R180 28
        IOMARKER 1600 1280 B R180 28
        IOMARKER 2064 1248 O R0 28
    END SHEET
END SCHEMATIC
