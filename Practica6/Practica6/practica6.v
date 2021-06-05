////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.2i
//  \   \         Application : sch2verilog
//  /   /         Filename : practica6.vf
// /___/   /\     Timestamp : 04/09/2018 16:43:05
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family spartan3 -w "C:/Users/Familia/Dropbox/Escuela Ram/Ingenieria/6to semestre/Diseno Digital Moderno/Laboratorio/Practica6/Practica6/practica6.sch" practica6.vf
//Design Name: practica6
//Device: spartan3
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module practica6(A0, 
                 A1, 
                 A2, 
                 B0, 
                 B1, 
                 B2, 
                 P0, 
                 P1, 
                 P2, 
                 P3, 
                 P4, 
                 P5);

    input A0;
    input A1;
    input A2;
    input B0;
    input B1;
    input B2;
   output P0;
   output P1;
   output P2;
   output P3;
   output P4;
   output P5;
   
   wire XLXN_13;
   wire XLXN_14;
   wire XLXN_17;
   wire XLXN_20;
   wire XLXN_21;
   wire XLXN_22;
   wire XLXN_23;
   wire XLXN_28;
   wire XLXN_29;
   wire XLXN_30;
   wire XLXN_31;
   wire XLXN_32;
   wire XLXN_33;
   wire XLXN_34;
   wire XLXN_42;
   
   AND2 XLXI_1 (.I0(B0), 
                .I1(A2), 
                .O(XLXN_21));
   AND2 XLXI_2 (.I0(B0), 
                .I1(A1), 
                .O(XLXN_13));
   AND2 XLXI_3 (.I0(B0), 
                .I1(A0), 
                .O(P0));
   AND2 XLXI_4 (.I0(A2), 
                .I1(B1), 
                .O(XLXN_22));
   AND2 XLXI_5 (.I0(A1), 
                .I1(B1), 
                .O(XLXN_17));
   AND2 XLXI_6 (.I0(A0), 
                .I1(B1), 
                .O(XLXN_14));
   ha XLXI_7 (.A(XLXN_14), 
              .B(XLXN_13), 
              .Co(XLXN_20), 
              .S(P1));
   ha XLXI_8 (.A(XLXN_22), 
              .B(XLXN_23), 
              .Co(XLXN_42), 
              .S(XLXN_33));
   fa XLXI_9 (.A(XLXN_17), 
              .B(XLXN_21), 
              .Ci(XLXN_20), 
              .Co(XLXN_23), 
              .S(XLXN_31));
   AND2 XLXI_10 (.I0(B2), 
                 .I1(A2), 
                 .O(XLXN_30));
   AND2 XLXI_11 (.I0(B2), 
                 .I1(A1), 
                 .O(XLXN_29));
   AND2 XLXI_12 (.I0(B2), 
                 .I1(A0), 
                 .O(XLXN_28));
   fa XLXI_13 (.A(XLXN_30), 
               .B(XLXN_42), 
               .Ci(XLXN_34), 
               .Co(P5), 
               .S(P4));
   fa XLXI_14 (.A(XLXN_29), 
               .B(XLXN_33), 
               .Ci(XLXN_32), 
               .Co(XLXN_34), 
               .S(P3));
   ha XLXI_15 (.A(XLXN_28), 
               .B(XLXN_31), 
               .Co(XLXN_32), 
               .S(P2));
endmodule
