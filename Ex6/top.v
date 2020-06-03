//////////////////////////////////////////////////////////////////////////////////
// Exercise #6 
// Student Name: Olivia Banks
// Date: 6/3/2020
//
//
//  Description: In this exercise, you need to design a multiplexer between a dice and traffic 
//  lights, where the output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | dice
//   1  | traffic lights
//
//  inputs:
//           rst, clk, button,sel
//
//  outputs:
//           result[2:0]
//
//////////////////////////////////////////////////////////////////////////////////

module mux(
	input rst,
	input clk,
	input button,
	input sel,
	output [2:0] result
	);
	
	wire [2:0] throw;
	wire red;
	wire amber;
	wire green;

	// Instantiate Modules
	dice dice(.clk(clk), .rst(rst), .button(button));
	trafficlights trafficlights(.clk(clk));

	assign result = sel ? {red, amber, green} : throw;

endmodule
