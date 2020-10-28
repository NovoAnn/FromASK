module comb_simple(
input clk,
output reg [3:0] led
);

initial begin
led=0;
end

always @ (posedge clk)
begin

led<=led + 1;

end

endmodule
