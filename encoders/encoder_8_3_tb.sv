module encoder_8_3_tb;

reg [7:0]d;
wire [2:0]y;
int i;

encoder_8_3 dut(d,y);

initial begin
        $monitor("$time=%0t,d=%b,y=%b",$time,d,y);
        d=8'b1; #1;
        for (i=0;i<8;i=i+1)
            begin
            d=d<<1; #1;
            end
        end
endmodule        
