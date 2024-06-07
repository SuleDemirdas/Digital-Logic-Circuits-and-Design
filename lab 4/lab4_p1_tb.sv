
module lab4_p1_tb();
	logic [4:0] a;
	logic [4:0] b; 
	logic [4:0] sum;
	logic carryOut;

ripple_carry_adder_5 dut0(a,b,sum,carryOut);

initial begin
	#10;
	repeat(16) begin
	a = $random;
	b = $random;
	#10;
	end
	$stop;
end
endmodule