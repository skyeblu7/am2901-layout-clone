
reg [2:0] i;

always begin
	#50 i = i + 1;
end

always @ (i) a = i[0];

initial begin
	i = 3'b000;
	#(50*2) $finish;
end
