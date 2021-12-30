`timescale 1ns/1ps

module testbenchFA();
reg A;
reg B;
reg cin;
wire sum;
wire cout;
reg [2:0] value;

fulladder dut(.A(A), .B(B), .cin(cin), .sum(sum), .cout(cout));

integer i;
always for(i= 0; i <8; i=i+1)
begin
	{value} = i;
	A <= value[0];
	B <= value[1];
	cin <= value[2];
#15;
end
endmodule