//
// Designed by Qiang Wu
//
//	packet memory block
//	64x32 bits, 32bit interface
`timescale 1ns/1ps

module packet_memory_block(
	clk,
	we,
	addr,
	data_in,
	data_out
);

input clk;
input [3:0] we;
input [5:0] addr;
input [31:0] data_in;
output [31:0] data_out;

genvar i;
generate
	for(i = 0; i < 4; i = i + 1) begin:pktmbgen
		RAM64X1S #(.INIT(64'h0000000000000000))
		ram64x1s_inst0(
			.O(data_out[i*8]),        // 1-bit data output
			.A0(addr[0]),      // Address[0] input bit
			.A1(addr[1]),      // Address[1] input bit
			.A2(addr[2]),      // Address[2] input bit
			.A3(addr[3]),      // Address[3] input bit
			.A4(addr[4]),      // Address[4] input bit
			.A5(addr[5]),      // Address[5] input bit
			.D(data_in[i*8]),        // 1-bit data input
			.WCLK(clk),  // Write clock input
			.WE(we[i])       // Write enable input
		);
		RAM64X1S #(.INIT(64'h0000000000000000))
		ram64x1s_inst1(
			.O(data_out[i*8+1]),        // 1-bit data output
			.A0(addr[0]),      // Address[0] input bit
			.A1(addr[1]),      // Address[1] input bit
			.A2(addr[2]),      // Address[2] input bit
			.A3(addr[3]),      // Address[3] input bit
			.A4(addr[4]),      // Address[4] input bit
			.A5(addr[5]),      // Address[5] input bit
			.D(data_in[i*8+1]),        // 1-bit data input
			.WCLK(clk),  // Write clock input
			.WE(we[i])       // Write enable input
		);
		RAM64X1S #(.INIT(64'h0000000000000000))
		ram64x1s_inst2(
			.O(data_out[i*8+2]),        // 1-bit data output
			.A0(addr[0]),      // Address[0] input bit
			.A1(addr[1]),      // Address[1] input bit
			.A2(addr[2]),      // Address[2] input bit
			.A3(addr[3]),      // Address[3] input bit
			.A4(addr[4]),      // Address[4] input bit
			.A5(addr[5]),      // Address[5] input bit
			.D(data_in[i*8+2]),        // 1-bit data input
			.WCLK(clk),  // Write clock input
			.WE(we[i])       // Write enable input
		);
		RAM64X1S #(.INIT(64'h0000000000000000))
		ram64x1s_inst3(
			.O(data_out[i*8+3]),        // 1-bit data output
			.A0(addr[0]),      // Address[0] input bit
			.A1(addr[1]),      // Address[1] input bit
			.A2(addr[2]),      // Address[2] input bit
			.A3(addr[3]),      // Address[3] input bit
			.A4(addr[4]),      // Address[4] input bit
			.A5(addr[5]),      // Address[5] input bit
			.D(data_in[i*8+3]),        // 1-bit data input
			.WCLK(clk),  // Write clock input
			.WE(we[i])       // Write enable input
		);
		RAM64X1S #(.INIT(64'h0000000000000000))
		ram64x1s_inst4(
			.O(data_out[i*8+4]),        // 1-bit data output
			.A0(addr[0]),      // Address[0] input bit
			.A1(addr[1]),      // Address[1] input bit
			.A2(addr[2]),      // Address[2] input bit
			.A3(addr[3]),      // Address[3] input bit
			.A4(addr[4]),      // Address[4] input bit
			.A5(addr[5]),      // Address[5] input bit
			.D(data_in[i*8+4]),        // 1-bit data input
			.WCLK(clk),  // Write clock input
			.WE(we[i])       // Write enable input
		);
		RAM64X1S #(.INIT(64'h0000000000000000))
		ram64x1s_inst5(
			.O(data_out[i*8+5]),        // 1-bit data output
			.A0(addr[0]),      // Address[0] input bit
			.A1(addr[1]),      // Address[1] input bit
			.A2(addr[2]),      // Address[2] input bit
			.A3(addr[3]),      // Address[3] input bit
			.A4(addr[4]),      // Address[4] input bit
			.A5(addr[5]),      // Address[5] input bit
			.D(data_in[i*8+5]),        // 1-bit data input
			.WCLK(clk),  // Write clock input
			.WE(we[i])       // Write enable input
		);
		RAM64X1S #(.INIT(64'h0000000000000000))
		ram64x1s_inst6(
			.O(data_out[i*8+6]),        // 1-bit data output
			.A0(addr[0]),      // Address[0] input bit
			.A1(addr[1]),      // Address[1] input bit
			.A2(addr[2]),      // Address[2] input bit
			.A3(addr[3]),      // Address[3] input bit
			.A4(addr[4]),      // Address[4] input bit
			.A5(addr[5]),      // Address[5] input bit
			.D(data_in[i*8+6]),        // 1-bit data input
			.WCLK(clk),  // Write clock input
			.WE(we[i])       // Write enable input
		);
		RAM64X1S #(.INIT(64'h0000000000000000))
		ram64x1s_inst7(
			.O(data_out[i*8+7]),        // 1-bit data output
			.A0(addr[0]),      // Address[0] input bit
			.A1(addr[1]),      // Address[1] input bit
			.A2(addr[2]),      // Address[2] input bit
			.A3(addr[3]),      // Address[3] input bit
			.A4(addr[4]),      // Address[4] input bit
			.A5(addr[5]),      // Address[5] input bit
			.D(data_in[i*8+7]),        // 1-bit data input
			.WCLK(clk),  // Write clock input
			.WE(we[i])       // Write enable input
		);
	end
endgenerate

endmodule

