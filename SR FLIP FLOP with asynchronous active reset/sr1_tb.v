module sr1_tb;

reg clk,rst;
reg s,r;
wire q;

srff aa(.*);

always #5 clk=~clk;

initial begin
       clk=0; rst=0;
        end

initial begin
      #6 rst=1;
         s=0;
         r=0;
        end

initial begin
        #25 s=1;r=0;
        #10 s=0;r=1;
        #10 s=1;r=1;
        //end

        $finish;
        end
endmodule
