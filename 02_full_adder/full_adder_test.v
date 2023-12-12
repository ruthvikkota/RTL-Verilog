module fa_tb;
reg a,b,cin;
wire sum,cout;
fa f1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$monitor("At time : %0t a=%0b, b=%0b, cin=%0b, sum=%0b, cout=%0b",$time,a,b,cin,sum,cout);
a=0;b=0;cin=0; #10
a=0;b=0;cin=1; #10
a=0;b=1;cin=0; #10
a=0;b=1;cin=1; #10
a=1;b=0;cin=0; #10
a=1;b=0;cin=1; #10
a=1;b=1;cin=0; #10
a=1;b=1;cin=1; #10;
end
endmodule
