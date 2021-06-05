VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "acr2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL C
        SIGNAL XLXN_13
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL D
        SIGNAL Datos(0)
        SIGNAL Datos(1)
        SIGNAL Select(2)
        SIGNAL CERO
        SIGNAL UNO
        SIGNAL Select(2:0)
        SIGNAL Monitor
        SIGNAL Televison
        SIGNAL XLXN_44(2:0)
        SIGNAL Datos(7:0)
        SIGNAL Datos(1:0)
        SIGNAL B
        PORT Input C
        PORT Input D
        PORT Input Select(2)
        PORT Output Monitor
        PORT Output Televison
        PORT Output B
        BEGIN BLOCKDEF Mux21
            TIMESTAMP 2018 4 23 20 57 11
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF Mux81
            TIMESTAMP 2018 4 23 20 57 5
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -128 64 -96 
            LINE N 64 -64 64 -80 
            LINE N 88 -64 40 -64 
            LINE N 68 -32 60 -32 
            LINE N 76 -48 52 -48 
            LINE N 64 -64 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 32 -64 
            LINE N 64 0 64 -32 
            LINE N 64 -32 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Mux21
            PIN Sel Select(2)
            PIN Datos(1:0) Datos(1:0)
            PIN Y Monitor
        END BLOCK
        BEGIN BLOCK XLXI_2 Mux81
            PIN Datos(7:0) Datos(7:0)
            PIN Sel(2:0) Select(2:0)
            PIN Y Televison
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0
            PIN I1
            PIN O Datos(0)
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 XLXN_13
            PIN I1
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 D
            PIN I1
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_6 or2
            PIN I0 XLXN_17
            PIN I1 XLXN_16
            PIN O Datos(1)
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I C
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_8 inv
            PIN I
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_9 gnd
            PIN G CERO
        END BLOCK
        BEGIN BLOCK XLXI_10 vcc
            PIN P UNO
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH C
            WIRE 704 192 704 240
        END BRANCH
        INSTANCE XLXI_5 880 1168 R0
        INSTANCE XLXI_4 912 848 R0
        BEGIN BRANCH XLXN_13
            WIRE 800 704 800 784
            WIRE 800 784 912 784
        END BRANCH
        INSTANCE XLXI_6 1280 992 R0
        BEGIN BRANCH XLXN_16
            WIRE 1168 752 1184 752
            WIRE 1184 752 1184 864
            WIRE 1184 864 1280 864
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1136 1072 1152 1072
            WIRE 1152 928 1280 928
            WIRE 1152 928 1152 1072
        END BRANCH
        BEGIN BRANCH D
            WIRE 592 192 592 256
            WIRE 592 256 592 1104
            WIRE 592 1104 880 1104
            WIRE 592 256 608 256
            WIRE 608 256 608 512
            WIRE 608 512 752 512
            WIRE 752 368 752 512
            WIRE 752 368 1712 368
            WIRE 1712 368 1712 384
            WIRE 1712 240 1712 384
            WIRE 1712 304 1712 368
        END BRANCH
        IOMARKER 592 192 D R270 28
        INSTANCE XLXI_7 672 240 R90
        IOMARKER 704 192 C R270 28
        INSTANCE XLXI_8 768 480 R90
        IOMARKER 800 192 B R270 28
        INSTANCE XLXI_3 896 528 R0
        BUSTAP 1744 784 1648 784
        BUSTAP 1744 848 1648 848
        BEGIN BRANCH Datos(0)
            WIRE 1152 432 1392 432
            WIRE 1392 432 1392 784
            WIRE 1392 784 1648 784
        END BRANCH
        BEGIN BRANCH Datos(1)
            WIRE 1536 896 1584 896
            WIRE 1584 848 1584 896
            WIRE 1584 848 1648 848
        END BRANCH
        IOMARKER 864 192 Select(2) R270 28
        BEGIN INSTANCE XLXI_1 1792 848 R0
        END INSTANCE
        BUSTAP 1808 144 1808 240
        BUSTAP 1760 144 1760 240
        BUSTAP 1712 144 1712 240
        BUSTAP 1664 144 1664 240
        BUSTAP 1616 144 1616 240
        BUSTAP 1584 144 1584 240
        BUSTAP 1536 144 1536 240
        BUSTAP 1488 144 1488 240
        BEGIN BRANCH CERO
            WIRE 1584 240 1584 432
            WIRE 1584 432 1616 432
            WIRE 1616 432 1760 432
            WIRE 1760 432 1808 432
            WIRE 1808 432 1808 496
            WIRE 1616 240 1616 432
            WIRE 1760 240 1760 432
            WIRE 1808 240 1808 432
        END BRANCH
        BEGIN BRANCH UNO
            WIRE 1488 240 1488 480
            WIRE 1488 480 1536 480
            WIRE 1536 480 1664 480
            WIRE 1664 480 1664 512
            WIRE 1536 240 1536 480
            WIRE 1664 240 1664 480
        END BRANCH
        BEGIN BRANCH Select(2:0)
            WIRE 1936 208 1936 528
            WIRE 1936 528 1952 528
            WIRE 1952 528 2016 528
            WIRE 2016 528 2080 528
            WIRE 2080 528 2096 528
        END BRANCH
        BUSTAP 1952 528 1952 624
        BUSTAP 2016 528 2016 624
        BUSTAP 2080 528 2080 624
        BEGIN BRANCH Monitor
            WIRE 2176 752 2208 752
        END BRANCH
        IOMARKER 2208 752 Monitor R0 28
        BEGIN BRANCH Televison
            WIRE 2320 144 2416 144
        END BRANCH
        INSTANCE XLXI_9 1744 624 R0
        BEGIN BRANCH Select(2)
            WIRE 864 192 864 208
            WIRE 864 208 1408 208
            WIRE 1408 208 1408 416
            WIRE 1408 416 1408 752
            WIRE 1408 752 1792 752
            WIRE 1408 416 1472 416
            WIRE 1472 416 1472 656
            WIRE 1472 656 1952 656
            WIRE 1952 624 1952 656
        END BRANCH
        INSTANCE XLXI_10 1728 512 R180
        BEGIN INSTANCE XLXI_2 1936 240 R0
        END INSTANCE
        BEGIN BRANCH Datos(7:0)
            WIRE 1472 144 1936 144
        END BRANCH
        BEGIN BRANCH Datos(1:0)
            WIRE 1744 768 1792 768
            WIRE 1792 768 1792 816
            WIRE 1744 768 1744 864
        END BRANCH
        IOMARKER 2416 144 Televison R0 28
        BEGIN BRANCH B
            WIRE 800 192 800 272
            WIRE 800 272 848 272
            WIRE 848 272 848 688
            WIRE 848 688 2016 688
            WIRE 2016 624 2016 688
        END BRANCH
    END SHEET
END SCHEMATIC
