module fulladder (a,b,cin,sum,cout,p);
    input  a,b,cin;
    output  sum,cout,p;

    assign sum = a ^ b ^ cin;         
    assign cout = (a & b) | (cin & (a ^ b));
    assign p = a ^ b;
endmodule
/*
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
        #10;        a=0;b=1;cin=1;
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
*/
module fulladder_4bit (a,b,cin,sum,cout,p,out,cout1);
    input [3:0] a,b;
    input cin;
    output [3:0] sum,p;
    output cout,out, cout1;

    wire c1,c2,c3;

    fulladder FA0 (.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c1),.p(p[0]));
    fulladder FA1 (.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.cout(c2),.p(p[1]));
    fulladder FA2 (.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.cout(c3),.p(p[2]));
    fulladder FA3 (.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.cout(cout),.p(p[3]));   
    assign out= &p[3:0]; 
    assign cout1 = (out)? cin : cout ;
endmodule

module fulladder_4bit_testbench;
    reg [3:0] a,b;
    reg cin;
    wire [3:0] sum,p;
    wire cout,out, cout1;
    fulladder_4bit uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout),.p(p),.out(out),.cout1(cout1));
    initial begin
        $dumpfile("4bitcarryskipadder.vcd");
        $dumpvars(0, fulladder_4bit_testbench);
        $display("4-bit carry skip adder");
        $display("A    B    Cin| Sum  Cout|   P  | Out | Cout1");
        $monitor("%b %b  %b | %b  %b  | %b | %b   | %b", a, b, cin, sum, cout, p, out, cout1);
        a=4'b0000; b=4'b0000; cin=0;
        #10;
        a=4'b0000; b=4'b0000; cin=1;
        #10;
        a=4'b0011; b=4'b0101; cin=0;
        #10;
        a=4'b0011; b=4'b0101; cin=1;
        #10;
        a=4'b1111; b=4'b0001; cin=1;
        #10;
        a=4'b1111; b=4'b0001; cin=0;
        #10;
        a=4'b1010; b=4'b0101; cin=0;
        #10;
        a=4'b1010; b=4'b0101; cin=1;
        #10;
        a=4'b1111; b=4'b1111; cin=1;
        #10;
        a=4'b1111; b=4'b1111; cin=0;
        #10;
        $finish;
    end
endmodule



