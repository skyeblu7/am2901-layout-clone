
reg [3:0] i;

always begin
	#50 i = i + 1;
end

always @ (i) begin
	a = i[0];
	b = i[1];
	c = i[2];
	d = i[3];
end

initial begin
	i = 4'b0000;
	#(50*16) $finish;
end
