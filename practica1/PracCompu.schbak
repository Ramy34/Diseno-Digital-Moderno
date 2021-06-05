VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "acr2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B
        SIGNAL SAND
        SIGNAL SXOR
        SIGNAL SOR
        SIGNAL SINV
        SIGNAL SNOR
        SIGNAL SNAND
        SIGNAL SXNOR
        SIGNAL A
        PORT Input B
        PORT Output SAND
        PORT Output SXOR
        PORT Output SOR
        PORT Output SINV
        PORT Output SNOR
        PORT Output SNAND
        PORT Output SXNOR
        PORT Input A
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
        BEGIN BLOCKDEF nor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N 28 -144 204 32 192 -96 112 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -48 48 -48 
            LINE N 112 -144 48 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF xnor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
            CIRCLE N 212 -104 228 -88 
            LINE N 228 -96 256 -96 
            LINE N 60 -28 60 -28 
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
        BEGIN BLOCK XLXI_5 and2
            PIN I0 B
            PIN I1 A
            PIN O SAND
        END BLOCK
        BEGIN BLOCK XLXI_6 or2
            PIN I0 B
            PIN I1 A
            PIN O SOR
        END BLOCK
        BEGIN BLOCK XLXI_7 nand2
            PIN I0 B
            PIN I1 A
            PIN O SNAND
        END BLOCK
        BEGIN BLOCK XLXI_8 nor2
            PIN I0 B
            PIN I1 A
            PIN O SNOR
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I B
            PIN O SINV
        END BLOCK
        BEGIN BLOCK XLXI_10 xnor2
            PIN I0 B
            PIN I1 A
            PIN O SXNOR
        END BLOCK
        BEGIN BLOCK XLXI_11 xor2
            PIN I0 B
            PIN I1 A
            PIN O SXOR
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_5 1472 1088 R0
        INSTANCE XLXI_6 1488 896 R0
        INSTANCE XLXI_11 1440 1248 R0
        INSTANCE XLXI_8 1440 1472 R0
        INSTANCE XLXI_10 1440 1728 R0
        INSTANCE XLXI_7 1440 1600 R0
        INSTANCE XLXI_9 1472 1296 R0
        BEGIN BRANCH B
            WIRE 1072 1024 1152 1024
            WIRE 1152 1024 1472 1024
            WIRE 1152 1024 1152 1664
            WIRE 1152 1664 1200 1664
            WIRE 1200 1664 1440 1664
            WIRE 1200 832 1488 832
            WIRE 1200 832 1200 1184
            WIRE 1200 1184 1200 1264
            WIRE 1200 1264 1472 1264
            WIRE 1200 1264 1200 1408
            WIRE 1200 1408 1440 1408
            WIRE 1200 1408 1200 1536
            WIRE 1200 1536 1440 1536
            WIRE 1200 1536 1200 1664
            WIRE 1200 1184 1440 1184
        END BRANCH
        BEGIN BRANCH SAND
            WIRE 1728 992 1760 992
        END BRANCH
        IOMARKER 1760 992 SAND R0 28
        BEGIN BRANCH SXOR
            WIRE 1696 1152 1728 1152
        END BRANCH
        IOMARKER 1728 1152 SXOR R0 28
        BEGIN BRANCH SOR
            WIRE 1744 800 1776 800
        END BRANCH
        IOMARKER 1776 800 SOR R0 28
        BEGIN BRANCH SINV
            WIRE 1696 1264 1728 1264
        END BRANCH
        IOMARKER 1728 1264 SINV R0 28
        BEGIN BRANCH SNOR
            WIRE 1696 1376 1728 1376
        END BRANCH
        IOMARKER 1728 1376 SNOR R0 28
        BEGIN BRANCH SNAND
            WIRE 1696 1504 1728 1504
        END BRANCH
        IOMARKER 1728 1504 SNAND R0 28
        BEGIN BRANCH SXNOR
            WIRE 1696 1632 1728 1632
        END BRANCH
        IOMARKER 1728 1632 SXNOR R0 28
        BEGIN BRANCH A
            WIRE 1136 768 1344 768
            WIRE 1344 768 1344 960
            WIRE 1344 960 1472 960
            WIRE 1344 960 1344 1120
            WIRE 1344 1120 1440 1120
            WIRE 1344 1120 1344 1344
            WIRE 1344 1344 1440 1344
            WIRE 1344 1344 1344 1472
            WIRE 1344 1472 1440 1472
            WIRE 1344 1472 1344 1600
            WIRE 1344 1600 1440 1600
            WIRE 1344 768 1488 768
        END BRANCH
        IOMARKER 1136 768 A R180 28
        IOMARKER 1072 1024 B R180 28
    END SHEET
END SCHEMATIC
