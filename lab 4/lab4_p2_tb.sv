
`timescale 1ns / 1ps
module tb_lab4_g5_p3();

logic [31:0] A;
logic [31:0] B;
logic [3:0] op;
logic [31:0] Y;
logic hata;

lab4_p2 dut0(.A(A),.B(B),.op(op),.Y(Y),.hata(hata));
initial begin
 	#10;
 	A = 54;
 	B = 65;
 	for (int i = 0; i < 16; i++) begin
 	   op = i;
  	   #5;
 	end
end
endmodule