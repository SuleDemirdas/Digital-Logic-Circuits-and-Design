/* lab_tb_glitch.sv 
* 
* Hazirlayanlar: 
* Sule Nur Demirdas
* Aysu Akturk
* 
* Notlar: 
* ELM235 2023 Bahar Lab2 - Problem 1 Testbench 
* Y = A and NOT B and C or NOT C and D denkleminin simulasyonu
* Bütün olas? giri?lere göre ç?k?? gözlemlenir. 
* 
*/ 
`timescale 1ns/1ns
module lab2_tb_glitch();
logic a, b, c, d; // Test tezgahi giri? de?i?kenleri tanimlari
logic n1, n2, n3, n4, n5, y; // Test tezgahi cikis de?iskenleri tanimlari

lab2_glitch dut0(a, b, c, d, n1, n2, n3, n4, n5, y, z );

initial begin
// Truth table daki tum durumlar tanimlanir
	a = 0; b = 0; c = 0; d = 0; #10 // Degiskenlere degerler atandiktan sonra 10 us bekle
	a = 0; b = 0; c = 0; d = 1; #10
	a = 0; b = 0; c = 1; d = 0; #10
	a = 0; b = 0; c = 1; d = 1; #10
	a = 0; b = 1; c = 0; d = 0; #10
	a = 0; b = 1; c = 0; d = 1; #10
	a = 0; b = 1; c = 1; d = 0; #10
	a = 0; b = 1; c = 1; d = 1; #10
	a = 1; b = 0; c = 0; d = 0; #10
	a = 1; b = 0; c = 0; d = 1; #10
	a = 1; b = 0; c = 1; d = 0; #10
	a = 1; b = 0; c = 1; d = 1; #10
	a = 1; b = 1; c = 0; d = 0; #10
	a = 1; b = 1; c = 0; d = 1; #10
	a = 1; b = 1; c = 1; d = 0; #10
	a = 1; b = 1; c = 1; d = 1; #10
$stop;
end
endmodule

