VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "acr2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Entradas(7:0)
        SIGNAL Selecciones(2:0)
        SIGNAL XLXN_3
        SIGNAL D
        SIGNAL XLXN_10
        SIGNAL A
        SIGNAL B
        SIGNAL C
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL Entradas(1:0)
        SIGNAL Entradas(1)
        SIGNAL Entradas(0)
        SIGNAL Monitor
        SIGNAL XLXN_18
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL Televisiom
        PORT Output D
        PORT Input A
        PORT Input B
        PORT Input C
        PORT Output Monitor
        PORT Output Televisiom
        BEGIN BLOCKDEF Mux21
            TIMESTAMP 2018 4 28 21 59 0
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF Mux81
            TIMESTAMP 2018 4 28 22 3 29
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 32 -64 
            LINE N 64 0 64 -32 
            LINE N 64 -32 64 -64 
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
        BEGIN BLOCK XLXI_2 Mux21
            PIN Seleccion A
            PIN Entradas(1:0) Entradas(1:0)
            PIN Salida Monitor
        END BLOCK
        BEGIN BLOCK XLXI_3 Mux81
            PIN Entradas(7:0) Entradas(7:0)
            PIN Selecciones(2:0) Selecciones(2:0)
            PIN Salida Televisiom
        END BLOCK
        BEGIN BLOCK XLXI_4 vcc
            PIN P XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_5 gnd
            PIN G XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 XLXN_21
            PIN I1 B
            PIN O Entradas(0)
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 XLXN_24
            PIN I1 XLXN_23
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 D
            PIN I1 XLXN_27
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_9 or2
            PIN I0 XLXN_13
            PIN I1 XLXN_12
            PIN O Entradas(1)
        END BLOCK
        BEGIN BLOCK XLXI_10 inv
            PIN I C
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_11 inv
            PIN I B
            PIN O XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_12 inv
            PIN I C
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_13 inv
            PIN I C
            PIN O XLXN_27
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_3 1632 464 R0
        END INSTANCE
        BEGIN BRANCH Entradas(7:0)
            WIRE 816 352 816 368
            WIRE 816 368 896 368
            WIRE 896 368 944 368
            WIRE 944 368 992 368
            WIRE 992 368 1040 368
            WIRE 1040 368 1088 368
            WIRE 1088 368 1152 368
            WIRE 1152 368 1216 368
            WIRE 1216 368 1280 368
            WIRE 1280 368 1632 368
        END BRANCH
        BEGIN BRANCH Selecciones(2:0)
            WIRE 1616 432 1632 432
            WIRE 1616 432 1616 512
            WIRE 1616 512 1616 560
            WIRE 1616 560 1616 608
            WIRE 1616 608 1616 640
        END BRANCH
        BUSTAP 896 368 896 464
        BUSTAP 944 368 944 464
        BUSTAP 992 368 992 464
        BUSTAP 1040 368 1040 464
        BUSTAP 1088 368 1088 464
        BUSTAP 1152 368 1152 464
        BUSTAP 1216 368 1216 464
        BUSTAP 1280 368 1280 464
        BEGIN BRANCH D
            WIRE 464 608 464 1184
            WIRE 464 1184 784 1184
            WIRE 464 608 992 608
            WIRE 992 608 992 736
            WIRE 992 464 992 608
        END BRANCH
        IOMARKER 992 736 D R90 28
        BEGIN BRANCH XLXN_10
            WIRE 416 384 416 480
            WIRE 416 480 1040 480
            WIRE 1040 480 1152 480
            WIRE 1152 480 1216 480
            WIRE 1216 480 1280 480
            WIRE 1040 464 1040 480
            WIRE 1152 464 1152 480
            WIRE 1216 464 1216 480
            WIRE 1280 464 1280 480
        END BRANCH
        BUSTAP 1616 512 1520 512
        BUSTAP 1616 560 1520 560
        BUSTAP 1616 608 1520 608
        BEGIN BRANCH A
            WIRE 1360 512 1472 512
            WIRE 1472 512 1472 832
            WIRE 1472 832 1632 832
            WIRE 1472 512 1520 512
        END BRANCH
        BEGIN BRANCH B
            WIRE 528 800 1424 800
            WIRE 528 800 528 816
            WIRE 528 816 528 848
            WIRE 528 848 784 848
            WIRE 528 816 528 992
            WIRE 1360 560 1424 560
            WIRE 1424 560 1520 560
            WIRE 1424 560 1424 800
        END BRANCH
        BEGIN BRANCH C
            WIRE 512 688 1392 688
            WIRE 512 688 512 912
            WIRE 512 912 528 912
            WIRE 512 912 512 1056
            WIRE 512 1056 528 1056
            WIRE 512 1056 512 1120
            WIRE 512 1120 528 1120
            WIRE 1360 608 1392 608
            WIRE 1392 608 1520 608
            WIRE 1392 608 1392 688
        END BRANCH
        IOMARKER 1360 512 A R180 28
        IOMARKER 1360 560 B R180 28
        IOMARKER 1360 608 C R180 28
        BEGIN INSTANCE XLXI_2 1632 928 R0
        END INSTANCE
        INSTANCE XLXI_6 784 976 R0
        INSTANCE XLXI_7 784 1120 R0
        INSTANCE XLXI_8 784 1248 R0
        INSTANCE XLXI_9 1168 1232 R0
        BEGIN BRANCH XLXN_12
            WIRE 1040 1024 1104 1024
            WIRE 1104 1024 1104 1104
            WIRE 1104 1104 1168 1104
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1040 1152 1104 1152
            WIRE 1104 1152 1104 1168
            WIRE 1104 1168 1168 1168
        END BRANCH
        BEGIN BRANCH Entradas(1:0)
            WIRE 1600 1152 1616 1152
            WIRE 1616 896 1632 896
            WIRE 1616 896 1616 944
            WIRE 1616 944 1616 1040
            WIRE 1616 1040 1616 1152
        END BRANCH
        BUSTAP 1616 944 1520 944
        BUSTAP 1616 1040 1520 1040
        BEGIN BRANCH Entradas(1)
            WIRE 1424 1136 1472 1136
            WIRE 1472 1040 1472 1136
            WIRE 1472 1040 1520 1040
        END BRANCH
        BEGIN BRANCH Entradas(0)
            WIRE 1040 880 1280 880
            WIRE 1280 880 1280 944
            WIRE 1280 944 1520 944
        END BRANCH
        BEGIN BRANCH Monitor
            WIRE 2016 832 2048 832
        END BRANCH
        IOMARKER 2048 832 Monitor R0 28
        BEGIN BRANCH XLXN_3
            WIRE 416 528 896 528
            WIRE 896 528 944 528
            WIRE 944 528 1088 528
            WIRE 416 528 416 576
            WIRE 896 464 896 528
            WIRE 944 464 944 528
            WIRE 1088 464 1088 528
        END BRANCH
        INSTANCE XLXI_5 352 704 R0
        INSTANCE XLXI_4 352 384 R0
        BEGIN BRANCH XLXN_21
            WIRE 752 912 784 912
        END BRANCH
        INSTANCE XLXI_10 528 944 R0
        BEGIN BRANCH XLXN_23
            WIRE 752 992 784 992
        END BRANCH
        INSTANCE XLXI_11 528 1024 R0
        BEGIN BRANCH XLXN_24
            WIRE 752 1056 784 1056
        END BRANCH
        INSTANCE XLXI_12 528 1088 R0
        BEGIN BRANCH XLXN_27
            WIRE 752 1120 784 1120
        END BRANCH
        INSTANCE XLXI_13 528 1152 R0
        BEGIN BRANCH Televisiom
            WIRE 2016 368 2048 368
        END BRANCH
        IOMARKER 2048 368 Televisiom R0 28
    END SHEET
END SCHEMATIC
