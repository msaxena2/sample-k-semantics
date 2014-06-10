module EXP-SYNTAX
       syntax Exp ::= Int
       	      	      | Exp "+" Exp		[seqstrict]
       	      	      | Exp "*" Exp		[seqstrict]
		      | Exp "/" Exp		[seqstrict]
		      | "read"		
		      | "print" "(" Exp ")"	[strict]
		      | "(" Exp ")"		[bracket]

	syntax Block ::= Stmt Block		[seqstrict]
	       	     	 | Stmt
endmodule

module EXP
       imports EXP-SYNTAX
       syntax KResult ::= Int
       	      	      	  | Bool
       configuration
		<k color="red"> $PGM:K </k>
		<env color="green"> .Map </env>
		<streams color="blue">
			<in color="yellow" stream="stdin"> .List </in>
      			<out color="yellow" stream="stdout"> .List </out>
    		</streams>
      // arithmatic rules
      rule I1:Int + I2:Int => I1 +Int I2
      rule I1:Int * I2:Int => I1 *Int I2
      rule I1:Int / I2:Int => I1 /Int I2 requires I2 =/=Int 0
      // Identifier rule
      // go here
      // print rules
      rule <k> print(I:Int) => I ... </k>
      	   <out> ... .=> ListItem(I) </out>
      // read rules
      rule <k> read => I:Int ...</k>
      	    <in> ListItem(I) => . ... </in>

endmodule
