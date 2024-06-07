
module alu (
 input logic [31:0] A,
 input logic [31:0] B,
 input logic [3:0] op,
 output logic [31:0] Y,
 output logic hata
);
 always_comb begin
    case(op)
 	0: Y = A + B;
 	1: Y = A << B;
 	2: Y = A > B ? 1:0;
 	3: Y = A > B ? 1:0;
 	4: Y = A ^ B;
 	5: Y = A >> B;
 	6: Y = A | B;
 	7: Y = A & B;
	8: Y = A - B;
	9: hata = 1;
	10: hata=1;
	11: hata =1;
	12: hata = 1;
	13: Y = A<<<B;
	14: hata = 1;
	15: hata = 1;
 	endcase
    end
endmodule