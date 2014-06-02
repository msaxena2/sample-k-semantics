module EXP-SYNTAX
       syntax Exp ::= Exp "+" Exp		[seqstrict]
       	      	      | Exp "*" Exp		[seqstrict]
		      | Exp "/" Exp		[seqstrict]
		      | "read"		
		      | print "(" Exp ")"	[strict]
		      | "("Exp")"		[bracket]	
endmodule

module EXP
       imports EXP-SYNTAX
endmodule