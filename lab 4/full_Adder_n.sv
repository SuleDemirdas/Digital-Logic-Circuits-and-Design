
//Full adder using half adder
module full_adder_n(
 input logic a,b,cin,
 output logic sum,cOut
);

logic cOut2,c1,s;
half_adder_n inst0(a,b,s,cOut2);
half_adder_n inst1(cin,s,sum,c1);

assign cOut = cOut2 | c1 ;
endmodule
