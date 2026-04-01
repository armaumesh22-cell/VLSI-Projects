`timescale 1ns/1ps

module traffic_tb;

reg clk;
reg reset;
wire [1:0] light;

traffic_light uut (
    .clk(clk),
    .reset(reset),
    .light(light)
);

// clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    #10;

    reset = 0;

    #100;  // run simulation

    $finish;
end

endmodule
