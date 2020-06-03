//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #7 - Times Table
// Student Name: Olivia Banks
// Date: 6/3/2020
//
// Description: A testbench module to test Ex7 - Times Table
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
    //Parameters
    parameter CLK_PERIOD = 10;
    

	// Registers and wires
	reg clk;
	reg read;
	reg [2:0] a;
	reg [2:0] b;
	reg err;
	wire [4:0] result;

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
		read = 1;
		a = 2;
		b = 2;
		forever begin
			#10
			if(result != 4)
				begin
				$display("***TEST FAILED! Did not multiply correctly. a=%d b=%d result=%d***", a,b,result);		err = 1;
		  		end
		  	a = 1;
		  	b = 0;
		  	#10
		  	if(result != 0)
				begin
				$display("***TEST FAILED! Did not multiply correctly. a=%d b=%d result=%d***", a,b,result);		err = 1;
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
	multiplier top (
		.clk (clk),
		.read (read),
		.a (a),
		.b (b)
	);
     
endmodule
