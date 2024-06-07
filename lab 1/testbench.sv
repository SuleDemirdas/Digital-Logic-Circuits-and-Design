
/* testbench.sv 
* 
* Hazirlayanlar: 
* Sule Nur Demirdas
* Aysu Aktürk
*
* Notlar: 
* ELM235 2023 Bahar Lab1 - Problem 3 Testbench 
24
* Denklem 3: X = UE?G? + UE?T + T?E?U? + T?E?G
 Denklem 4: Y = G?T?U + G U? E + T E? U? + G?TU? + G?TU +G?T?E + U? 
E?G
 denkleminin simulasyonu 
* Bütün olasi girislere göre çikis gözlemlenir. 
*/ 
module testbench();
logic g, t, u, e;
logic x, y;
lab1_boolean_algebra dut0(g, t, u, e, x, y);

assign x = u & ~e & ~g | u & ~e & t | ~t & ~e & ~u | ~t & ~e & ~g ;
assign y = ~g & ~t & u | g & ~u & e | ~t & ~e & ~u | ~g & t & ~u | ~g & t & u | ~g & ~t & e | ~u & ~e & g;

initial begin
	g = 1; t = 1; u = 1; e = 1; #10
	g = 0; t = 1; u = 1; e = 1; #10
	g = 1; t = 0; u = 1; e = 1; #10
	g = 0; t = 0; u = 1; e = 1; #10
	g = 1; t = 1; u = 0; e = 1; #10
	g = 0; t = 1; u = 0; e = 1; #10
	g = 1; t = 0; u = 0; e = 1; #10
	g = 0; t = 0; u = 0; e = 1; #10
	g = 1; t = 1; u = 1; e = 0; #10
	g = 0; t = 1; u = 1; e = 0; #10
	g = 1; t = 0; u = 1; e = 0; #10
	g = 0; t = 0; u = 1; e = 0; #10
	g = 1; t = 1; u = 0; e = 0; #10
	g = 0; t = 1; u = 0; e = 0; #10
	g = 1; t = 0; u = 0; e = 0; #10
	g = 0; t = 0; u = 0; e = 0; #10
$stop;
end
endmodule