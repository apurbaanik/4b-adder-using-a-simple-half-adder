module fulladder(input A, input B, input cin, output sum, output cout);
wire S1, C1, C2;
halfadder HA1 (A,B,S1,C1);
halfadder HA2 (S1, cin, sum, C2);
assign cout = C1 + C2;
endmodule
