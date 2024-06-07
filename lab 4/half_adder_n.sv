
module half_adder_n (
 	input logic a,b,
 	output logic s,cOut
);
assign s = a ^ b;
assign cOut = a & b;
endmodule