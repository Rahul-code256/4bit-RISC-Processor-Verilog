module register_file (
    input clk,
    input we,
    input [1:0] rs1, rs2, rd,
    input [3:0] write_data,
    output [3:0] read_data1, read_data2
);

reg [3:0] registers [3:0];

assign read_data1 = registers[rs1];
assign read_data2 = registers[rs2];

always @(posedge clk) begin
    if (we)
        registers[rd] <= write_data;
end

endmodule
