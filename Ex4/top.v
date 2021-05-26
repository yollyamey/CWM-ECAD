//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 - Dynamic LED lights
// Student Name: Yolanda Ameny
// Date: 
//
//  Description: In this exercise, you need to design a LED based lighting solution, 
//  following the diagram provided in the exercises documentation. The lights change 
//  as long as a button is pressed, and stay the same when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           colour [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module LED (
// Ports
input clk;
input rst;
input button;
output [2:0] colour;

// Registers & Wires
always @(posedge clk)

// User Logic
begin

if (rst == 1)
colour = 3'b0;
else if (button == 0)
colour = colour;

end

end module 

//
