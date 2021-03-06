// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module mac_addr_filter_v4_top (
from_eth_V_TVALID,
from_eth_V_TREADY,
from_eth_V_TDATA,
from_eth_V_TLAST,
from_eth_V_TKEEP,
to_pr_V_TVALID,
to_pr_V_TREADY,
to_pr_V_TDATA,
to_pr_V_TLAST,
to_pr_V_TKEEP,
to_shell_V_TVALID,
to_shell_V_TREADY,
to_shell_V_TDATA,
to_shell_V_TLAST,
to_shell_V_TKEEP,
aresetn,
aclk,
src_mac_addr_V,
debug_bit_V
);

parameter RESET_ACTIVE_LOW = 1;

input from_eth_V_TVALID ;
output from_eth_V_TREADY ;
input [64 - 1:0] from_eth_V_TDATA ;
input [1 - 1:0] from_eth_V_TLAST ;
input [8 - 1:0] from_eth_V_TKEEP ;


output to_pr_V_TVALID ;
input to_pr_V_TREADY ;
output [64 - 1:0] to_pr_V_TDATA ;
output [1 - 1:0] to_pr_V_TLAST ;
output [8 - 1:0] to_pr_V_TKEEP ;


output to_shell_V_TVALID ;
input to_shell_V_TREADY ;
output [64 - 1:0] to_shell_V_TDATA ;
output [1 - 1:0] to_shell_V_TLAST ;
output [8 - 1:0] to_shell_V_TKEEP ;

input aresetn ;

input aclk ;

input [48 - 1:0] src_mac_addr_V ;
input [1 - 1:0] debug_bit_V ;


wire from_eth_V_TVALID;
wire from_eth_V_TREADY;
wire [64 - 1:0] from_eth_V_TDATA;
wire [1 - 1:0] from_eth_V_TLAST;
wire [8 - 1:0] from_eth_V_TKEEP;


wire to_pr_V_TVALID;
wire to_pr_V_TREADY;
wire [64 - 1:0] to_pr_V_TDATA;
wire [1 - 1:0] to_pr_V_TLAST;
wire [8 - 1:0] to_pr_V_TKEEP;


wire to_shell_V_TVALID;
wire to_shell_V_TREADY;
wire [64 - 1:0] to_shell_V_TDATA;
wire [1 - 1:0] to_shell_V_TLAST;
wire [8 - 1:0] to_shell_V_TKEEP;

wire aresetn;


wire [73 - 1:0] sig_mac_addr_filter_v4_from_eth_V_dout;
wire sig_mac_addr_filter_v4_from_eth_V_empty_n;
wire sig_mac_addr_filter_v4_from_eth_V_read;

wire [73 - 1:0] sig_mac_addr_filter_v4_to_pr_V_din;
wire sig_mac_addr_filter_v4_to_pr_V_full_n;
wire sig_mac_addr_filter_v4_to_pr_V_write;

wire [73 - 1:0] sig_mac_addr_filter_v4_to_shell_V_din;
wire sig_mac_addr_filter_v4_to_shell_V_full_n;
wire sig_mac_addr_filter_v4_to_shell_V_write;

wire sig_mac_addr_filter_v4_ap_rst;



mac_addr_filter_v4 mac_addr_filter_v4_U(
    .from_eth_V_dout(sig_mac_addr_filter_v4_from_eth_V_dout),
    .from_eth_V_empty_n(sig_mac_addr_filter_v4_from_eth_V_empty_n),
    .from_eth_V_read(sig_mac_addr_filter_v4_from_eth_V_read),
    .to_pr_V_din(sig_mac_addr_filter_v4_to_pr_V_din),
    .to_pr_V_full_n(sig_mac_addr_filter_v4_to_pr_V_full_n),
    .to_pr_V_write(sig_mac_addr_filter_v4_to_pr_V_write),
    .to_shell_V_din(sig_mac_addr_filter_v4_to_shell_V_din),
    .to_shell_V_full_n(sig_mac_addr_filter_v4_to_shell_V_full_n),
    .to_shell_V_write(sig_mac_addr_filter_v4_to_shell_V_write),
    .ap_rst(sig_mac_addr_filter_v4_ap_rst),
    .ap_clk(aclk),
    .src_mac_addr_V(src_mac_addr_V),
    .debug_bit_V(debug_bit_V)
);

mac_addr_filter_v4_from_eth_V_if mac_addr_filter_v4_from_eth_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .from_eth_V_dout(sig_mac_addr_filter_v4_from_eth_V_dout),
    .from_eth_V_empty_n(sig_mac_addr_filter_v4_from_eth_V_empty_n),
    .from_eth_V_read(sig_mac_addr_filter_v4_from_eth_V_read),
    .TVALID(from_eth_V_TVALID),
    .TREADY(from_eth_V_TREADY),
    .TDATA(from_eth_V_TDATA),
    .TLAST(from_eth_V_TLAST),
    .TKEEP(from_eth_V_TKEEP));

mac_addr_filter_v4_to_pr_V_if mac_addr_filter_v4_to_pr_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .to_pr_V_din(sig_mac_addr_filter_v4_to_pr_V_din),
    .to_pr_V_full_n(sig_mac_addr_filter_v4_to_pr_V_full_n),
    .to_pr_V_write(sig_mac_addr_filter_v4_to_pr_V_write),
    .TVALID(to_pr_V_TVALID),
    .TREADY(to_pr_V_TREADY),
    .TDATA(to_pr_V_TDATA),
    .TLAST(to_pr_V_TLAST),
    .TKEEP(to_pr_V_TKEEP));

mac_addr_filter_v4_to_shell_V_if mac_addr_filter_v4_to_shell_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .to_shell_V_din(sig_mac_addr_filter_v4_to_shell_V_din),
    .to_shell_V_full_n(sig_mac_addr_filter_v4_to_shell_V_full_n),
    .to_shell_V_write(sig_mac_addr_filter_v4_to_shell_V_write),
    .TVALID(to_shell_V_TVALID),
    .TREADY(to_shell_V_TREADY),
    .TDATA(to_shell_V_TDATA),
    .TLAST(to_shell_V_TLAST),
    .TKEEP(to_shell_V_TKEEP));

mac_addr_filter_v4_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_mac_addr_filter_v4_ap_rst),
    .din(aresetn));

endmodule
