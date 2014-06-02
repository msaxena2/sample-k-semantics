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
		<k color="red"> $PGM:K </k>
		<streams color="blue">
			<in stream="stdin"> .List </in>
      			<out stream="stdout"> .List </out>
    		</streams>
      rule I1:Int + I2:Int => I1 +Int I2
      rule I1:Int * I2:Int => I1 *Int I2
      rule I1:Int / I2:Int => I1 /Int I2 requires I2 =/=Int 0
      rule <k> print(I:Int) => I ... </k>
      	   <out> ... .=> ListItem(I) </out>
      rule <k> read => I:Int ...</k>
      	    <in> ListItem(I) => . ... </in>
endmodule