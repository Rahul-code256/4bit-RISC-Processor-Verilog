module program_memory (
    input [1:0] addr,
    output reg [7:0] instruction
);

always @(*) begin
    case(addr)
        2'b00: instruction = 8'b000_00_01_0; // ADD
        2'b01: instruction = 8'b001_00_01_0; // SUB
        default: instruction = 8'b00000000;
    endcase
end

endmodule
