module fulladder_4b_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;

fulladder_4b dut (.*);

initial begin
        $monitor("$time=%0t,a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
        
      #10  {a,b} = {4'b0000}; cin=1'b0;
      #10  {a,b} = {4'b0001}; cin=1'b0;
      #10  {a,b} = {4'b0010}; cin=1'b0;
      #10  {a,b} = {4'b0011}; cin=1'b0;
      #10  {a,b} = {4'b0100}; cin=1'b1;
      #10  {a,b} = {4'b0101}; cin=1'b1;
      #10  {a,b} = {4'b0110}; cin=1'b1;
      #10  {a,b} = {4'b0111}; cin=1'b1;

#100;
$finish();
        end
endmodule        
