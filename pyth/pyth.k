module PYTH
      
       syntax AExp ::= Int
       	      	       | AExp "*" AExp		[strict, left]
		       | AExp "/" AExp		[strict, left]		        
		       > AExp "+" AExp		[strict, left]
		       | AExp "-" AExp		[strict, left]
		       | (AExp)	  		[bracket]

       syntax BExp ::= Bool
       	      	       | "!" BExp		[strict]
		       | AExp ">=" AExp		[seqstrict]
		       | BExp "&&" BExp 	[strict(1)]
		       | (BExp)	   		[bracket]
		       
       syntax Stmt ::= Id "=" AExp		[strict(2)]
       	      	       | Stmt ";"
		       
       syntax Pgm ::= Stmt Stmt			[left]

       syntax KResult ::= Int | Bool
      		       	      		         
endmodule