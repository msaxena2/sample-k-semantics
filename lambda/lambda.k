module LAMBDA
	syntax Exp ::= Val
					| Exp Exp           [left]
					| "(" Exp ")" 		[bracket]
					| "lambda" Val "." Exp

	syntax Val ::= Id
					


endmodule