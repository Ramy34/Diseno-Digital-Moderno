VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "acr2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Entradas(3:0)
        SIGNAL A
        SIGNAL Entradas(0)
        SIGNAL Entradas(1)
        SIGNAL Entradas(3)
        SIGNAL Salidas(6:0)
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL Entradas(2)
        SIGNAL XLXN_46
        SIGNAL CLK
        SIGNAL XLXN_48
        PORT Output Salidas(6:0)
        PORT Input CLK
        BEGIN BLOCKDEF Pract7
            TIMESTAMP 2018 5 14 20 23 35
            RECTANGLE N 64 -64 352 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 352 -44 416 -20 
            LINE N 352 -32 416 -32 
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
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 384 -256 320 -256 
            LINE N 0 -256 64 -256 
            LINE N 0 -128 64 -128 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF Divisor
            TIMESTAMP 2018 5 21 21 20 54
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 Pract7
            PIN Entradas(3:0) Entradas(3:0)
            PIN Salidas(6:0) Salidas(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 gnd
            PIN G Entradas(3)
        END BLOCK
        BEGIN BLOCK XLXI_12 fd
            PIN C XLXN_42
            PIN D Entradas(2)
            PIN Q XLXN_46
        END BLOCK
        BEGIN BLOCK XLXI_13 fd
            PIN C XLXN_41
            PIN D Entradas(1)
            PIN Q XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_14 fd
            PIN C A
            PIN D Entradas(0)
            PIN Q XLXN_41
        END BLOCK
        BEGIN BLOCK XLXI_19 inv
            PIN I XLXN_41
            PIN O Entradas(0)
        END BLOCK
        BEGIN BLOCK XLXI_20 inv
            PIN I XLXN_42
            PIN O Entradas(1)
        END BLOCK
        BEGIN BLOCK XLXI_21 inv
            PIN I XLXN_46
            PIN O Entradas(2)
        END BLOCK
        BEGIN BLOCK XLXI_25 Divisor
            PIN Reloj CLK
            PIN Divisor A
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH Entradas(3:0)
            WIRE 1232 128 1296 128
            WIRE 1296 128 1376 128
            WIRE 1376 128 1456 128
            WIRE 1456 128 1536 128
            WIRE 1536 128 1584 128
        END BRANCH
        BEGIN INSTANCE XLXI_4 1584 160 R0
        END INSTANCE
        BEGIN BRANCH Entradas(1)
            WIRE 480 448 480 576
            WIRE 480 576 496 576
            WIRE 480 448 1296 448
            WIRE 1296 448 1296 576
            WIRE 1296 576 1456 576
            WIRE 1232 576 1296 576
            WIRE 1456 224 1456 576
        END BRANCH
        BUSTAP 1536 128 1536 224
        BUSTAP 1456 128 1456 224
        BUSTAP 1376 128 1376 224
        BUSTAP 1296 128 1296 224
        INSTANCE XLXI_11 1232 416 R0
        BEGIN BRANCH Entradas(3)
            WIRE 1296 224 1296 288
        END BRANCH
        BEGIN BRANCH Salidas(6:0)
            WIRE 2000 128 2032 128
        END BRANCH
        IOMARKER 2032 128 Salidas(6:0) R0 28
        INSTANCE XLXI_12 480 432 R0
        INSTANCE XLXI_13 496 832 R0
        BEGIN BRANCH A
            WIRE 272 1136 432 1136
            WIRE 272 1136 272 1264
            WIRE 272 1264 672 1264
            WIRE 672 1264 672 1376
            WIRE 624 1376 672 1376
            WIRE 624 1376 624 1504
            BEGIN DISPLAY 272 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 432 1264 R0
        BEGIN BRANCH Entradas(0)
            WIRE 144 864 144 1008
            WIRE 144 1008 432 1008
            WIRE 144 864 1232 864
            WIRE 1232 864 1232 1008
            WIRE 1232 1008 1536 1008
            WIRE 1152 1008 1232 1008
            WIRE 1536 224 1536 1008
        END BRANCH
        INSTANCE XLXI_19 928 1040 R0
        BEGIN BRANCH XLXN_41
            WIRE 416 704 496 704
            WIRE 416 704 416 832
            WIRE 416 832 832 832
            WIRE 832 832 832 1008
            WIRE 832 1008 928 1008
            WIRE 816 1008 832 1008
        END BRANCH
        INSTANCE XLXI_20 1008 608 R0
        BEGIN BRANCH XLXN_42
            WIRE 416 304 480 304
            WIRE 416 304 416 432
            WIRE 416 432 944 432
            WIRE 944 432 944 576
            WIRE 944 576 1008 576
            WIRE 880 576 944 576
        END BRANCH
        BEGIN BRANCH Entradas(2)
            WIRE 432 48 1152 48
            WIRE 1152 48 1152 176
            WIRE 1152 176 1248 176
            WIRE 1248 176 1248 240
            WIRE 1248 240 1376 240
            WIRE 432 48 432 176
            WIRE 432 176 480 176
            WIRE 1120 176 1152 176
            WIRE 1376 224 1376 240
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 864 176 896 176
        END BRANCH
        INSTANCE XLXI_21 896 208 R0
        IOMARKER 112 1376 CLK R180 28
        BEGIN BRANCH CLK
            WIRE 112 1376 192 1376
            WIRE 192 1376 192 1456
            WIRE 112 1456 192 1456
            WIRE 112 1456 112 1504
            WIRE 112 1504 240 1504
        END BRANCH
        BEGIN INSTANCE XLXI_25 240 1536 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
