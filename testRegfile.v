
reg [5:0] i;
reg [3:0] a, b;

always begin
	#20 i = i + 1;
end
always begin
	#20 a = a + 1;
end
always begin
	#20 b = b + 1;
end

always @ (i) begin
	data_write = i[0] & ~(i[5]);
	write_en = ~(i[5]);
	select_a_hi = 16'h0001 << a;
	select_b_hi = 16'h0001 << b;
end

initial begin
	cp <= 0;
	a <= 4'h0;
	b <= 4'h0;
	i = 6'd0;
	#(20*32*2) $finish;
end

always begin
	#4 cp <= ~ cp;
	#6 ;
end
