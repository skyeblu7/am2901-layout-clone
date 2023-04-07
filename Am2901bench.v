
`timescale 1ns / 1ns

`include "../Am2901.v"
`include "../controller.v"
//module Am2901(cp,i,cin,cout,g_lo,p_lo,ovr,z,f3,d,y,a,b,ram0,ram3,q0,q3,oe);

module test;

reg cp;
reg [8:0] i;
reg cin_hi, q0reg, q3reg, ram0reg, ram3reg;
wire cout_hi, g_lo, p_lo, ovr, z, f3;
reg [3:0] d, a, b;
wire [3:0] y;
wire ram0, ram3, q0, q3;
reg oe;

Am2901 top2901(cp,i,cin_hi,cout_hi,g_lo,p_lo,ovr,z,f3,d,y,a,b,ram0,ram3,q0,q3,oe);

assign q0 = q0reg;
assign q3 = q3reg;

`include "testfixture.verilog"

endmodule
