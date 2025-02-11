`timescale 1ns / 1ps

module PIPO_tb;

reg clk, rst;
reg [3:0] d_in;
wire [3:0] d_out;

// Instantiate the PIPO module
PIPO uut (
    .clk(clk),
    .rst(rst),
    .d_in(d_in),
    .d_out(d_out)
);

// Clock generation
always #5 clk = ~clk; // Generate a clock with 10ns period

initial begin
    // Initialize signals
    clk = 0;
    rst = 1;
    d_in = 4'b0000;

    // Apply Reset
    #10 rst = 0;
    
    // Apply test inputs
    #10 d_in = 4'b1010;
    #10 d_in = 4'b1100;
    #10 d_in = 4'b1111;
    #10 d_in = 4'b0001;
    
    // Finish simulation
    #20 $finish;
end

// Monitor output values
initial begin
    $monitor("Time=%0t | d_in=%b | d_out=%b", $time, d_in, d_out);
end

endmodule
