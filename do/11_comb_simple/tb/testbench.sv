`timescale 1 ns / 1 ns


module testbench;
wire [3:0] led;



localparam t = 20;

reg clk;
initial 
begin
clk <= 0;
forever
#(t/2) 
clk <= ~clk;
end



comb_simple dut
(
.clk(clk),
.led(led)
);





initial
begin
#300;

$finish();
end

endmodule
