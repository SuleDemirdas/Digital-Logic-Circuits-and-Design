`timescale 1ns/1ns
module nand2kapi(
	input logic a,b, 
	output logic y
);
assign y = ~( a & b ); 
endmodule

