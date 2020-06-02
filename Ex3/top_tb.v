//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Up/Down counter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex3 - counter
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
//Todo: Parameters
parameter CLK_PERIOD = 10;

//Todo: Registers and wires
reg clk;
reg rst;
reg enable;
reg direction;
reg err;
wire [7:0] counter_out;

//Todo: Clock generation
initial
begin
    clk = 1'b0;
    forever
      #(CLK_PERIOD/2) clk=~clk;
end

//Todo: User logic
initial begin
  rst = 1;
  enable = 1;
  direction = 1;
  forever begin
    rst = 0;
    if (enable == 1)
      begin
        $display("***TEST FAILED! counter_out=%d ***", counter_out);
        err=1;
      end
  end
end
    
//Todo: Finish test, check for success
initial begin
  #30
  if (err==0)
    $display("***TEST PASSED! :) ***");
  $finish;
end

//Todo: Instantiate counter module

counter top (
  .clk (clk),
  .rst (rst),
  .enable (enable),
  .direction (direction),
  .counter_out (counter_out)

);
 
endmodule 
