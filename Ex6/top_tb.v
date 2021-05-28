//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - RGB Colour Converter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex6 - RGB Colour Converter
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
// Parameters
parameter CLK_PERIOD = 10;
reg clk;
reg err;
reg [2:0] colour;
reg enable;
wire [23:0] rgb;

// Clock generation
initial
    begin
       clk = 1'b0;
       forever
         #(CLK_PERIOD/2) clk=~clk;
     end

// Logic
initial
begin
err = 0;
colour = 0;
enable = 0;
#100; // delay
enable = 1;
end
initial begin
       colour=0;
       enable=0;
       err=0;
       #100;
       enable=1;
       forever begin
          #(2*CLK_PERIOD)
          $display("colour=%h, rgb=%h", colour,rgb);
          err=!((colour[0]==(&rgb[7:0]))&(colour[1]==(&rgb[15:8]))&(colour[2]==(&rgb[23:16])));
          if (err) begin
             $display("***TEST FAILED! RGB value does not match color colour=%h rgb=%h***",colour, rgb);
             $finish;
          end 
          colour=colour+1; 
       end
     end


 initial begin
        #800
        if (err==0)
          $display("***TEST PASSED! :) ***");
        else
          $display("Undetected ERROR?");
        $finish;
      end

     converter RGB(clk,colour,enable,rgb);
endmodule 
