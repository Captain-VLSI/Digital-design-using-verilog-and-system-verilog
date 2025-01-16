module comparator_tb();
reg [3:0]a,b;
wire a_grt_b,a_eql_b,a_less_b;

comparator_bh dut (a,b,a_grt_b,a_eql_b,a_less_b);

initial 
        begin
             $monitor("$time=%0t,a=%b,b=%b,a_grt_b=%b,q_eql_b=%b,a_less_b=%b",$time,a,b,a_grt_b,a_eql_b,a_less_b);

             #10 a=4'b0110;
             #10 b=4'b1100;

             $finish;

         end
         
endmodule
