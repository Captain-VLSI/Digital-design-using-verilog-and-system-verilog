///////data flow//////////

/*module fullsub (a,b,cin,diff,borrow);
input a,b,cin;
output diff,borrow;

assign diff = a^b^cin;
assign borrow = ~a & ~(a^b) | b&cin;

endmodule*/

/////////behavioral///////

module fullsub(input a,b,cin,output reg diff,borrow);


always @(a or b or cin)
begin

diff = a^b^cin;
borrow = ~a & ~(a^b) | b&cin;

end
endmodule

////////////structural /////////////
/*module fullsub(
               input a,
               input b,
               input cin,
               output diff,
               output borrow
               );
wire w1,w2,w3,w4;

xor (diff,a,b,cin);
not n1(w1,a);

and a1(w2,w1,b);
and a2(w3,w1,C);
and a3(w4,b,cin);

or or1(borrow,w2,w3,w4);

endmodule*/
