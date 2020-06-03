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
	reg [2:0] lights = 1
	);

    
always @(posedge clk) begin
	if(lights[0] == 1) begin
		if(lights[1] == 0) begin
			lights[1] <= 1;
		end
		else begin
			lights[0] <= 0;
			lights[1] <= 0;
			lights[2] <= 1;
		end
	end
	else begin
		if(lights[2] == 1) begin
			lights[1] <= 1;
			lights[2] <= 0;
		end
		else begin
			lights[0] <= 1;
			lights[1] <= 0;
		end
	end
end

assign red = lights[0];
assign amber = lights[1];
assign green = lights[2];


endmodule
