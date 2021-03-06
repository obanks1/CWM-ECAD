//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name: Olivia Banks
// Date: 6/2/2020
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module top_tb(
	);

parameter CLK_PERIOD = 10;

// Registers and wires
reg clk;
reg err;
wire red;
wire amber;
wire green;

// Clock generation
initial
begin
    clk = 1'b0;
    forever
      #(CLK_PERIOD/2) clk=~clk;
end

// Tests
initial begin
	err = 0;
	forever begin
		#10
		if(red != 1 || amber != 1 || green != 0)
			begin
        		$display("***TEST FAILED! Lights transitioned incorrectly. red=%d amber=%d green=%d ***", red, amber, green);
        		err = 1;
      		end
		#10
		if(red != 0 || amber != 0 || green != 1)
			begin
        		$display("***TEST FAILED! Lights transitioned incorrectly. red=%d amber=%d green=%d ***", red, amber, green);
        		err = 1;
      		end
		#10
		if(red != 0 || amber != 1 || green != 0)
			begin
        		$display("***TEST FAILED! Lights transitioned incorrectly. red=%d amber=%d green=%d ***", red, amber, green);
        		err = 1;
      		end
		#10
		if(red != 1 || amber != 0 || green != 0)
			begin
        		$display("***TEST FAILED! Lights transitioned incorrectly. red=%d amber=%d green=%d ***", red, amber, green);
        		err = 1;
      		end
	end
end

// Finish tests
initial begin
  #80
  if (err==0)
    $display("***TEST PASSED! :) ***");
  $finish;
end

// Instantiate traffic-lights module
trafficlights top (
	.clk (clk),
	.red (red),
	.amber (amber),
	.green (green)
);

endmodule
