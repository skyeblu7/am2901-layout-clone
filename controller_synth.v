/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : R-2020.09-SP4
// Date      : Fri May 12 00:45:46 2023
/////////////////////////////////////////////////////////////


module controller ( i, a, b, select_a_hi, select_b_hi, f, c, p, g_lo, p_lo, 
        ovr, z, y_tri, y_data, oe, ram0, ram3, q0, q3, q0_data, q3_data, 
        select_q_reg, select_q_reg_n, reg_wr, select_regfile, select_regfile_n, 
        select_ALU_r, select_ALU_s, select_ALU_r_n, select_ALU_s_n, select_y, 
        select_y_n, inv_r, inv_s, sel_f0, not_sel_f0, sel_f1, not_sel_f1 );
  input [8:0] i;
  input [3:0] a;
  input [3:0] b;
  output [15:0] select_a_hi;
  output [15:0] select_b_hi;
  input [3:0] f;
  input [3:0] c;
  input [3:0] p;
  inout [3:0] y_tri;
  input [3:0] y_data;
  output [1:0] select_q_reg;
  output [1:0] select_q_reg_n;
  output [1:0] select_regfile;
  output [1:0] select_regfile_n;
  output [1:0] select_ALU_r;
  output [1:0] select_ALU_s;
  output [1:0] select_ALU_r_n;
  output [1:0] select_ALU_s_n;
  input oe, q0_data, q3_data;
  output g_lo, p_lo, ovr, z, reg_wr, select_y, select_y_n, inv_r, inv_s,
         sel_f0, not_sel_f0, sel_f1, not_sel_f1;
  inout ram0,  ram3,  q0,  q3;
  wire   n44, n147, n148, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190;
  tri   [3:0] y_tri;
  tri   ram0;
  tri   ram3;
  tri   q0;
  tri   q3;
  assign select_regfile_n[0] = i[8];
  assign sel_f1 = i[5];

  invzp_1 drvqshl ( .ip(n156), .c(select_regfile_n[1]), .op(q3) );
  invzp_1 drvraml ( .ip(n147), .c(select_regfile_n[1]), .op(ram3) );
  invzp_1 drvy0 ( .ip(n153), .c(n154), .op(y_tri[0]) );
  invzp_1 drvy1 ( .ip(n152), .c(n154), .op(y_tri[1]) );
  invzp_1 drvy2 ( .ip(n151), .c(n154), .op(y_tri[2]) );
  invzp_1 drvy3 ( .ip(n150), .c(n154), .op(y_tri[3]) );
  invzp_1 drvqshr ( .ip(n155), .c(n44), .op(q0) );
  invzp_1 drvramr ( .ip(n148), .c(n44), .op(ram0) );
  inv_1 U185 ( .ip(i[3]), .op(n187) );
  inv_1 U186 ( .ip(i[1]), .op(n158) );
  or2_1 U187 ( .ip1(b[2]), .ip2(b[3]), .op(n178) );
  or2_1 U188 ( .ip1(b[1]), .ip2(b[0]), .op(n165) );
  or2_1 U189 ( .ip1(a[2]), .ip2(a[3]), .op(n186) );
  or2_1 U190 ( .ip1(a[1]), .ip2(a[0]), .op(n168) );
  inv_1 U191 ( .ip(i[7]), .op(n190) );
  mux2_1 U192 ( .ip1(i[0]), .ip2(n158), .s(i[2]), .op(select_ALU_s_n[1]) );
  mux2_1 U193 ( .ip1(i[1]), .ip2(n160), .s(i[2]), .op(select_ALU_r[1]) );
  inv_1 U194 ( .ip(i[8]), .op(select_regfile[0]) );
  inv_1 U195 ( .ip(i[6]), .op(n157) );
  inv_1 U196 ( .ip(c[3]), .op(g_lo) );
  inv_1 U197 ( .ip(i[4]), .op(n189) );
  inv_1 U198 ( .ip(q3_data), .op(n156) );
  inv_1 U199 ( .ip(i[5]), .op(not_sel_f1) );
  nor4_1 U200 ( .ip1(f[3]), .ip2(f[0]), .ip3(f[2]), .ip4(f[1]), .op(z) );
  nor4_1 U201 ( .ip1(a[2]), .ip2(a[3]), .ip3(a[0]), .ip4(a[1]), .op(
        select_a_hi[0]) );
  nand2_1 U202 ( .ip1(i[8]), .ip2(n190), .op(n44) );
  nand2_1 U203 ( .ip1(i[7]), .ip2(select_regfile[0]), .op(n161) );
  nand3_1 U204 ( .ip1(n157), .ip2(n44), .ip3(n161), .op(select_q_reg_n[1]) );
  inv_1 U205 ( .ip(select_q_reg_n[1]), .op(select_q_reg[1]) );
  nor2_1 U206 ( .ip1(select_regfile[0]), .ip2(i[6]), .op(select_q_reg[0]) );
  inv_1 U207 ( .ip(select_q_reg[0]), .op(select_q_reg_n[0]) );
  nor2_1 U208 ( .ip1(select_regfile[0]), .ip2(n190), .op(select_regfile[1]) );
  inv_1 U209 ( .ip(select_regfile[1]), .op(select_regfile_n[1]) );
  inv_1 U210 ( .ip(select_ALU_s_n[1]), .op(select_ALU_s[1]) );
  nand2_1 U211 ( .ip1(i[2]), .ip2(n158), .op(n159) );
  nand2_1 U212 ( .ip1(i[0]), .ip2(n159), .op(select_ALU_s_n[0]) );
  inv_1 U213 ( .ip(select_ALU_s_n[0]), .op(select_ALU_s[0]) );
  nor2_1 U214 ( .ip1(i[1]), .ip2(i[0]), .op(n160) );
  inv_1 U215 ( .ip(select_ALU_r[1]), .op(select_ALU_r_n[1]) );
  nor2_1 U216 ( .ip1(i[2]), .ip2(i[1]), .op(select_ALU_r[0]) );
  inv_1 U217 ( .ip(select_ALU_r[0]), .op(select_ALU_r_n[0]) );
  nor2_1 U218 ( .ip1(i[6]), .ip2(n161), .op(select_y_n) );
  inv_1 U219 ( .ip(select_y_n), .op(select_y) );
  nand2_1 U220 ( .ip1(not_sel_f1), .ip2(n187), .op(n162) );
  nand2_1 U221 ( .ip1(i[4]), .ip2(n162), .op(not_sel_f0) );
  inv_1 U222 ( .ip(not_sel_f0), .op(sel_f0) );
  inv_1 U223 ( .ip(f[3]), .op(n147) );
  inv_1 U224 ( .ip(f[0]), .op(n148) );
  inv_1 U225 ( .ip(q0_data), .op(n155) );
  inv_1 U226 ( .ip(y_data[1]), .op(n152) );
  inv_1 U227 ( .ip(y_data[3]), .op(n150) );
  inv_1 U228 ( .ip(y_data[0]), .op(n153) );
  inv_1 U229 ( .ip(y_data[2]), .op(n151) );
  inv_1 U230 ( .ip(oe), .op(n154) );
  nand4_1 U231 ( .ip1(p[3]), .ip2(p[2]), .ip3(p[1]), .ip4(p[0]), .op(p_lo) );
  nor4_1 U232 ( .ip1(b[0]), .ip2(b[3]), .ip3(b[1]), .ip4(b[2]), .op(
        select_b_hi[0]) );
  mux2_1 U233 ( .ip1(c[3]), .ip2(g_lo), .s(c[2]), .op(ovr) );
  nand2_1 U234 ( .ip1(b[2]), .ip2(b[3]), .op(n174) );
  nor2_1 U235 ( .ip1(n165), .ip2(n174), .op(select_b_hi[12]) );
  nand2_1 U236 ( .ip1(a[2]), .ip2(a[3]), .op(n182) );
  nor2_1 U237 ( .ip1(n168), .ip2(n182), .op(select_a_hi[12]) );
  inv_2 U238 ( .ip(b[3]), .op(n163) );
  nand2_1 U239 ( .ip1(n163), .ip2(b[2]), .op(n176) );
  nor2_1 U240 ( .ip1(n165), .ip2(n176), .op(select_b_hi[4]) );
  inv_2 U241 ( .ip(b[2]), .op(n164) );
  nand2_1 U242 ( .ip1(n164), .ip2(b[3]), .op(n175) );
  nor2_1 U243 ( .ip1(n165), .ip2(n175), .op(select_b_hi[8]) );
  inv_2 U244 ( .ip(a[3]), .op(n166) );
  nand2_1 U245 ( .ip1(n166), .ip2(a[2]), .op(n184) );
  nor2_1 U246 ( .ip1(n168), .ip2(n184), .op(select_a_hi[4]) );
  inv_2 U247 ( .ip(a[2]), .op(n167) );
  nand2_1 U248 ( .ip1(n167), .ip2(a[3]), .op(n183) );
  nor2_1 U249 ( .ip1(n168), .ip2(n183), .op(select_a_hi[8]) );
  nand2_1 U250 ( .ip1(b[0]), .ip2(b[1]), .op(n169) );
  nor2_1 U251 ( .ip1(n169), .ip2(n174), .op(select_b_hi[15]) );
  nor2_1 U252 ( .ip1(n169), .ip2(n175), .op(select_b_hi[11]) );
  nor2_1 U253 ( .ip1(n169), .ip2(n176), .op(select_b_hi[7]) );
  nor2_1 U254 ( .ip1(n178), .ip2(n169), .op(select_b_hi[3]) );
  nand2_1 U255 ( .ip1(a[0]), .ip2(a[1]), .op(n170) );
  nor2_1 U256 ( .ip1(n170), .ip2(n182), .op(select_a_hi[15]) );
  nor2_1 U257 ( .ip1(n170), .ip2(n183), .op(select_a_hi[11]) );
  nor2_1 U258 ( .ip1(n170), .ip2(n184), .op(select_a_hi[7]) );
  nor2_1 U259 ( .ip1(n186), .ip2(n170), .op(select_a_hi[3]) );
  inv_2 U260 ( .ip(b[1]), .op(n171) );
  nand2_1 U261 ( .ip1(n171), .ip2(b[0]), .op(n172) );
  nor2_1 U262 ( .ip1(n174), .ip2(n172), .op(select_b_hi[13]) );
  nor2_1 U263 ( .ip1(n172), .ip2(n175), .op(select_b_hi[9]) );
  nor2_1 U264 ( .ip1(n172), .ip2(n176), .op(select_b_hi[5]) );
  nor2_1 U265 ( .ip1(n178), .ip2(n172), .op(select_b_hi[1]) );
  inv_2 U266 ( .ip(b[0]), .op(n173) );
  nand2_1 U267 ( .ip1(n173), .ip2(b[1]), .op(n177) );
  nor2_1 U268 ( .ip1(n174), .ip2(n177), .op(select_b_hi[14]) );
  nor2_1 U269 ( .ip1(n177), .ip2(n175), .op(select_b_hi[10]) );
  nor2_1 U270 ( .ip1(n177), .ip2(n176), .op(select_b_hi[6]) );
  nor2_1 U271 ( .ip1(n178), .ip2(n177), .op(select_b_hi[2]) );
  inv_2 U272 ( .ip(a[1]), .op(n179) );
  nand2_1 U273 ( .ip1(n179), .ip2(a[0]), .op(n180) );
  nor2_1 U274 ( .ip1(n182), .ip2(n180), .op(select_a_hi[13]) );
  nor2_1 U275 ( .ip1(n180), .ip2(n183), .op(select_a_hi[9]) );
  nor2_1 U276 ( .ip1(n180), .ip2(n184), .op(select_a_hi[5]) );
  nor2_1 U277 ( .ip1(n186), .ip2(n180), .op(select_a_hi[1]) );
  inv_2 U278 ( .ip(a[0]), .op(n181) );
  nand2_1 U279 ( .ip1(n181), .ip2(a[1]), .op(n185) );
  nor2_1 U280 ( .ip1(n182), .ip2(n185), .op(select_a_hi[14]) );
  nor2_1 U281 ( .ip1(n185), .ip2(n183), .op(select_a_hi[10]) );
  nor2_1 U282 ( .ip1(n185), .ip2(n184), .op(select_a_hi[6]) );
  nor2_1 U283 ( .ip1(n186), .ip2(n185), .op(select_a_hi[2]) );
  nor2_1 U284 ( .ip1(i[4]), .ip2(n187), .op(inv_r) );
  nor2_1 U285 ( .ip1(i[3]), .ip2(not_sel_f1), .op(n188) );
  not_ab_or_c_or_d U286 ( .ip1(i[3]), .ip2(not_sel_f1), .ip3(n189), .ip4(n188), 
        .op(inv_s) );
  nand2_1 U287 ( .ip1(select_regfile[0]), .ip2(n190), .op(reg_wr) );
endmodule

