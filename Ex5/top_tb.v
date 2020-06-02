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
reg red;
reg amber;
reg green;

// Clock generation
initial
begin
    clk = 1'b0;
    forever
      #(CLK_PERIOD/2) clk=~clk;
end

// Tests
initial begin

	forever begin
	
	end
end

// Finish tests
initial begin
  #80
  if (err==0)
    $display("***TEST PASSED! :) ***");
  $finish;
end

// Instantiate lights module
lights top (
	.clk (clk),
	.red (red),
	.amber (amber),
	.green (green)
);

endmodule
