///////////structural//////////
module full_adder_s (
    input a,b,cin,
    output sum,carry
);

wire w1,w2,w3,w4;

xor(w1,a,b);
xor(sum,w1,cin);  

and(w2,a,b);
and(w3,b,cin);
and(w4,cin,a);

or(carry,w2,w3,w4); 

endmodule

////////////data flow//////////////

module full_adder_d (
    input a,b,cin,
    output sum,carry
);

assign sum = a ^ b ^ cin;
assign carry = (a & b) | (b & cin)  | (cin & a) ;

endmodule
