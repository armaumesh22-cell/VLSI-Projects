module alu (
    input [3:0] in1,
    input [3:0] in2,
    input [2:0] sel,
    output reg [3:0] out,
    output reg carry
);

always @(*) begin
    carry = 0;
    case (sel)
        3'b000: {carry, out} = in1 + in2;   // add
        3'b001: {carry, out} = in1 - in2;   // subtract
        3'b010: out = in1 & in2;            // and
        3'b011: out = in1 | in2;            // or
        3'b100: out = in1 ^ in2;            // xor
        3'b101: out = ~in1;                 // not
        default: out = 4'b0000;
    endcase
end

endmodule
