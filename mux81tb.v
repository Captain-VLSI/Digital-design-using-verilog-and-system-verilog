module mux81tb;
wire y;
reg [7:0]I;
reg [2:0]s;
integer i;

mux81 dut (.*);

initial begin
$monitor($time,"y=%b,I=%b,s=%b",y,I,s);

s<=0;
I<=$random;

for (i = 1;i<4;i=i+1)
    begin
#5 s<=i;
    end

#10 $finish();
end
endmodule
