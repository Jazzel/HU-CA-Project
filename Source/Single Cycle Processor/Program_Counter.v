module Program_Counter(clk, reset, PC_In, PC_Out);
  
  input clk;
  input reset;
  input [63:0] PC_In;
  output reg [63:0] PC_Out;
  
  always @(posedge clk or posedge reset)
    begin
      if (reset) begin
        PC_Out <= 64'd0; 
      end
      else begin
        PC_Out <= PC_In;
      end
    end
endmodule