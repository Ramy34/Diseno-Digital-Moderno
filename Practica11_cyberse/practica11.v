////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.2i
//  \   \         Application : sch2verilog
//  /   /         Filename : practica11.vf
// /___/   /\     Timestamp : 05/21/2018 16:46:18
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family spartan3 -w "C:/Users/Familia/Dropbox/Escuela Ram/Ingenieria/6to semestre/Diseno Digital Moderno/Laboratorio/Practica11_cyberse/practica11.sch" practica11.vf
//Design Name: practica11
//Device: spartan3
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module practica11(Reloj, 
                  Q);

    input Reloj;
   output [5:0] Q;
   
   wire XLXN_1;
   
   contador XLXI_1 (.segundo(XLXN_1), 
                    .Q(Q[5:0]));
   Divisor XLXI_2 (.Reloj(Reloj), 
                   .Divisor(XLXN_1));
endmodule
