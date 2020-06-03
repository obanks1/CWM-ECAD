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
	output [4:0] result
	);
	
	bmg multiplier (
		.clka(clk),    // input wire clka
		.ena(ena),      // input wire ena
		.wea(wea),      // input wire [0 : 0] wea
		.addra(addra),  // input wire [3 : 0] addra
		.dina(dina),    // input wire [15 : 0] dina
		.douta(douta)  // output wire [15 : 0] douta
		);
		
	
	
	
endmodule

