module sipo_tb();
 // reg clk,in,rst;
  wire [3:0]q;
  reg clk,rst,in;

sipo dut(q,clk,rst,in);

initial begin
        clk=1;
        forever #5 clk=~clk;
        end

       initial begin
               rst = 1;
               #10 rst = 0; in = 1;
               #10          in = 0;
               #10          in = 1;
               #10          in = 0;
               #50
               $finish();
endmodule
