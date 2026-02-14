module processor_top(input clk);

wire [1:0] pc = 2'b00;
wire [7:0] instruction;

wire [2:0] opcode = instruction[7:5];
wire [1:0] rs1 = instruction[4:3];
wire [1:0] rs2 = instruction[2:1];
wire [1:0] rd  = instruction[1:0];

wire [2:0] ALU_Sel;
wire RegWrite;
wire [3:0] read1, read2, alu_result;

program_memory pm(pc, instruction);
control_unit cu(opcode, ALU_Sel, RegWrite);
register_file rf(clk, RegWrite, rs1, rs2, rd, alu_result, read1, read2);
alu alu1(read1, read2, ALU_Sel, alu_result);

endmodule
