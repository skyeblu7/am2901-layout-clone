
reg [2:0] i;

always begin
	#50 i = i + 1;
end

always @ (i) begin
	a = i[0];
	b = i[1];
	c = i[2];
end

initial begin
	i = 3'b000;
	#(50*8) $finish;
end
