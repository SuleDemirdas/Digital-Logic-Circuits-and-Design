/* lab2_tb_decoder.sv 
* 
* Hazirlayanlar: 
* Sule Nur Demirdas
* Aysu Akturk
* 
* Notlar: 
* ELM235 2023 Bahar Lab2 - Problem 2 Testbench 
* Bütün olas? giri?lere göre ç?k?? gözlemlenir. 
* A = X3 | X1,
* B = X0 & (X3 | X1),
* C = X1 & (X2 | X0),
* D = X1 | X2 ,
* E = X2 & ~X1 | ~X0 & X1 & ~X3,
* F = ~X0 & X1 | ~X3 & ~X1 & X0 | ~X0&X2,
* G = ~X2 | X1 | X0 & X3
* denklemlerinin gerçeklenmesi
*/ 
module lab2_tb_decoder();
logic X3, X2, X1, X0; // Test tezgahi giri? de?i?kenleri tanimlari
logic A, B, C, D, E, F, G; // Test tezgahi cikis de?iskenleri tanimlari

lab2_decoder dut0(X3, X2, X1, X0, A, B, C, D, E, F, G );

initial begin
	X3 = 0; X2 = 0; X1 = 0; X0 = 0; #10
	X3 = 0; X2 = 0; X1 = 1; X0 = 0; #10
	X3 = 0; X2 = 0; X1 = 1; X0 = 1; #10
	X3 = 0; X2 = 1; X1 = 0; X0 = 1; #10
	X3 = 1; X2 = 1; X1 = 0; X0 = 0; #10
	X3 = 1; X2 = 1; X1 = 0; X0 = 1; #10	
	X3 = 1; X2 = 1; X1 = 1; X0 = 0; #10
$stop;
end
endmodule
