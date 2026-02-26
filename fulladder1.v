module fulladder (a,b,cin,sum,cout,p);
    input  a,b,cin;
    output  sum,cout,p;

    assign sum = a ^ b ^ cin;         
    assign cout = (a & b) | (cin & (a ^ b));
    assign p = a ^ b;
endmodule
module fulladder_testbench;
    reg a,b,cin;
    wire sum,cout,p;
    fulladder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout),.p(p));
    initial begin
        $display("A B Cin | sum cout | p");
        $monitor("%b %b  %b |  %b   %b  |  %b", a, b, cin, sum, cout, p);
        a=0;b=0;cin=0;
        #10;
        a=0;b=0;cin=1;
        #10;
        a=0;b=1;cin=0;
        #10;
        a=0;b=1;cin=1;
        #10;
        a=1;b=0;cin=0;
        #10;
        a=1;b=0;cin=1;
        #10;
        a=1;b=1;cin=0;
        #10;
        a=1;b=1;cin=1;
        #10;
        $finish;
    end
endmodule
