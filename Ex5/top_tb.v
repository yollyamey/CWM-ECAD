//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Air Conditioning
// Student Name: Yolanda Ameny
// Date: 
//
// Description: A testbench module to test Ex5 - Air Conditioning
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    
// Parameters
parameter CLK_PERIOD = 10;
reg clk;
       reg err;
reg [4:0] temperature;
    wire heating;
wire cooling;

// Clock generation
initial
    begin
       clk = 1'b0;
       forever
         #(CLK_PERIOD/2) clk=~clk;
     end

// User Logic
initial begin
       //state = 0;
       //heating = 1;
       err=0;
       temperature = 15;
       #(CLK_PERIOD*10);
//if ( !(colour == 3'b0) || (colour == 3'b1))
//begin
//if (button == 1)
//temp_1 = temp_1  ? temp_1 + heating: temp_1 - cooling;
end

// Instantiate counter module
AC top (clk, temperature, heating, cooling);


//initial begin
  //      #50 ;
    //    if (err==0)
      //    $display("***TEST PASSED! :) ***");
        //$finish;
 //end
endmodule 
