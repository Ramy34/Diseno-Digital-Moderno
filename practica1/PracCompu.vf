////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.2i
//  \   \         Application : sch2verilog
//  /   /         Filename : PracCompu.vf
// /___/   /\     Timestamp : 04/15/2018 13:00:39
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family spartan3 -w "C:/Users/Familia/Dropbox/Escuela Ram/Ingenieria/6to semestre/Diseno Digital Moderno/Laboratorio/practica1/PracCompu.sch" PracCompu.vf
//Design Name: PracCompu
//Device: spartan3
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module PracCompu(A, 
                 B, 
                 SAND, 
                 SINV, 
                 SNAND, 
                 SNOR, 
                 SOR, 
                 SXNOR, 
                 SXOR);

    input A;
    input B;
   output SAND;
   output SINV;
   output SNAND;
   output SNOR;
   output SOR;
   output SXNOR;
   output SXOR;
   
   
   AND2 XLXI_5 (.I0(B), 
                .I1(A), 
                .O(SAND));
   OR2 XLXI_6 (.I0(B), 
               .I1(A), 
               .O(SOR));
   NAND2 XLXI_7 (.I0(B), 
                 .I1(A), 
                 .O(SNAND));
   NOR2 XLXI_8 (.I0(B), 
                .I1(A), 
                .O(SNOR));
   INV XLXI_9 (.I(B), 
               .O(SINV));
   XNOR2 XLXI_10 (.I0(B), 
                  .I1(A), 
                  .O(SXNOR));
   XOR2 XLXI_11 (.I0(B), 
                 .I1(A), 
                 .O(SXOR));
endmodule
