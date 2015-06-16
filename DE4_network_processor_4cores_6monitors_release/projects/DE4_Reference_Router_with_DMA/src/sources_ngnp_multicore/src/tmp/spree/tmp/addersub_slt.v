/****************************************************************************
          AddSub unit
- Should perform ADD, ADDU, SUBU, SUB, SLT, SLTU

  is_slt signext addsub
    op[2] op[1] op[0]  |  Operation
0     0     0     0         SUBU
2     0     1     0         SUB
1     0     0     1         ADDU
3     0     1     1         ADD
4     1     0     0         SLTU
6     1     1     0         SLT

****************************************************************************/
module addersub (
            opA, opB,
            op, 
            result,
            result_slt );

parameter WIDTH=32;


input [WIDTH-1:0] opA;
input [WIDTH-1:0] opB;
//input carry_in;
input [3-1:0] op;

output [WIDTH-1:0] result;
output result_slt;

wire carry_out;
//wire [WIDTH:0] sum;
reg [WIDTH:0] sum;

// Mux between sum, and slt
wire is_slt;
wire signext;
wire addsub;

assign is_slt=op[2];
assign signext=op[1];
assign addsub=op[0];

assign result=sum[WIDTH-1:0];
//assign result_slt[WIDTH-1:1]={31{1'b0}};
//assign result_slt[0]=sum[WIDTH];
assign result_slt=sum[WIDTH];
wire [WIDTH-1:0] oA;
wire [WIDTH-1:0] oB;
wire [WIDTH-1:0] o_B;
assign oA = {signext&opA[WIDTH-1],opA};
assign oB = {signext&opB[WIDTH-1],opB};
assign o_B = ~{signext&opB[WIDTH-1],opB} + 1'b1;
always @(*) begin
	if(addsub == 1'b1) begin
		sum = oA + oB;
	end else begin
		sum = oA + o_B;
	end
end

/*
lpm_add_sub adder_inst(
    .dataa({signext&opA[WIDTH-1],opA}),
    .datab({signext&opB[WIDTH-1],opB}),
    .cin(~addsub),
    .add_sub(addsub),
    .result(sum)
        // synopsys translate_off
        ,
        .cout (),
        .clken (),
        .clock (),
        .overflow (),
        .aclr ()
        // synopsys translate_on
    );
defparam 
    adder_inst.lpm_width=WIDTH+1,
    adder_inst.lpm_representation="SIGNED";
*/
assign carry_out=sum[WIDTH];


endmodule

