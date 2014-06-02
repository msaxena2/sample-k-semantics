module EXP-SYNTAX
       syntax Exp ::= Int
       	      	      | Exp "+" Exp		[seqstrict]
       	      	      | Exp "*" Exp		[seqstrict]
		      | Exp "/" Exp		[seqstrict]
		      | "read"		
		      | "print" "(" Exp ")"	[strict]
		      | "(" Exp ")"		[bracket]	
endmodule

module EXP
       imports EXP-SYNTAX
       syntax KResult ::= Int
       	      	      	  | Bool
       configuration
		<k> $PGM:K </k>
		<streams>
			<in stream="stdin"> .List </in>
      			<out stream="stdout"> .List </out>
    		</streams>
endmodule