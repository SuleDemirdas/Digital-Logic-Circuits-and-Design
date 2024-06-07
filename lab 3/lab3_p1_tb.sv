
module lab3_p1_tb();
	logic a, b, s; // Test tezgahi giri? de?i?kenleri tanimlari
	logic y; // Test tezgahi cikis de?iskenleri tanimlari

lab3_p1 dut0(a, b, s, y);

initial begin
// Truth table daki tum durumlar tanimlanir
	a = 0; b = 0; s = 0; #10 // Degiskenlere degerler atandiktan sonra 10 us bekle
	a = 0; b = 1; s = 0; #10
	a = 1; b = 0; s = 0; #10
	a = 1; b = 1; s = 0; #10
	a = 0; b = 0; s = 1; #10
	a = 0; b = 1; s = 1; #10
	a = 1; b = 0; s = 1; #10
	a = 1; b = 1; s = 1; #10
$stop;
end
endmodule
