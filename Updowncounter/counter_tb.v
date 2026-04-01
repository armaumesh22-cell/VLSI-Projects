`timescale 1ns/1ps

module counter_tb;

reg clk;
reg reset;
reg up_down;
wire [3:0] count;

up_down_counter uut (
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .count(count)
);

// clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    up_down = 1;

    #10 reset = 0;

    #50 up_down = 0;  // switch to down

    #50;

    $finish;
end

endmodule
