module processor_tb;

reg clk;

processor_top uut(clk);

always #5 clk = ~clk;

initial begin
    clk = 0;
    #100 $stop;
end

endmodule
