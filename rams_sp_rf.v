// Single-Port Block RAM Read-First Mode
// rams_sp_rf.v
module rams_sp_rf #(parameter D=18, A=10)
   (clk, en, we, addr, di, dout);
input clk; 
input we; 
input en;
input [A-1:0] addr; 
input [D-1:0] di; 
output [D-1:0] dout;

reg	[D-1:0] RAM [2**A-1:0];
reg	[D-1:0] dout;

always @(posedge clk)
begin
  if (en)
    begin
      if (we)
        RAM[addr]<=di;
      dout <= RAM[addr];
    end
end

endmodule
