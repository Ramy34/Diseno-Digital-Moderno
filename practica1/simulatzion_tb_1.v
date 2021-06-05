////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2003 Xilinx, Inc.
// All Right Reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.2i
//  \   \         Application : ISE
//  /   /         Filename : simulatzion.tfw
// /___/   /\     Timestamp : Mon Feb 19 16:23:22 2018
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: simulatzion_tb_1
//Device: Xilinx
//
`timescale 1ns/1ps

module simulatzion_tb_1;
    reg A = 1'b0;
    reg B = 1'b0;
    wire SAND;
    wire SINV;
    wire SNAND;
    wire SNOR;
    wire SOR;
    wire SXNOR;
    wire SXOR;


    PracCompu UUT (
        .A(A),
        .B(B),
        .SAND(SAND),
        .SINV(SINV),
        .SNAND(SNAND),
        .SNOR(SNOR),
        .SOR(SOR),
        .SXNOR(SXNOR),
        .SXOR(SXOR));

    integer TX_FILE = 0;
    integer TX_ERROR = 0;
    
    initial begin  // Open the results file...
        TX_FILE = $fopen("results.txt");
        #10000 // Final time:  10000 ns
        if (TX_ERROR == 0) begin
            $display("No errors or warnings.");
            $fdisplay(TX_FILE, "No errors or warnings.");
        end else begin
            $display("%d errors found in simulation.", TX_ERROR);
            $fdisplay(TX_FILE, "%d errors found in simulation.", TX_ERROR);
        end
        $fclose(TX_FILE);
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        B = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  200ns
        #100;
        A = 1'b1;
        B = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  300ns
        #100;
        B = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  400ns
        #100;
        A = 1'b0;
        B = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  500ns
        #100;
        B = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  600ns
        #100;
        A = 1'b1;
        B = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  700ns
        #100;
        B = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  800ns
        #100;
        A = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1000ns
        #200;
        A = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1200ns
        #200;
        A = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1400ns
        #200;
        A = 1'b1;
    end

    task CHECK_SAND;
        input NEXT_SAND;

        #0 begin
            if (NEXT_SAND !== SAND) begin
                $display("Error at time=%dns SAND=%b, expected=%b", $time, SAND, NEXT_SAND);
                $fdisplay(TX_FILE, "Error at time=%dns SAND=%b, expected=%b", $time, SAND, NEXT_SAND);
                $fflush(TX_FILE);
                TX_ERROR = TX_ERROR + 1;
            end
        end
    endtask
    task CHECK_SINV;
        input NEXT_SINV;

        #0 begin
            if (NEXT_SINV !== SINV) begin
                $display("Error at time=%dns SINV=%b, expected=%b", $time, SINV, NEXT_SINV);
                $fdisplay(TX_FILE, "Error at time=%dns SINV=%b, expected=%b", $time, SINV, NEXT_SINV);
                $fflush(TX_FILE);
                TX_ERROR = TX_ERROR + 1;
            end
        end
    endtask
    task CHECK_SNAND;
        input NEXT_SNAND;

        #0 begin
            if (NEXT_SNAND !== SNAND) begin
                $display("Error at time=%dns SNAND=%b, expected=%b", $time, SNAND, NEXT_SNAND);
                $fdisplay(TX_FILE, "Error at time=%dns SNAND=%b, expected=%b", $time, SNAND, NEXT_SNAND);
                $fflush(TX_FILE);
                TX_ERROR = TX_ERROR + 1;
            end
        end
    endtask
    task CHECK_SNOR;
        input NEXT_SNOR;

        #0 begin
            if (NEXT_SNOR !== SNOR) begin
                $display("Error at time=%dns SNOR=%b, expected=%b", $time, SNOR, NEXT_SNOR);
                $fdisplay(TX_FILE, "Error at time=%dns SNOR=%b, expected=%b", $time, SNOR, NEXT_SNOR);
                $fflush(TX_FILE);
                TX_ERROR = TX_ERROR + 1;
            end
        end
    endtask
    task CHECK_SOR;
        input NEXT_SOR;

        #0 begin
            if (NEXT_SOR !== SOR) begin
                $display("Error at time=%dns SOR=%b, expected=%b", $time, SOR, NEXT_SOR);
                $fdisplay(TX_FILE, "Error at time=%dns SOR=%b, expected=%b", $time, SOR, NEXT_SOR);
                $fflush(TX_FILE);
                TX_ERROR = TX_ERROR + 1;
            end
        end
    endtask
    task CHECK_SXNOR;
        input NEXT_SXNOR;

        #0 begin
            if (NEXT_SXNOR !== SXNOR) begin
                $display("Error at time=%dns SXNOR=%b, expected=%b", $time, SXNOR, NEXT_SXNOR);
                $fdisplay(TX_FILE, "Error at time=%dns SXNOR=%b, expected=%b", $time, SXNOR, NEXT_SXNOR);
                $fflush(TX_FILE);
                TX_ERROR = TX_ERROR + 1;
            end
        end
    endtask
    task CHECK_SXOR;
        input NEXT_SXOR;

        #0 begin
            if (NEXT_SXOR !== SXOR) begin
                $display("Error at time=%dns SXOR=%b, expected=%b", $time, SXOR, NEXT_SXOR);
                $fdisplay(TX_FILE, "Error at time=%dns SXOR=%b, expected=%b", $time, SXOR, NEXT_SXOR);
                $fflush(TX_FILE);
                TX_ERROR = TX_ERROR + 1;
            end
        end
    endtask

endmodule

