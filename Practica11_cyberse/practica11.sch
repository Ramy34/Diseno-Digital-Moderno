VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Q(5:0)
        SIGNAL Q(0)
        SIGNAL Q(1)
        SIGNAL Q(2)
        SIGNAL Q(3)
        SIGNAL Q(4)
        SIGNAL Q(5)
        SIGNAL XLXN_1
        SIGNAL Reloj
        PORT Output Q(0)
        PORT Output Q(1)
        PORT Output Q(2)
        PORT Output Q(3)
        PORT Output Q(4)
        PORT Output Q(5)
        PORT Input Reloj
        BEGIN BLOCKDEF contador
            TIMESTAMP 2018 5 21 21 32 24
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Divisor
            TIMESTAMP 2018 5 21 21 23 40
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 contador
            PIN segundo XLXN_1
            PIN Q(5:0) Q(5:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 Divisor
            PIN Reloj Reloj
            PIN Divisor XLXN_1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1216 1136 R0
        END INSTANCE
        BEGIN BRANCH Q(5:0)
            WIRE 1600 1104 1648 1104
            WIRE 1648 1104 1696 1104
            WIRE 1696 1104 1728 1104
            WIRE 1728 1104 1776 1104
            WIRE 1776 1104 1824 1104
            WIRE 1824 1104 1872 1104
            WIRE 1872 1104 1984 1104
        END BRANCH
        BUSTAP 1648 1104 1648 1200
        BUSTAP 1696 1104 1696 1200
        BUSTAP 1728 1104 1728 1200
        BUSTAP 1776 1104 1776 1200
        BUSTAP 1824 1104 1824 1200
        BUSTAP 1872 1104 1872 1200
        BEGIN BRANCH Q(0)
            WIRE 1648 1200 1648 1344
        END BRANCH
        BEGIN BRANCH Q(1)
            WIRE 1696 1200 1696 1360
        END BRANCH
        BEGIN BRANCH Q(2)
            WIRE 1728 1200 1728 1360
        END BRANCH
        BEGIN BRANCH Q(3)
            WIRE 1776 1200 1776 1360
        END BRANCH
        BEGIN BRANCH Q(4)
            WIRE 1824 1200 1824 1344
        END BRANCH
        BEGIN BRANCH Q(5)
            WIRE 1872 1200 1872 1360
        END BRANCH
        IOMARKER 1648 1344 Q(0) R90 28
        IOMARKER 1696 1360 Q(1) R90 28
        IOMARKER 1728 1360 Q(2) R90 28
        IOMARKER 1776 1360 Q(3) R90 28
        IOMARKER 1824 1344 Q(4) R90 28
        IOMARKER 1872 1360 Q(5) R90 28
        BEGIN BRANCH XLXN_1
            WIRE 1184 1104 1216 1104
        END BRANCH
        BEGIN INSTANCE XLXI_2 800 1136 R0
        END INSTANCE
        BEGIN BRANCH Reloj
            WIRE 768 1104 800 1104
        END BRANCH
        IOMARKER 768 1104 Reloj R180 28
    END SHEET
END SCHEMATIC
