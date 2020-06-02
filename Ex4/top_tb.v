//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name: Olivia Banks
// Date: 6/2/2020
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module top_tb(
	);
	
parameter CLK_PERIOD = 10;

// Registers and wires
reg clk;
reg rst;
reg button;
reg err;
wire [2:0] throw;

// Clock generation
initial
begin
    clk = 1'b0;
    forever
      #(CLK_PERIOD/2) clk=~clk;
end

// Tests
initial begin
	rst = 1;
	button = 1;
	err = 0;
	forever begin
		#1
		rst = 0;
		#10
		if(throw == 0)
			begin
        		$display("***TEST FAILED! Dice did not roll. throw=%d ***", throw);
        		err = 1;
      		end
  		#60
  		if(throw != 1)
  			begin
  				$display("***TEST FAILED! Dice has illegal value. throw=%d ***", throw);
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

// Instantiate dice module
dice top (
	.clk (clk),
	.rst (rst),
	.button (button),
	.throw (throw)
);

endmodule
