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

module trafficlights (
	input clk,
	output red,
	output amber,
	output green,
	reg [2:0] lights
	);
    
always @(posedge clk) begin
	if(lights[0] == 1)
		if(lights[1] == 0)
			lights[1] <= 1;
		else
			lights[0] <= 0;
			lights[1] <= 0;
			lights[2] <= 1;
	else
		if(lights[2] == 1)
			lights[1] <= 1;
			lights[2] <= 0;
		else
			lights[0] <= 1;
			lights[1] <= 0;
end
assign red = lights[0];
assign amber = lights[1];
assign green = lights[2];

endmodule
