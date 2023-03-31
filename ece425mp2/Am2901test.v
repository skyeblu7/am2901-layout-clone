
initial begin

cp <= 1;
oe <= 1;
ram0reg <= 1'bz;
ram3reg <= 1'bz;
q0reg <= 1'bz;
q3reg <= 1'bz;

 // R0 = 0x2
i <= 9'b011011111;
a <= 4'h0;
b <= 4'h0;
cin_hi <= 0;
d <= 2;

#10 // 10ns

 // R1 = R0 + 0x7 = 0x9
i <= 9'b011000101;
b <= 4'h1;
d <= 7;

#10 // 20ns

 // Q = ~R1 AND R0 = 0x2
i <= 9'b000101001;
a <= 4'h1;
b <= 4'h0;

#10 // 30ns

 // R2 = ( R1 & ~0 ) * 2 = 0x2; Q = 2Q = 0x4
i <= 9'b110010000;
b <= 4'h2;
cin_hi <= 1;
q0reg <= 0;

#10 // 40ns

 // R2 = ( R1 - 0 ) = 0x9
i <= 9'b010001100;
q0reg <= 1'bz;

#10 // 50ns

 // R2 = R2 XNOR R0 = 0x4
i <= 9'b011111001;
a <= 4'h0;
cin_hi <= 0;

#10 // 60ns

 // R3 = R2 XOR Q = 0x0
i <= 9'b011110000;
a <= 4'h2;
b <= 4'h3;

#10 // 70ns

 // Q = Q + R3 = 0x8
i <= 9'b000000000;
a <= 4'h3;

#10 // 80ns

 // R4 = Q & ~0 = 0x8
i <= 9'b010101010;
a <= 4'h0;
b <= 4'h4;

#10 // 90ns

 // R4 = Q XNOR (D=0) = 0x7
i <= 9'b011111110;
d <= 4'h0;

#10 $finish;

end

always begin
#2 cp <= ~ cp;
#3 ;
end
