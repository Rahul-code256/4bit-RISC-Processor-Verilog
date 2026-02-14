module alu (
    input [3:0] A, B,
    input [2:0] ALU_Sel,
    output reg [3:0] Result
);

always @(*) begin
    case(ALU_Sel)
        3'b000: Result = A + B;   // ADD
        3'b001: Result = A - B;   // SUB
        3'b010: Result = A & B;   // AND
        3'b011: Result = A | B;   // OR
        3'b100: Result = A ^ B;   // XOR
        default: Result = 4'b0000;
    endcase
end

endmodule
