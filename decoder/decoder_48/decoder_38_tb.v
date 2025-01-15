module decoder_38_tb;
reg en,a,b,c;
wire [7:0]y;

decoder_38 dut(en,a,b,c,y);

initial begin
        $monitor("$time=%0t,en=%b,a=%b,b=%b,c=%b,y=%b",$time,en,a,b,c,y);
     #10   en=0; a=1'b0; b=1'b0; c=1'b0; // y=8'b0000_0000;
     #10   en=1; a=1'b0; b=1'b0; c=1'b0; //y=8'b1000_0000;
     #10   en=1; a=1'b0; b=1'b0; c=1'b1; //y=8'b0100_0000;
     #10   en=1; a=1'b0; b=1'b1; c=1'b0; //y=8'b0010_0000;
     #10   en=1; a=1'b0; b=1'b1; c=1'b1; //y=8'b0001_0000;
     #10   en=1; a=1'b1; b=1'b0; c=1'b0; //y=8'b0000_1000;
     #10   en=1; a=1'b1; b=1'b0; c=1'b1; //y=8'b0000_0100;
     #10   en=1; a=1'b1; b=1'b1; c=1'b0; //y=8'b0000_0010;
     #10   en=1; a=1'b1; b=1'b1; c=1'b1; //y=8'b0000_0001;
#100;
     $finish();
        end

endmodule
