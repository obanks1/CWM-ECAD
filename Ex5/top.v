//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name: Olivia Banks
// Date: 6/2/2020
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////

module lights (
	input clk,
	output red,
	output amber,
	output green
);

always @(posedge clk)
	if(red == 1)
		if(amber == 0)
			amber <= 1;
		else
			red <= 0;
			amber <= 0;
			green <= 1;
	else
		if(green == 1)
			amber <= 1;
			green <= 0;
		else
			red <= 1;
			amber <= 0;

endmodule
