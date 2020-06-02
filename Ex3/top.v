//////////////////////////////////////////////////////////////////////////////////
// Exercise #3 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design an up / down counter, where 
//  if the rst=1, the counter should be set to zero. If enable=0, the value
//  should stay constant. If direction=1, the counter should count up every
//  clock cycle, otherwise it should count down.
//  Wrap-around values are allowed.
//
//  inputs:
//           clk, rst, enable, direction
//
//  outputs:
//           counter_out[7:0]
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module counter(
    //Todo: add ports 
    input clk,
    input rst,
    input enable,
    input direction,
    output counter_out[7:0]
    );
                    
    //Todo: add registers and wires, if needed
    reg [7:0] t;

    //Todo: add user logic
    always @(posedge clk or posedge rst)
      if(rst)
        t <= 0;
      else 
	if(enable)
	  if(direction)
            t <= t + 1;
	  else
	    t <= t - 1;
      
endmodule
