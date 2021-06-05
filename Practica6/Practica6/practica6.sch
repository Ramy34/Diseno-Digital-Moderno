VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A0
        SIGNAL A1
        SIGNAL A2
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL B0
        SIGNAL XLXN_8
        SIGNAL XLXN_10
        SIGNAL B1
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL B2
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL P0
        SIGNAL P1
        SIGNAL XLXN_37
        SIGNAL P2
        SIGNAL P3
        SIGNAL P4
        SIGNAL P5
        SIGNAL XLXN_42
        PORT Input A0
        PORT Input A1
        PORT Input A2
        PORT Input B0
        PORT Input B1
        PORT Input B2
        PORT Output P0
        PORT Output P1
        PORT Output P2
        PORT Output P3
        PORT Output P4
        PORT Output P5
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
        BEGIN BLOCKDEF ha
            TIMESTAMP 2018 4 9 20 49 31
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF fa
            TIMESTAMP 2018 4 9 20 52 53
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 B0
            PIN I1 A2
            PIN O XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B0
            PIN I1 A1
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 B0
            PIN I1 A0
            PIN O P0
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 A2
            PIN I1 B1
            PIN O XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 A1
            PIN I1 B1
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 A0
            PIN I1 B1
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_7 ha
            PIN A XLXN_14
            PIN B XLXN_13
            PIN S P1
            PIN Co XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_8 ha
            PIN A XLXN_22
            PIN B XLXN_23
            PIN S XLXN_33
            PIN Co XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_9 fa
            PIN A XLXN_17
            PIN B XLXN_21
            PIN Ci XLXN_20
            PIN S XLXN_31
            PIN Co XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_10 and2
            PIN I0 B2
            PIN I1 A2
            PIN O XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_11 and2
            PIN I0 B2
            PIN I1 A1
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_12 and2
            PIN I0 B2
            PIN I1 A0
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_13 fa
            PIN A XLXN_30
            PIN B XLXN_42
            PIN Ci XLXN_34
            PIN S P4
            PIN Co P5
        END BLOCK
        BEGIN BLOCK XLXI_14 fa
            PIN A XLXN_29
            PIN B XLXN_33
            PIN Ci XLXN_32
            PIN S P3
            PIN Co XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_15 ha
            PIN A XLXN_28
            PIN B XLXN_31
            PIN S P2
            PIN Co XLXN_32
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A1
            WIRE 608 240 608 1568
            WIRE 608 1568 784 1568
            WIRE 784 1568 784 1616
            WIRE 608 240 800 240
            WIRE 800 240 800 272
            WIRE 800 272 880 272
            WIRE 880 272 880 320
            WIRE 736 272 736 704
            WIRE 736 272 800 272
            WIRE 880 256 880 272
        END BRANCH
        BEGIN BRANCH A2
            WIRE 208 272 208 1488
            WIRE 208 1488 352 1488
            WIRE 352 1488 352 1568
            WIRE 208 272 416 272
            WIRE 416 272 560 272
            WIRE 560 272 560 320
            WIRE 416 272 416 704
            WIRE 560 224 560 272
        END BRANCH
        INSTANCE XLXI_1 432 320 R90
        IOMARKER 560 224 A2 R270 28
        INSTANCE XLXI_2 752 320 R90
        IOMARKER 880 256 A1 R270 28
        BEGIN BRANCH B0
            WIRE 496 304 816 304
            WIRE 816 304 816 320
            WIRE 816 304 1280 304
            WIRE 1280 304 1408 304
            WIRE 1280 304 1280 320
            WIRE 496 304 496 320
        END BRANCH
        IOMARKER 1408 304 B0 R0 28
        INSTANCE XLXI_6 1088 672 R90
        INSTANCE XLXI_4 352 704 R90
        INSTANCE XLXI_5 672 704 R90
        IOMARKER 1232 240 A0 R270 28
        BEGIN BRANCH A0
            WIRE 1088 272 1088 608
            WIRE 1088 608 1152 608
            WIRE 1152 608 1152 672
            WIRE 1088 272 1152 272
            WIRE 1152 272 1232 272
            WIRE 1232 272 1344 272
            WIRE 1344 272 1344 320
            WIRE 1152 256 1152 272
            WIRE 1152 256 1392 256
            WIRE 1392 256 1392 1488
            WIRE 1152 1488 1392 1488
            WIRE 1152 1488 1152 1600
            WIRE 1232 240 1232 272
        END BRANCH
        BEGIN BRANCH B1
            WIRE 480 624 800 624
            WIRE 800 624 1216 624
            WIRE 1216 624 1440 624
            WIRE 1216 624 1216 672
            WIRE 800 624 800 704
            WIRE 480 624 480 704
        END BRANCH
        IOMARKER 1440 624 B1 R0 28
        BEGIN INSTANCE XLXI_7 1056 1024 R90
        END INSTANCE
        BEGIN BRANCH XLXN_13
            WIRE 848 576 848 800
            WIRE 848 800 1088 800
            WIRE 1088 800 1088 1024
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1152 976 1152 1024
            WIRE 1152 976 1184 976
            WIRE 1184 928 1184 976
        END BRANCH
        BEGIN INSTANCE XLXI_8 256 1056 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_9 624 1056 R90
        END INSTANCE
        BEGIN BRANCH XLXN_17
            WIRE 768 960 768 1008
            WIRE 768 1008 784 1008
            WIRE 784 1008 784 1056
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 560 992 656 992
            WIRE 656 992 656 1056
            WIRE 560 992 560 1504
            WIRE 560 1504 1088 1504
            WIRE 1088 1408 1088 1504
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 528 576 528 976
            WIRE 528 976 720 976
            WIRE 720 976 720 1056
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 352 1008 352 1056
            WIRE 352 1008 448 1008
            WIRE 448 960 448 1008
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 192 992 288 992
            WIRE 288 992 288 1056
            WIRE 192 992 192 1504
            WIRE 192 1504 656 1504
            WIRE 656 1440 656 1504
        END BRANCH
        INSTANCE XLXI_12 1024 1600 R90
        INSTANCE XLXI_11 656 1616 R90
        INSTANCE XLXI_10 224 1568 R90
        BEGIN BRANCH B2
            WIRE 288 1568 288 1584
            WIRE 288 1584 720 1584
            WIRE 720 1584 1088 1584
            WIRE 1088 1584 1088 1600
            WIRE 1088 1584 1328 1584
            WIRE 720 1584 720 1616
        END BRANCH
        IOMARKER 1328 1584 B2 R0 28
        BEGIN INSTANCE XLXI_15 1056 2000 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_14 640 2000 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_13 208 1984 R90
        END INSTANCE
        BEGIN BRANCH XLXN_28
            WIRE 1120 1856 1120 1920
            WIRE 1120 1920 1152 1920
            WIRE 1152 1920 1152 2000
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 752 1872 752 1936
            WIRE 752 1936 800 1936
            WIRE 800 1936 800 2000
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 320 1824 320 1904
            WIRE 320 1904 368 1904
            WIRE 368 1904 368 1984
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 688 1488 784 1488
            WIRE 688 1488 688 1888
            WIRE 688 1888 1088 1888
            WIRE 1088 1888 1088 2000
            WIRE 784 1440 784 1488
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 560 1920 672 1920
            WIRE 672 1920 672 2000
            WIRE 560 1920 560 2464
            WIRE 560 2464 1088 2464
            WIRE 1088 2384 1088 2464
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 352 1440 352 1456
            WIRE 352 1456 464 1456
            WIRE 464 1456 464 1968
            WIRE 464 1968 736 1968
            WIRE 736 1968 736 2000
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 144 1920 144 2448
            WIRE 144 2448 672 2448
            WIRE 144 1920 240 1920
            WIRE 240 1920 240 1984
            WIRE 672 2384 672 2448
        END BRANCH
        BEGIN BRANCH P0
            WIRE 1296 2512 1312 2512
            WIRE 1312 576 1312 2512
        END BRANCH
        BEGIN BRANCH P1
            WIRE 1152 1408 1152 1424
            WIRE 1152 1424 1248 1424
            WIRE 1248 1424 1248 2512
        END BRANCH
        IOMARKER 1296 2512 P0 R90 28
        IOMARKER 1248 2512 P1 R90 28
        BEGIN BRANCH P2
            WIRE 1152 2384 1152 2400
            WIRE 1152 2400 1152 2496
        END BRANCH
        BEGIN BRANCH P3
            WIRE 800 2384 800 2400
            WIRE 800 2400 800 2480
        END BRANCH
        BEGIN BRANCH P4
            WIRE 368 2368 368 2384
            WIRE 368 2384 368 2496
        END BRANCH
        BEGIN BRANCH P5
            WIRE 240 2368 240 2384
            WIRE 240 2384 240 2496
        END BRANCH
        IOMARKER 240 2496 P5 R90 28
        IOMARKER 368 2496 P4 R90 28
        IOMARKER 800 2480 P3 R90 28
        IOMARKER 1152 2496 P2 R90 28
        BEGIN BRANCH XLXN_42
            WIRE 256 1472 288 1472
            WIRE 256 1472 256 1888
            WIRE 256 1888 304 1888
            WIRE 304 1888 304 1984
            WIRE 288 1440 288 1472
        END BRANCH
        INSTANCE XLXI_3 1216 320 R90
    END SHEET
END SCHEMATIC
