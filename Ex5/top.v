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
input [4:0] temperature,
output heating,
output cooling);

reg [1:0] state;

assign heating = (state == 0);
assign cooling = (state == 2);

// Registers & Wires
always @(posedge clk)

// User Logic

begin
case (state)
0: state <= #1 temperature < 20? 0: 1;
1: state <= #1 temperature <= 18? 0: temperature >= 22? 2: 1;
2: state <= #1 temperature >20? 2: 1;
default: state <= 1;
endcase
end
endmodule

