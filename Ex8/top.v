//////////////////////////////////////////////////////////////////////////////////
// Exercise #8
// Student Name: Olivia Banks
// Date: 6/4/2020
//
//  Description: In this exercise, you need to implement a times table of 0..7x0..7
//  using a memory and AXI-4-lite interface.
//
//  inputs:
//           clk, rst, a[2:0], b[2:0], read
//
//  outputs:
//           result[5:0]
//////////////////////////////////////////////////////////////////////////////////

module multiplier(
	input clk,
	input read,
	input rst,
	input [2:0] a,
	input [2:0] b,
	output [5:0] result
	);

	wire [31:0] address;	
	assign address = a*b;
	
	
	blk_mem_gen_0 bmg (
		.s_aclk(clk),                // input wire s_aclk
		.s_aresetn(~rst),          // input wire s_aresetn
		.s_axi_araddr(address),    // input wire [31 : 0] s_axi_araddr
		.s_axi_arvalid(read),  // input wire s_axi_arvalid
		.s_axi_rdata(result),      // output wire [31 : 0] s_axi_rdata
		.s_axi_rready(read)    // input wire s_axi_rready
	);

endmodule
