module mux81tb;
wire y;
reg [7:0]i;
reg [2:0]s;
//integer i;

mux81 dut (.*);

initial begin
$monitor($time,"i=%b,s=%b,y=%b",i,s,y);
           i=8'b0000_0000;
     #10   i=8'b0000_0001;s=3'b000;
     #10   i=8'b0000_0010;s=3'b001;
     #10   i=8'b0000_0100;s=3'b010;
     #10   i=8'b0000_1000;s=3'b011;
     #10   i=8'b0001_0000;s=3'b100;
     #10   i=8'b0010_0000;s=3'b101;
     #10   i=8'b0100_0000;s=3'b110;
     #10   i=8'b1000_0000;s=3'b111;
   #200 $finish();
        end
endmodule
