module sequential_tb();
reg a;
reg b;
reg clk;
reg sel;
reg out;
wire out;
sequential X1(.a(a), .b(b), .sel(sel), .out(out));
always @ (posedge clk)
clk = 1'b0;
sel = 1'b0;
a = 1'b0;
b = 1'b0;
#200;
clk = 1'b1;
sel = 1'b1;
a = 1'b1;
b = 1'b0;
#200;
clk = 1'b0;
sel = 1'b1;
a = 1'b0;
b = 1'b1;
#200;
clk = 1'b0;
sel = 1'b0;
a = 1'b0;
b = 1'b0;
#200;
clk = 1'b1;
sel = 1'b0;
a = 1'b0;
b = 1'b1;
end
endmodule