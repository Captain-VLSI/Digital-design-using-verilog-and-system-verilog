module dual_port_ram_tb();

reg [7:0] data_a, data_b;
reg [5:0] addr_a, addr_b;
reg we_a, we_b;
reg clk;
wire [7:0] q_a, q_b;


dual_port_ram dut(data_a,data_b,addr_a,addr_b,we_a,we_b,clk,q_a,q_b);

// create the clock
initial
begin
     clk = 1'b1;
     forever #50 clk = ~clk;
end

initial begin
  ////write the hex 55 to address 01 through port A
  data_a = 8'h55;
  addr_a = 6'h01;

  ////write the hex 66 to address 02 through port B
  data_b = 8'h66;
  addr_b = 6'h02;

  ///enable port A write
  we_a = 1'b1;

  ///enable port B write 
  we_b = 1'b1;

 #100;

 ///read data from address 02 from port a

   addr_a = 6'h02;

 ////read data from adrress 01 from port b
   addr_b = 6'h01;

   ///enable port A read;
   we_a = 1'b0;
  
  ///enable port B read;
    we_b = 1'b0;

#100;

 $stop; //stop simulation

end

endmodule 
