////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.2i
//  \   \         Application : sch2verilog
//  /   /         Filename : Practica10.vf
// /___/   /\     Timestamp : 05/21/2018 16:37:47
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family spartan3 -w "C:/Users/Familia/Dropbox/Escuela Ram/Ingenieria/6to semestre/Diseno Digital Moderno/Laboratorio/Practica10_cyberse/Practica10.sch" Practica10.vf
//Design Name: Practica10
//Device: spartan3
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Practica10(CLK, 
                  Salidas);

    input CLK;
   output [6:0] Salidas;
   
   wire A;
   wire [3:0] Entradas;
   wire XLXN_41;
   wire XLXN_42;
   wire XLXN_46;
   
   Pract7 XLXI_4 (.Entradas(Entradas[3:0]), 
                  .Salidas(Salidas[6:0]));
   GND XLXI_11 (.G(Entradas[3]));
   FD XLXI_12 (.C(XLXN_42), 
               .D(Entradas[2]), 
               .Q(XLXN_46));
   defparam XLXI_12.INIT = 1'b0;
   FD XLXI_13 (.C(XLXN_41), 
               .D(Entradas[1]), 
               .Q(XLXN_42));
   defparam XLXI_13.INIT = 1'b0;
   FD XLXI_14 (.C(A), 
               .D(Entradas[0]), 
               .Q(XLXN_41));
   defparam XLXI_14.INIT = 1'b0;
   INV XLXI_19 (.I(XLXN_41), 
                .O(Entradas[0]));
   INV XLXI_20 (.I(XLXN_42), 
                .O(Entradas[1]));
   INV XLXI_21 (.I(XLXN_46), 
                .O(Entradas[2]));
   Divisor XLXI_25 (.Reloj(CLK), 
                    .Divisor(A));
endmodule
