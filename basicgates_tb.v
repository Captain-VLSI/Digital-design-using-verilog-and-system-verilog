module basicgates_tb;
reg a,b,c;
wire p,q,r,s,t,u,v;

basicgates cct (.a(a),.b(b),.c(c),.p(p),.q(q),.r(r),.s(s),.t(t),.u(u),.v(v));

initial begin

a = 0 ;b = 0 ;c = 0 ;#10
a = 0 ;b = 0 ;c = 1 ;#10
a = 0 ;b = 1 ;c = 0 ;#10
a = 0 ;b = 1 ;c = 1 ;#10
a = 1 ;b = 0 ;c = 0 ;#10
a = 1 ;b = 0 ;c = 1 ;#10
a = 1 ;b = 1 ;c = 0 ;#10
a = 1 ;b = 1 ;c = 1 ;#10


end
endmodule
