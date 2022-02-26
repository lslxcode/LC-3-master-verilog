//--------------------------------------------------------------------------------------------
//
// Generated by X-HDL VHDL Translator - Version 2.0.0 Feb. 1, 2011
// ?? 1? 12 2021 15:54:45
//
//      Input file      : 
//      Component name  : half_adder
//      Author          : 
//      Company         : 
//
//      Description     : 
//
//
//--------------------------------------------------------------------------------------------


module half_adder(A, B, SUM, CYO);
	input   A;
	input   B;
	output  SUM;
	output  CYO;

	assign SUM = A ^ B;
	assign CYO = A & B;
   
endmodule

module half_adder_tb;
	reg A,B;		// input
	wire SUM,CYO;	// output

	half_adder U1( .A(A), .B(B), .SUM(SUM), .CYO(CYO));

	initial begin
		$monitor("A = %b , B = %b , SUM = %b , CYO = %b",A,B,SUM,CYO);
		#10 A=0; B=0;	// SUM=0, CYO=0
		#10 A=0; B=1;	// SUM=1, CYO=0
		#10 A=1; B=0;	// SUM=1, CYO=0
		#10 A=1; B=1;	// SUM=0, CYO=1
	end

endmodule