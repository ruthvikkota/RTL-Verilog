module fa(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
ha h1(.a(a),.b(b),.sum(w1),.carry(w2));
ha h2(.a(w1),.b(cin),.sum(sum),.carry(w3));
or(cout,w3,w2);
endmodule

/* half adder verilog code
module ha(a,b,sum,carry);
input a,b;
output sum,carry;
xor(sum,a,b);
and(carry,a,b);
endmodule
*/
