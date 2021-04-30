`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2020 02:30:06 PM
// Design Name: 
// Module Name: vio_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vio_file(
    input clk
    );
    wire [7:0]xr,xi;
    wire [31:0]ar,ai,out_r,out_i;
    cm c1(clk,xr,xi,ar,ai,out_r,out_i);
    vio_0 cm (
      .clk(clk),                // input wire clk
      .probe_in0(out_r),    // input wire [31 : 0] probe_in0
      .probe_in1(out_i),    // input wire [31 : 0] probe_in1
      .probe_out0(xr),  // output wire [7 : 0] probe_out0
      .probe_out1(xi),  // output wire [7 : 0] probe_out1
      .probe_out2(ar),  // output wire [31 : 0] probe_out2
      .probe_out3(ai)  // output wire [31 : 0] probe_out3
    );
endmodule
