`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2020 02:25:08 PM
// Design Name: 
// Module Name: cm
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


module cm(clk,xr,xi,ar,ai,out_r,out_i);
input clk;
input [7:0]xr,xi;
input [31:0]ar,ai;
output  reg [31:0]out_r,out_i;
reg [31:0]y1,y2,l1,l2,yr,yi,r,c;
reg w1,w2,x1;
reg [31:0]r_off,i_off;
initial
begin
yr=0;yi=0;y1=0;y2=0;
end
integer i=0;
always @(posedge clk)
begin
    r_off=(ar-ai);
    w1=r_off[31];
    r_off=r_off>>7;
    r_off[31:25]={7{w1}};
    i_off=(ar+ai);
    w2=i_off[31];
    i_off=i_off>>7;
    i_off[31:25]={7{w2}};
    x1=xr[i]^xi[i];
    l1=x1?(ar+ai):(ar-ai);
    l2=x1?(ar-ai):(ar+ai);
    if(i<32'd7)
    begin
        yr=xr[i]?(y1+l1):(y1-l1);
        w1=yr[31];
        y1=(yr>>1);
        y1[31]=w1;
        yi=xi[i]?(y2+l2):(y2-l2);
        w2=yi[31];
        y2=(yi>>1);
        y2[31]=w2;            
    end
    else if(i==32'd7)
    begin
    yr=xr[i]?(y1-l1):(y1+l1);
    yi=xi[i]?(y2-l2):(y2+l2);
    r=(yr-r_off);
    w1=r[31];
    out_r=r>>1;
    out_r[31]=w1;
    c=(yi-i_off);
    w2=c[31];
    out_i=c>>1;
    out_i[31]=w2;
    end
    i=i+1;
end
endmodule
