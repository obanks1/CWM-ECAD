//////////////////////////////////////////////////////////////////////////////////
// Exercise #9 
// Student Name: Olivia Banks
// Date: 6/4/2020
//
//  Description: In this exercise, you need to design a module that lights leds
//  at different frequencies
//
//  inputs:
//           rst_n, clk_n, clk_p, button
//
//  outputs:
//           led_0, led_1, led_2
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clk_p,
    input clk_n,
    //Todo: add all other ports besides clk_n and clk_p 
	input rst_n,
	input button,
	output led_0,
	output led_1,
	output led_2
   );
    

	/* clock infrastructure, do not modify */
        wire clk_ibufds;

    IBUFDS IBUFDS_sysclk (
	.I(clk_p),
	.IB(clk_n),
	.O(clk_ibufds)
	);

     wire clk; //use this signal as a clock for your design
        
     BUFG bufg_clk (
	 .I  (clk_ibufds),
	 .O  (clk)
      );

	//Add logic here
	reg [31:0] counter = 0;
	reg [2:0] newVal = 1;
	reg [2:0] led = 0;
	
	assign led_0 = led[0];
	assign led_1 = led[1];
	assign led_2 = led[2];

	always @(posedge clk or posedge rst_n or posedge button)
		if(rst_n == 0 || button == 1) begin
			led[0] <= 0;
			led[1] <= 0;
			led[2] <= 0;
		end
		else begin
			counter <= counter + 1;
			if(counter > 20) begin
				led[0] <= newVal;
			end
			if(counter > 30) begin
				led[1] <= newVal;
			end
			if(counter > 40) begin
				led[2] <= newVal;
			end
			if(counter > 1000) begin
				counter <= 0;
				if(newVal == 0) begin
					newVal <= 1;
				end
				else begin
					newVal <= 0;
				end
			end
		end

endmodule
