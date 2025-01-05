module fullsubtb;
reg a,b,cin;
wire diff,borrow;

fullsub instance0 (a,b,cin,diff,borrow);

initial begin
$monitor($time,"a=%b,b=%b,cin=%b,diff=%b,borrow=%b",a,b,cin,diff,borrow);
$dumpfile("dump.vcd");
$dumpvars();

       {a,b,cin} = 3'b000;
  #10  {a,b,cin} = 3'b001;
  #10  {a,b,cin} = 3'b010;
  #10  {a,b,cin} = 3'b011;
  #10  {a,b,cin} = 3'b100;
  #10  {a,b,cin} = 3'b101;
  #10  {a,b,cin} = 3'b110;
  #10  {a,b,cin} = 3'b111;

#1000;
  $finish();

end
endmodule
