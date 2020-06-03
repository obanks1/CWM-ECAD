//////////////////////////////////////////////////////////////////////////////////
// Exercise #7
// Student Name: Olivia Banks
// Date: 6/3/2020
//
//  Description: In this exercise, you need to implement a times table of 0..7x0..7
//  using a memory.
//
//  inputs:
//           clk, a[2:0], b[2:0], read
//
//  outputs:
//           result[4:0]
//////////////////////////////////////////////////////////////////////////////////

module multiplier (
	input clk,
	input [2:0] a,
	input [2:0] b,
	input read,
	output [4:0] result
	);
	
	wire [4:0] address;
	assign address = a*b;
	
	bmg bmg (
		.clka(clk),    // input wire clka
		.ena(read),      // input wire ena
		.addra(address),  // input wire [3 : 0] addra
		.douta(result)  // output wire [15 : 0] douta
		);
		
	
	
	
endmodule

