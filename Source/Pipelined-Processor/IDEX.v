module IDEX(clk, reset, Funct_inp, ALUOp_inp,  MemtoReg_inp, RegWrite_inp, Branch_inp, MemWrite_inp, MemRead_inp, ALUSrc_inp, ReadData1_inp, ReadData2_inp, rd_inp, rs1_in, rs2_in, imm_data_inp, PC_In, PC_Out, Funct_out,  ALUOp_out, MemtoReg__out, RegWrite_out,  Branch_out, MemWrite_out, MemRead_out, ALUSrc_out,  ReadData1_out, ReadData2_out, rs1_out, rs2_out, rd_out, imm_data_out);
  
  input wire clk,
  input reset,
  input [3:0] Funct_inp;
  input [1:0] ALUOp_inp;
  input MemtoReg_inp;
  input RegWrite_inp;
  input wire Branch_inp;
  input MemWrite_inp;
  input MemRead_inp;
  input ALUSrc_inp;
  input [63:0] ReadData1_inp;	
  input [63:0]ReadData2_inp;
  input [4:0] rd_inp;		
  input [4:0] rs1_in;
  input [4:0] rs2_in;
  input [63:0] imm_data_inp;
  input wire [63:0] PC_In;
  output reg [63:0] PC_Out;
  output reg [3:0] Funct_out;
  output reg [1:0] ALUOp_out;
  output reg MemtoReg__out; 
  output reg RegWrite_out;
  output reg Branch_out;
  output reg MemWrite_out; 
  output reg MemRead_out;
  output reg ALUSrc_out;
  output reg [63:0] ReadData1_out;
  output reg [63:0]ReadData2_out;
  output reg [4:0] rs1_out;
  output reg [4:0] rs2_out;
  output reg [4:0] rd_out;
  output reg [63:0] imm_data_out;
	
   always @ (posedge clk or posedge reset)
     begin 
       if (reset == 1'b1)
         begin
           PC_Out<= 0;
           Funct_out <= 0;
           ALUOp_out <= 0;
  		   MemtoReg__out <= 0;
 		   RegWrite_out <= 0;
  		   Branch_out <= 0;
  		   MemWrite_out <= 0;
  		   MemRead_out <= 0;
 		   ALUSrc_out <= 0;
   		   ReadData1_out <= 0;
  		   ReadData2_out <= 0; 
  		   rs1_out <= 0;
  		   rs2_out <= 0;
  		   rd_out <= 0;
  		   imm_data_out <= 0;
         end
       else 
         begin
            PC_Out<= PC_In;
           Funct_out <= Funct_inp ;
           ALUOp_out <= ALUOp_inp;
  		   MemtoReg__out <= MemtoReg_inp;
 		   RegWrite_out <= RegWrite_inp;
  		   Branch_out <= Branch_inp;
  		   MemWrite_out <= MemWrite_inp;
  		   MemRead_out <= MemRead_inp;
 		   ALUSrc_out <= ALUSrc_inp;
   		   ReadData1_out <=  ReadData1_inp;
  		   ReadData2_out <=  ReadData2_inp; 
  		   rs1_out <= rs1_in;
  		   rs2_out <= rs2_in;
  		   rd_out <= rd_inp;
  		   imm_data_out <= imm_data_inp;
         end
     end
endmodule
      