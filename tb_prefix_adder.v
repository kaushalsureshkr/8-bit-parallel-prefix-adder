module tb_prefix;
reg [7:0] t_a,t_b;
reg t_cin;
wire [7:0] t_S;
initial begin $dumpfile("dump.vcd"); $dumpvars(0, tb_prefix); end
prefixAdd pra (.a(t_a), .b(t_b), .cin(t_cin), .S(t_S));
initial
begin
	t_a [7:0] = 8'b00000000; //0
	t_b [7:0] = 8'b00101001; //41
	t_cin = 1'b0;
	#5
	t_a [7:0] = 8'b01100100; //100
	t_b [7:0] = 8'b00011000; //24
	t_cin = 1'b0;
	#5
	t_a [7:0] = 8'b00010100; //20
	t_b [7:0] = 8'b10110010; //178
	t_cin = 1'b0;
	#5
	t_a [7:0] = 8'b00100001; //33
	t_b [7:0] = 8'b01001011; //75
	t_cin = 1'b0;
	#5
	t_a [7:0] = 8'b01100100; //100
	t_b [7:0] = 8'b00110010; //50
	t_cin = 1'b0;
	#5
	t_a [7:0] = 8'b01011010; //90
	t_b [7:0] = 8'b00101000; //40
	t_cin = 1'b0;
	#5
	t_a [7:0] = 8'b10110001; //177
	t_b [7:0] = 8'b00110110; //54
	t_cin = 1'b0;
	#5
	t_a [7:0] = 8'b01011010; //90
	t_b [7:0] = 8'b00111100; //60
	t_cin = 1'b0;
	#5
	t_a [7:0] = 8'b00011000; //24
	t_b [7:0] = 8'b00101011; //43
	t_cin = 1'b0;
	#10
	t_a [7:0] = 8'b00000000;
	t_b [7:0] = 8'b00000001;
	t_cin = 1'b0;
end
endmodule