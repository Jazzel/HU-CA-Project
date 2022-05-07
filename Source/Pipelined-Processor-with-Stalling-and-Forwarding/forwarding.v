module forwarding(EX_MEM_rd, MEM_WB_rd, ID_EX_rs1, ID_EX_rs2, EX_MEM_RegWrite, MEM_WB_RegWrite, forward_A, forward_B);
  input wire[4:0] EX_MEM_rd;
  input wire [4:0] MEM_WB_rd;
  input wire [4:0] ID_EX_rs1;
  input wire [4:0] ID_EX_rs2;
  input wire EX_MEM_RegWrite;
  input wire MEM_WB_RegWrite;
  output reg [1:0] forward_A;
  output reg [1:0] forward_B;

always @(EX_MEM_rd or MEM_WB_rd or EX_MEM_RegWrite or MEM_WB_RegWrite or ID_EX_rs1 or ID_EX_rs2)
  begin
    if ((EX_MEM_RegWrite == 1) && (EX_MEM_rd != 0) && (EX_MEM_rd == ID_EX_rs1))  
            forward_A <= 2'b10;
    else if ((MEM_WB_RegWrite == 1) &&  (MEM_WB_rd != 0)  && (MEM_WB_rd == ID_EX_rs1))	
            forward_A <= 2'b01;
    else
            forward_A <= 2'b00;
    
  end
endmodule 