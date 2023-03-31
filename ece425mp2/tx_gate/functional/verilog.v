// Verilog HDL for gates, tx_gate _functional

module tx_gate (D, S, GN, GP);
    inout D;
    inout S;
    input GN;
    input GP;

cmos (D, S, GN, GP);
rcmos (S, D, GN, GP);

endmodule
