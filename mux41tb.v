module mux41tb;
reg [3:0]i;
reg [1:0]s;
wire y;

mux41 dut(s,i,y);

initial begin
 $monitor("s=%b,i=%b,y=%b",s,i,y);
 {i[0]}=1'h0;
 {i[1]}=1'h1;
 {i[2]}=1'h2;
 {i[3]}=1'h3;
// repeat(6) begin
 s=$random;
#5;
 //end
 end
endmodule 
