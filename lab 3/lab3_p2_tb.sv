module lab3_p2_tb();
logic a, b, s; // Test tezgahi giri? de?i?kenleri tanimlari
logic yAnd, yOr, yNand, yNor; // Test tezgahi cikis de?iskenleri tanimlari
lab3_p2 dut0(a, b, s, yAnd, yOr, yNand, yNor);

initial begin
// Truth table daki tum durumlar tanimlanir
	a = 0; b = 0; s = 1; #10
	a = 0; b = 1; s = 1; #10
	a = 1; b = 0; s = 1; #10
	a = 1; b = 1; s = 1; #10
$stop;
end
endmodule

