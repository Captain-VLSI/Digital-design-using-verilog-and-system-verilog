module basicgates (a,b,c,p,q,r,s,t,u,v);
       input a,b,c;
       output p,q,r,s,t,u,v;

and a1(p,a,b,c);
or o1(r,a,b,c);
nor nor1(s,a,b,c);
nand n1(q,a,b,c);
xor x1(t,a,b,c);
xnor x2(u,a,b,c);
not n2(v,a);

endmodule 
