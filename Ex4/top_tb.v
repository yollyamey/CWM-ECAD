//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Dynamic LED lights
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex4 - Dynamic LED lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
// Parameters
parameter CLK_PERIOD = 10;
reg clk;
    reg rst;
    reg button;
    reg err;
reg [2:0] colour_1;
    wire [2:0] colour;

// Clock generation
initial
    begin
       clk = 1'b0;
       forever
         #(CLK_PERIOD/2) clk=~clk;
     end

// User Logic
initial begin
       rst=1;
       button=0;
       err=0;
       colour_1 = 3'b111;
       #(CLK_PERIOD*10);
if ( !(colour == 3'b0) || (colour == 3'b1))
begin
$display("**Test failed!!**");
err = 1;
end
rst = 0;
if ( colour != 3'b001)
begin
$display("***TEST FAILED! rst=1, colour=%h", colour);
end

#(CLK_PERIOD*10);
if (colour != 0)
begin
$display("***TEST FAILED! rst=1, colour=%h", colour);
err = 1;
end
button = 1;
       forever begin
         #(CLK_PERIOD)
if (button == 1)
colour_1 = colour_1 < 3'b110 ? colour_1 + 3'b001: 3'b001;
if (colour_1 != colour)
begin
$display("***TEST FAILED! rst=0, colour_1=%h, colour=%h", colour_1, colour);
err = 1;
end
end
//colour_1 = on_off ? counter_1 + 1: counter_1 - 1;
//if (counter_1 != counter_out)
//begin
//$display("Test is Failed");
//err = 1;
//end
	 //if ((sel&(out!=ab_prev[0]))| (!sel&(out!=ab_prev[1])))
        
	//if (colour_1 == 10)
//on_off = ~on_off; 
       
     //end
end

// Instantiate counter module
LED top(
.rst (rst),
.clk (clk),
.button(button),
.colour (colour)
);

initial begin
        #50 ;
        if (err==0)
          $display("***TEST PASSED! :) ***");
        $finish;
      end
endmodule 

