module demux18tb;
reg i;
reg [2:0]sel;
wire [7:0]y;

demux18 dut (.*);

initial begin

        $monitor("$time=%0t,i=%b,sel=%b,y=%b",$time,i,sel,y);

     #10 i=1; sel = 3'b000;
     #10 i=1; sel = 3'b001;
     #10 i=1; sel = 3'b010;
     #10 i=1; sel = 3'b011;
     #10 i=1; sel = 3'b100;
     #10 i=1; sel = 3'b101;
     #10 i=1; sel = 3'b110;
     #10 i=1; sel = 3'b111;

     #10 i=0; sel = 3'b011;

    $finish();
         end
endmodule
