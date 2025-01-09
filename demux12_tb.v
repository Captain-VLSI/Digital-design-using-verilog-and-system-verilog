module demux12_tb;
reg i_tb;
reg s_tb;
wire y0_tb,y1_tb;

// step 2 instantiation 
demux12 dem(.i(i_tb),.sel(s_tb ),.y0(y0_tb),.y1(y1_tb));

// step 3 
initial 
begin
$monitor($time," the inputs are s_tb=%b,i_tb=%b, the outputs are     y0_tb=%b,   y1_tb=%b",s_tb,i_tb,y0_tb,y1_tb);
 s_tb=1'b0;i_tb=1'b1;
#5 s_tb=1'b1;i_tb=1'b1;
end
endmodule