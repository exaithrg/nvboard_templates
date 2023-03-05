//***************************************************************
// Description: 
// File Name: fsm.v
// Author: Haoran Geng
// Email: 
// Created Time: Sun 05 Mar 2023 03:31:00 PM CST
// Revision history:
//***************************************************************

module top(
    input clk_i,
    input rst_n,
    input a_i,
    output flag_o,
    output btnc_flag
);

    assign btnc_flag = clk_i;

    seq_detector u_sd(
        .clk_i(clk_i),
        .rst_n(rst_n),
        .a_i(a_i),
        .flag_o(flag_o)
    );

endmodule

