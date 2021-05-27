//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 - Air Conditioning
// Student Name: Yolanda Ameny
// Date: 
//
//  Description: In this exercise, you need to an air conditioning control system
//  According to the state diagram provided in the exercise.
//
//  inputs:
//           clk, temperature [4:0]
//
//  outputs:
//           heating, cooling
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module AC (

// Ports
input clk,
input reg [4:0] temperature,
output heating,
output cooling);

reg [1:0] state;

assign heating = (state == 0);
assign cooling = (state == 2);

// Registers & Wires
always @(posedge clk)

// User Logic


if (temperature  <== 18)
state = 0;

if (temperature > 20)
state = 1;

if (temperature  >== 22)
state = 2;
if (temperature < 20)
state = 1;

end

endmodule 

