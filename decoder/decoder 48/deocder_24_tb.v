module deocder_24_tb;

reg en,a,b;
wire [3:0]y;

deocder_24 dut(en,a,b,y);

initial begin
        $monitor("$time=%0t,en=%b,a=%b,b=%b,y=%b",$time,en,a,b,y);

      #5  en = 1; a=1'bx; b=1'bx;
      #5  en = 0; a=0; b=0;
      #5  en = 0; a=0; b=1;
      #5  en = 0; a=1; b=0;
      #5  en = 0; a=1; b=1;
      #30;
      $finish;
       end
endmodule       
