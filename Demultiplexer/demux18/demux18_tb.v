module demux18t_b;
reg i;
reg sel0,sel1,sel2;
wire y0,y1,y2,y3,y4,y5,y6,y7;

demux18 demux(.*);
reg[3:0]j;
initial
begin 
$monitor($time," the inputs are sel0=%b,sel1=%b,sel2=%b,i=%b, the outputs are  y0=%b,y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b,y7=%b", sel0,sel1,sel2,i,y0,y1,y2,y3,y4,y5,y6,y7);
for( j=0;j<8;j=j+1)
begin
#10{sel0,sel1,sel2}=j;
i=1'b1;
end
end
endmodule