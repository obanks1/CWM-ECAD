//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - Dice or Traffic Lights?
// Student Name: Olivia Banks
// Date: 6/3/2020
//
// Description: A testbench module to test Ex6 - Dice or Traffic Lights?
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
    //Parameters
    parameter CLK_PERIOD = 10;
    

	// Registers and wires
	reg clk;
	reg rst;
	reg button;
	reg sel;
	reg err;
	wire red;
	wire amber;
	wire green;
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
		err = 0;
		rst = 1;
		button = 1;
		sel = 1;
		forever begin
			#1
			rst = 0;
			#9
			if(red != 0 && amber != 0 && green != 0)
				begin
				$display("***TEST FAILED! Traffic lights not on. red=%d amber=%d green=%d ***", red, amber, green);
				err = 1;
		  		end
		  	sel = 0;
		  	#10
		  	if(throw == 0)
				begin
				$display("***TEST FAILED! Dice didn't roll. throw=%d ***", throw);
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

	// Instantiate module
	mux top (
		.clk (clk),
		.rst (rst),
		.button (button),
		.sel (sel)
	);
     
endmodule 
