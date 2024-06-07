/* lab2_glitch.sv 
* 
* Hazirlayanlar: 
* Sule Nur Demirdas
* Aysu Akturk
* 
* Notlar: 
* ELM235 2023 Bahar Lab2 - Problem 1 
* Y = A and NOT B and C or NOT C and D denkleminin gerçeklemesi 
* Amaç: Devrede olu?an gecikmeleri ve glicthleri gozlemlemek
* 
*/ 
`timescale 1ns/1ns
module lab2_glitch(
	input logic a, b, c,d,
	output logic n1, n2 , n3, n4, n5 , y, z
);
assign #2 n1 = ~b; 
assign #2 n2 = ~c;
assign #2 n3 = n1 & c;
assign #2 n4 = n3 & a;
assign #2 n5 = n2 & d;
assign #2 y = n4 | n5; 
assign #2 z = n5 | a & n1 & d | n4; // Glicth giderilmesi için olu?turulan denklem
endmodule

