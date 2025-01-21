module t_ff_tb;
reg t;
reg clk;
reg rst;
wire q;

t_ff_ahr dut(.*);

always #5 clk=~clk;

initial begin
        clk=0;rst=1;
        end

initial begin
        #5  rst=0;
           t=0;
        end
        initial begin
        #25 rst=1; t=1;
#100;
        $finish;
        end
endmodule
