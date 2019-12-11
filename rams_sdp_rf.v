// Simple Dual-Port Block RAM with One Clock                                                                                                                                                                       
// File: simple_dual_one_clock.v                                                                                                                                                                                   
module rams_sdp_rf #(parameter D=16, A=10)
  (clk,ena,enb,wea,addra,addrb,dia,dob);
   input clk,ena,enb,wea;
   input [A-1:0] addra,addrb;
   input [D-1:0] dia;
   output [D-1:0] dob;
   reg [D-1:0]   ram [(2**A)-1:0];
   reg [D-1:0]   doa,dob;
   always @(posedge clk) begin
      if (ena) begin
         if (wea)
           ram[addra] <= dia;
      end
   end

   always @(posedge clk) begin
      if (enb)
        dob <= ram[addrb];
   end
endmodule // rams_sdp_rf
