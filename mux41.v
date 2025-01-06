///////////data flow//////////

module mux41 (input [3:0]i,
              input [1:0]s,
              output y);

assign y = i[s];

endmodule

///////data flow method 2/////////// gives a different hardware

/* module mux41(y,i,s);
 	input [3:0]i;
 	input [1:0]s;
 	output y;

 assign y= ~|s?i[0]:(&s?i[3]:(s[0]?i[1]:i[2]));


 endmodule*/

///////////data flow method 3////////// gives a differenyt hardware

/* module mux41(y,i,s);
 	input [3:0]i;
 	input [1:0]s;
 	output y;

 assign y= (s==2'd0)?i[0]:((s==2'd1):i[1]:((s==2'd2)?i[2]:i[3]));


 endmodule

/////////////////behavioural/////////

module mux41 (input [3:0]i,
        input [1:0]s,
        output reg y
        );

always@(*);
case(s)
    2'd0: y=i[0];
    2'd1: y=i[1];
    2'd2: y=i[2];
    2'd3: y=i[3];
    default:$display("error");
endcase
endmodule*/
