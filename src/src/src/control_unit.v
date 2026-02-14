module control_unit (
    input [2:0] opcode,
    output reg [2:0] ALU_Sel,
    output reg RegWrite
);

always @(*) begin
    case(opcode)
        3'b000: begin ALU_Sel=3'b000; RegWrite=1; end // ADD
        3'b001: begin ALU_Sel=3'b001; RegWrite=1; end // SUB
        3'b010: begin ALU_Sel=3'b010; RegWrite=1; end // AND
        3'b011: begin ALU_Sel=3'b011; RegWrite=1; end // OR
        default: begin ALU_Sel=3'b000; RegWrite=0; end
    endcase
end

endmodule

