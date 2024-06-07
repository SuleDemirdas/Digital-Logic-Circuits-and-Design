/* lab2_decoder.sv 
* 
* Hazirlayanlar: 
* Sule Nur Demirdas
* Aysu Akturk
* 
* Notlar: 
* ELM235 2023 Bahar Lab2 - Problem 2 
* 7BLE Seven segment display de istenen de?erlerin gozlenmesi icin 
uygulanan 
*denklemlerin gerçeklenmesi
*/ 
module lab2_decoder(
	input logic X3, X2, X1, X0,
	output logic A, B,C,D,E,F, G
);

assign A = X3 | X1; 
assign B = X0 & (X3 | X1); 
assign C = X1 & (X2 | X0);
assign D = X1 | X2 ; 
assign E = X2 & ~X1 | ~X0 & X1 & ~X3; 
assign F = ~X0 & X1 | ~X3 & ~X1 & X0 | ~X0&X2; 
assign G = ~X2 | X1 | X0 & X3;
endmodule

