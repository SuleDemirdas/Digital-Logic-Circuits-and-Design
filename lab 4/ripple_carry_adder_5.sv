
module ripple_carry_adder_5(
	input logic [4:0] a, b, 
	output logic [4:0] sum, carryOut
);

logic cOut0,cOut1,cOut2,cOut3,cOut4,s0,s1,s2,s3,s4;

full_adder_n inst0(a[0],b[0],0,sum[0],cOut0);
full_adder_n inst1(a[1],b[1],cOut0,sum[1],cOut1);
full_adder_n inst2(a[2],b[2],cOut1,sum[2],cOut2);
full_adder_n inst3(a[3],b[3],cOut2,sum[3],cOut3);
full_adder_n inst4(a[4],b[4],cOut3,sum[4],carryOut);

endmodule