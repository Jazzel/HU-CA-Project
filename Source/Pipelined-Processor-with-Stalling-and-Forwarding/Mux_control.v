module Mux_control(Mux_Write, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite, ALUOp);
  
  input Mux_Write;
  output reg Branch;
  output reg MemRead;
  output reg MemtoReg; 
  output reg MemWrite;
  output reg ALUSrc;
  output reg RegWrite;
  output reg [1:0] ALUOp;
  
  always@(*)
    begin
      if (~Mux_Write)
        begin
          Branch=0;
          MemRead=0;
          MemtoReg=0;
          MemWrite=0;
          ALUSrc=0;
          RegWrite=0;
          ALUOp=0;
        end
      else
        begin
          Branch=Branch;
          MemRead=MemRead;
          MemtoReg=MemtoReg;
          MemWrite=MemWrite;
          ALUSrc=ALUSrc;
          RegWrite=RegWrite;
          ALUOp=ALUOp;
        end
    end
endmodule
      
  