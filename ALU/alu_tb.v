`timescale 1ns/1ps

module alu_tb;

reg [3:0] in1, in2;
reg [2:0] sel;
wire [3:0] out;
wire carry;

alu uut (
    .in1(in1),
    .in2(in2),
    .sel(sel),
    .out(out),
    .carry(carry)
);

initial begin
    in1 = 4'b0101; 
    in2 = 4'b0011;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;

    $finish;
end

endmodule
