/*module demux12(i,sel,y0,y1);
input i;
input sel;
output y0,y1;
assign y0= (~sel)&i;
assign y1= sel&i;
endmodule*/

module demux12(i,sel,y0,y1);
input i;
input sel;
output reg y0,y1;

always @(i,sel)

begin
     y0= (~sel)&i;
     y1= sel&i;
end

endmodule