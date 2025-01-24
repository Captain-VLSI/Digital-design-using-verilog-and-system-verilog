module mux4_1tb;

reg i0,i1,i2,i3;
reg s0,s1;
wire y;

mux4_1 dut(.*);

initial begin
$monitor($time,"i0=%0b,i1=%0b,i2=%0b,i3=%0b,s0=%b,s1=%0b,y=%0b",i0,i1,i2,i3,s0,s1,y);

 // Initialize inputs
    i0 = 0; i1 = 0; i2 = 0; i3 = 0;
    s0 = 0; s1 = 0;

    // Apply different combinations of inputs and select lines
    #5 i0 = 1; i1 = 0; i2 = 0; i3 = 0; s0 = 0; s1 = 0;  // Select i0
    #5 i0 = 0; i1 = 1; i2 = 0; i3 = 0; s0 = 0; s1 = 1;  // Select i1
    #5 i0 = 0; i1 = 0; i2 = 1; i3 = 0; s0 = 1; s1 = 0;  // Select i2
    #5 i0 = 0; i1 = 0; i2 = 0; i3 = 1; s0 = 1; s1 = 1;  // Select i3

    // Add a few more test cases to verify functionality
    #5 i0 = 1; i1 = 1; i2 = 0; i3 = 0; s0 = 0; s1 = 0;  // Select i0
    #5 i0 = 0; i1 = 1; i2 = 1; i3 = 1; s0 = 1; s1 = 0;  // Select i2
    #10 $finish;  // End simulation
  end
endmodule
