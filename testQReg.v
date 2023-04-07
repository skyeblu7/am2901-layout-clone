
reg [1:0] i;
reg cp;



always begin
	#10 i = i + 1;
end

always @ (i) begin
	f = 1'b0;
	q_left = 1'b1;
	q_right = 1'b0;
	sel0 = i[0];
	sel0_n = ~i[0];
	sel1 = i[1];
	sel1_n = ~i[1];
end

always @ (*) begin
	clk = cp;
	clk_n = ~cp;
end

//i    0 1 2 3 0 1 2 3
//sel0 0 1 0 1
//clk  0101010101 

initial begin
	cp <= 1;
	i = 2'b00;
	#(10*16) $finish;
end

always begin
	#2 cp <= ~ cp;
	#3 ;
end