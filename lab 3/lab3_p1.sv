
/* lab2_p1.sv 
* 
* Hazirlayanlar: 
* Sule Nur Demirdas
* 
* Notlar: 
* ELM235 2023 Bahar Lab2 - Problem 1 
* 2x1 MUX denkleminin gerçeklemesi 
* 
*/ 
`timescale 1ns/1ns
module lab3_p1(
	input logic I1, I2, s,
	output logic y
);

logic n2,n3,n4;
nand2kapi inst0(s,s,n2); 
nand2kapi inst1(s,I2,n3); 
nand2kapi inst2(n2,I1,n4);
nand2kapi inst3(n4,n3,y);
endmodule
