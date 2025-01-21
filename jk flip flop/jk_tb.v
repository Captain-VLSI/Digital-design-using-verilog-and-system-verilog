module jk_tb;
reg j,k;
reg clk,rst;
wire q;

jk_ff dut (.*);
always #5 clk=~clk;

initial
       begin
       clk=0; rst=0;
       end
initial begin
        #10 rst=1;
        j=0;
        k=0;
        end
        initial begin
                #20 j=0;k=1;
                #20 j=1; k=0;
                #20 j=1;k=1;
                $finish;
                end
endmodule                
