module PYTH
       syntax Id ::= Int
       	      	     | Bool
		     | AExp
		     | BExp
		    
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
		       	      		         
endmodule