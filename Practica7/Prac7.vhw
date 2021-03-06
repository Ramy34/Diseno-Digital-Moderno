--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.2i
--  \   \         Application : ISE
--  /   /         Filename : Prac7.vhw
-- /___/   /\     Timestamp : Sun Apr 22 11:54:06 2018
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: Prac7
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY Prac7 IS
END Prac7;

ARCHITECTURE testbench_arch OF Prac7 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Pract7
        PORT (
            Entradas : In std_logic_vector (3 DownTo 0);
            Salidas : Out std_logic_vector (6 DownTo 0)
        );
    END COMPONENT;

    SIGNAL Entradas : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL Salidas : std_logic_vector (6 DownTo 0) := "0000000";

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    BEGIN
        UUT : Pract7
        PORT MAP (
            Entradas => Entradas,
            Salidas => Salidas
        );

        PROCESS
            PROCEDURE CHECK_Salidas(
                next_Salidas : std_logic_vector (6 DownTo 0);
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (Salidas /= next_Salidas) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns Salidas="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, Salidas);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_Salidas);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.writeline(RESULTS, TX_LOC);
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                Entradas <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                Entradas <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                Entradas <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                Entradas <= "0100";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                Entradas <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                Entradas <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                Entradas <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                Entradas <= "1000";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                Entradas <= "1001";
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                Entradas <= "1010";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                Entradas <= "1011";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                Entradas <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                Entradas <= "1101";
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                Entradas <= "1110";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                Entradas <= "1111";
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                Entradas <= "0000";
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                Entradas <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                Entradas <= "0010";
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                Entradas <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                Entradas <= "0100";
                WAIT FOR 8000 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    STD.TEXTIO.writeline(RESULTS, TX_OUT);
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    STD.TEXTIO.writeline(RESULTS, TX_OUT);
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

