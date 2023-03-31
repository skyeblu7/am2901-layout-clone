module bitcell ( data_hi, data_lo );

inout data_hi, data_lo;

not (weak1,weak0) #1 invh( data_hi, data_lo );
not (weak1,weak0) #1 invl( data_lo, data_hi );

endmodule
