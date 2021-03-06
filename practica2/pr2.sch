VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL X2
        SIGNAL a
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL c
        SIGNAL XLXN_39
        SIGNAL d
        SIGNAL XLXN_47
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        SIGNAL x1
        SIGNAL XLXN_53
        SIGNAL b
        SIGNAL XLXN_61
        SIGNAL XLXN_64
        PORT Output X2
        PORT Input a
        PORT Input c
        PORT Input d
        PORT Output x1
        PORT Input b
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
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
        BEGIN BLOCK XLXI_2 and2
            PIN I0 c
            PIN I1 XLXN_64
            PIN O X2
        END BLOCK
        BEGIN BLOCK XLXI_13 and2
            PIN I0 XLXN_61
            PIN I1 a
            PIN O XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_14 and2
            PIN I0 XLXN_34
            PIN I1 XLXN_33
            PIN O XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_15 inv
            PIN I a
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_17 inv
            PIN I b
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_18 or2
            PIN I0 c
            PIN I1 b
            PIN O XLXN_39
        END BLOCK
        BEGIN BLOCK XLXI_19 and2
            PIN I0 d
            PIN I1 XLXN_39
            PIN O XLXN_48
        END BLOCK
        BEGIN BLOCK XLXI_20 and2
            PIN I0 XLXN_48
            PIN I1 XLXN_47
            PIN O XLXN_50
        END BLOCK
        BEGIN BLOCK XLXI_21 or2
            PIN I0 XLXN_50
            PIN I1 XLXN_49
            PIN O XLXN_53
        END BLOCK
        BEGIN BLOCK XLXI_22 and2
            PIN I0 XLXN_53
            PIN I1 c
            PIN O x1
        END BLOCK
        BEGIN BLOCK XLXI_24 inv
            PIN I b
            PIN O XLXN_61
        END BLOCK
        BEGIN BLOCK XLXI_26 inv
            PIN I b
            PIN O XLXN_64
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 800 1216 R0
        IOMARKER 208 528 c R180 28
        IOMARKER 208 608 d R180 28
        BEGIN BRANCH X2
            WIRE 1056 1120 1088 1120
        END BRANCH
        IOMARKER 1088 1120 X2 R0 28
        BEGIN BRANCH a
            WIRE 208 352 352 352
            WIRE 352 352 896 352
            WIRE 352 352 352 512
            WIRE 352 512 400 512
        END BRANCH
        IOMARKER 208 352 a R180 28
        BEGIN BRANCH XLXN_34
            WIRE 624 608 880 608
            WIRE 880 576 896 576
            WIRE 880 576 880 608
        END BRANCH
        BEGIN BRANCH d
            WIRE 208 608 224 608
            WIRE 224 608 224 736
            WIRE 224 736 928 736
        END BRANCH
        INSTANCE XLXI_13 896 480 R0
        INSTANCE XLXI_14 896 640 R0
        BEGIN BRANCH XLXN_33
            WIRE 624 512 896 512
        END BRANCH
        INSTANCE XLXI_15 400 544 R0
        INSTANCE XLXI_17 400 640 R0
        INSTANCE XLXI_19 928 800 R0
        BEGIN BRANCH XLXN_39
            WIRE 832 720 912 720
            WIRE 912 672 928 672
            WIRE 912 672 912 720
        END BRANCH
        INSTANCE XLXI_18 576 816 R0
        INSTANCE XLXI_20 1248 656 R0
        BEGIN BRANCH XLXN_47
            WIRE 1152 384 1200 384
            WIRE 1200 384 1200 528
            WIRE 1200 528 1248 528
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 1184 704 1216 704
            WIRE 1216 592 1216 704
            WIRE 1216 592 1248 592
        END BRANCH
        INSTANCE XLXI_21 1584 624 R0
        BEGIN BRANCH XLXN_49
            WIRE 1152 544 1216 544
            WIRE 1216 496 1216 544
            WIRE 1216 496 1584 496
        END BRANCH
        BEGIN BRANCH XLXN_50
            WIRE 1504 560 1584 560
        END BRANCH
        IOMARKER 1840 240 x1 R0 28
        BEGIN BRANCH x1
            WIRE 1760 240 1840 240
        END BRANCH
        BEGIN BRANCH XLXN_53
            WIRE 1440 272 1440 352
            WIRE 1440 352 1904 352
            WIRE 1904 352 1904 528
            WIRE 1440 272 1504 272
            WIRE 1840 528 1904 528
        END BRANCH
        BEGIN BRANCH c
            WIRE 208 528 320 528
            WIRE 320 528 384 528
            WIRE 384 528 384 752
            WIRE 384 752 576 752
            WIRE 320 528 320 1152
            WIRE 320 1152 800 1152
            WIRE 384 208 384 528
            WIRE 384 208 1504 208
        END BRANCH
        INSTANCE XLXI_22 1504 336 R0
        INSTANCE XLXI_24 464 448 R0
        IOMARKER 176 432 b R180 28
        BEGIN BRANCH b
            WIRE 176 432 288 432
            WIRE 288 432 288 608
            WIRE 288 608 400 608
            WIRE 288 608 288 1088
            WIRE 288 1088 496 1088
            WIRE 288 432 304 432
            WIRE 304 432 320 432
            WIRE 304 432 304 688
            WIRE 304 688 576 688
            WIRE 320 416 464 416
            WIRE 320 416 320 432
        END BRANCH
        BEGIN BRANCH XLXN_61
            WIRE 688 416 896 416
        END BRANCH
        INSTANCE XLXI_26 496 1120 R0
        BEGIN BRANCH XLXN_64
            WIRE 720 1088 800 1088
        END BRANCH
    END SHEET
END SCHEMATIC
