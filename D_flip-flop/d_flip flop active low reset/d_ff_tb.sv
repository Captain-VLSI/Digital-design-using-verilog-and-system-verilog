module d_ff_tb;

reg clk;
reg rst;
reg d;
wire q;

d_ff_ah_pe dut(.*);

always #5 clk=~clk;
always #3 rst=~rst;

initial begin
        clk = 0; rst = 0;
        d=0;


#3 rst = 1;

repeat(10) begin
          d= $urandom_range(0,1);

         #3;
         end

$finish;
       end
endmodule       
