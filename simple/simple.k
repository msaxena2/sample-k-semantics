module SIMPLE
configuration <T><k> a ~> a </k> <out> .List </out> </T>

syntax KItem ::=  "a"

rule <k> a => .K ...</k> <out>... .List => ListItem(!I:Int) </out> [transition]
endmodule