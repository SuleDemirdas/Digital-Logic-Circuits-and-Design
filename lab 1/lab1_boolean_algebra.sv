/* lab1_boolean_algebra.sv 
* 
* Hazirlayanlar: 
* Sule Nur Demirdas
* Aysu Aktürk
*
* Notlar: 
* ELM235 2023 Bahar Lab1 - Problem 3
* Denklem 3: X = UE?G? + UE?T + T?E?U? + T?E?G
 Denklem 4: Y = G?T?U + G U? E + T E? U? + G?TU? + G?TU +G?T?E + U? 
E?G* 
*/
module lab1_boolean_algebra(
	input logic g, t, u, e, 
	output logic x, y
);

assign x = u & ~e & ~g | u & ~e & t | ~t & ~e & ~u | ~t & ~e & g ;
assign y = ~g & ~t & u | g & ~u & e | ~t & ~e & ~u | ~g & t & ~u | ~g & t & u | ~g & ~t & e | ~u & ~e & g;

endmodule