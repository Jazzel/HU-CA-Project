module IFID(
  input wire clk,
  input reset,
  input wire [63:0] PC_In,
  input  [31:0] Inst_input,		
  output reg [31:0]Inst_output,
  output reg [63:0] PC_Out,
  input IFID_Write
);
  
  always @ (posedge clk or posedge reset)
    begin
    if (reset == 1'b1)
      begin
         PC_Out <= 0; 
         Inst_output <= 0;
      end
      else if (~IFID_Write) 
        begin
          PC_Out <= PC_Out;
          Inst_output <= Inst_output;
        end
     else 
       begin
         PC_Out = PC_In;
         Inst_output <= Inst_input;
       end
    end
endmodule
