module d_ff_tb;

reg clk;
reg rst;
reg d;
wire q;

d_ff_synch_ah dut (.*);

always #5 clk=~clk;

initial begin
        clk=0;rst=0;d=0;

#5 rst=1;
#10 rst=0;

//repeat(6) begin
//          d=$urandom_range(0,1);

#10 d = 1;
#10 d = 0;
#10 d = 1;
#10 rst = 1;
#10 rst = 0;

$finish();         
        end
endmodule        
