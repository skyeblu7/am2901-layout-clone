
reg [16:0] i;


always begin
	#50 i = i + 1;
	
end

always @ (i) begin
	a[7] = i[15];
	b[7] = i[7];
	a[6] = i[14];
	b[6] = i[6];
	a[5] = i[13];
	b[5] = i[5];
	a[4] = i[12];
	b[4] = i[4];
	a[3] = i[11];
	b[3] = i[3];
	a[2] = i[10];
	b[2] = i[2];
	a[1] = i[9];
	b[1] = i[1];
	a[0] = i[8];
	b[0] = i[0];
	cin = i[16];
end

initial begin
	i = 0;
	#(50*1024*128) $finish;
end


