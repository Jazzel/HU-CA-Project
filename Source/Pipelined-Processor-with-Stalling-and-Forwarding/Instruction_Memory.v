module Instruction_Memory(Inst_Address, Instruction);
  
  input [63:0] Inst_Address;
  output [31:0] Instruction;
  
  reg [7:0] IMem [159:0] ;
  initial begin
    // blt x1 x11 -60
    IMem[159] = 8'b11111100;
    IMem[158] = 8'b10110000;
    IMem[157] = 8'b11000010;
    IMem[156] = 8'b11100011;
    // addi x1 x1 4
    IMem[155] = 8'b00000000;
    IMem[154] = 8'b01000000;
    IMem[153] = 8'b10000000;
    IMem[152] = 8'b10010011;
    // sw x4 4(x6)
    IMem[151] = 8'b00000000;
    IMem[150] = 8'b01000011;
    IMem[149] = 8'b00100010;
    IMem[148] = 8'b00100011;
    // blt x4 x7 -20
    IMem[147] = 8'b11111110;
    IMem[146] = 8'b01110010;
    IMem[145] = 8'b01000110;
    IMem[144] = 8'b11100011;
    // bge x0 x5 8
    IMem[143] = 8'b00000000;
    IMem[142] = 8'b01010000;
    IMem[141] = 8'b01010100;
    IMem[140] = 8'b01100011;
    // lw x7 0(x6)
    IMem[139] = 8'b00000000;
    IMem[138] = 8'b00000011;
    IMem[137] = 8'b00100011;
    IMem[136] = 8'b10000011;
    // add x6 x5 x10
    IMem[135] = 8'b00000000;
    IMem[134] = 8'b10100010;
    IMem[133] = 8'b10000011;
    IMem[132] = 8'b00110011;
    // addi x5 x5 -4
    IMem[131] = 8'b11111111;
    IMem[130] = 8'b11000010;
    IMem[129] = 8'b10000010;
    IMem[128] = 8'b10010011;
    // sw x7 4(x6)
    IMem[127] = 8'b00000000;
    IMem[126] = 8'b01110011;
    IMem[125] = 8'b00100010;
    IMem[124] = 8'b00100011;
    // bge x4 x7 28
    IMem[123] = 8'b00000000;
    IMem[122] = 8'b01110010;
    IMem[121] = 8'b01011110;
    IMem[120] = 8'b01100011;
    // bge x0 x5 32
    IMem[119] = 8'b00000010;
    IMem[118] = 8'b01010000;
    IMem[117] = 8'b01010000;
    IMem[116] = 8'b01100011;
    // lw x7 0(x6)
    IMem[115] = 8'b00000000;
    IMem[114] = 8'b00000011;
    IMem[113] = 8'b00100011;
    IMem[112] = 8'b10000011;
    // add x6 x5 x10
    IMem[111] = 8'b00000000;
    IMem[110] = 8'b10100010;
    IMem[109] = 8'b10000011;
    IMem[108] = 8'b00110011;
    // addi x5 x1 -4
    IMem[107] = 8'b11111111;
    IMem[106] = 8'b11000000;
    IMem[105] = 8'b10000010;
    IMem[104] = 8'b10010011;
    // lw x4 0(x3)
    IMem[103] = 8'b00000000;
    IMem[102] = 8'b00000001;
    IMem[101] = 8'b10100010;
    IMem[100] = 8'b00000011;
    // add x3 x1 x10
    IMem[99] = 8'b00000000;
    IMem[98] = 8'b10100000;
    IMem[97] = 8'b10000001;
    IMem[96] = 8'b10110011;
    // blt x1 x10 4
    IMem[95] = 8'b00000000;
    IMem[94] = 8'b10100000;
    IMem[93] = 8'b11000010;
    IMem[92] = 8'b01100011;
    // addi x1 x0 4
    IMem[91] = 8'b00000000;
    IMem[90] = 8'b01000000;
    IMem[89] = 8'b00000000;
    IMem[88] = 8'b10010011;
    // sw x9 36(x10)
    IMem[87] = 8'b00000010;
    IMem[86] = 8'b10010101;
    IMem[85] = 8'b00100010;
    IMem[84] = 8'b00100011;
    // addi x9 x0 75
    IMem[83] = 8'b00000100;
    IMem[82] = 8'b10110000;
    IMem[81] = 8'b00000100;
    IMem[80] = 8'b10010011;
    // sw x9 32(x10)
    IMem[79] = 8'b00000010;
    IMem[78] = 8'b10010101;
    IMem[77] = 8'b00100000;
    IMem[76] = 8'b00100011;
    // addi x9 x0 31
    IMem[75] = 8'b00000001;
    IMem[74] = 8'b11110000;
    IMem[73] = 8'b00000100;
    IMem[72] = 8'b10010011;
    // sw x9 28(x10)
    IMem[71] = 8'b00000000;
    IMem[70] = 8'b10010101;
    IMem[69] = 8'b00101110;
    IMem[68] = 8'b00100011;
    // addi x9 x0 66
    IMem[67] = 8'b00000100;
    IMem[66] = 8'b00100000;
    IMem[65] = 8'b00000100;
    IMem[64] = 8'b10010011;
    // sw x9 24(x10)
    IMem[63] = 8'b00000000;
    IMem[62] = 8'b10010101;
    IMem[61] = 8'b00101100;
    IMem[60] = 8'b00100011;
    // addi x9 x0 71
    IMem[59] = 8'b00000100;
    IMem[58] = 8'b01110000;
    IMem[57] = 8'b00000100;
    IMem[56] = 8'b10010011;
    // sw x9 20(x10)
    IMem[55] = 8'b00000000;
    IMem[54] = 8'b10010101;
    IMem[53] = 8'b00101010;
    IMem[52] = 8'b00100011;
    // addi x9 x0 46
    IMem[51] = 8'b00000010;
    IMem[50] = 8'b11100000;
    IMem[49] = 8'b00000100;
    IMem[48] = 8'b10010011;
    // sw x9 16(x10)
    IMem[47] = 8'b00000000;
    IMem[46] = 8'b10010101;
    IMem[45] = 8'b00101000;
    IMem[44] = 8'b00100011;
    // addi x9 x0 98
    IMem[43] = 8'b00000110;
    IMem[42] = 8'b00100000;
    IMem[41] = 8'b00000100;
    IMem[40] = 8'b10010011;
    // sw x9 12(x10)
    IMem[39] = 8'b00000000;
    IMem[38] = 8'b10010101;
    IMem[37] = 8'b00100110;
    IMem[36] = 8'b00100011;
    // addi x9 x0 63
    IMem[35] = 8'b00000011;
    IMem[34] = 8'b11110000;
    IMem[33] = 8'b00000100;
    IMem[32] = 8'b10010011;
    // sw x9 4(x10)
    IMem[31] = 8'b00000000;
    IMem[30] = 8'b10010101;
    IMem[29] = 8'b00100100;
    IMem[28] = 8'b00100011;
    // addi x9 x0 94
    IMem[27] = 8'b00000101;
    IMem[26] = 8'b11100000;
    IMem[25] = 8'b00000100;
    IMem[24] = 8'b10010011;
    // sw x9 4(x10)
    IMem[23] = 8'b00000000;
    IMem[22] = 8'b10010101;
    IMem[21] = 8'b00100010;
    IMem[20] = 8'b00100011;
    // addi x9 x0 62
    IMem[19] = 8'b00000011;
    IMem[18] = 8'b11100000;
    IMem[17] = 8'b00000100;
    IMem[16] = 8'b10010011;
    // sw x9 0(x10)
    IMem[15] = 8'b00000000;
    IMem[14] = 8'b10010101;
    IMem[13] = 8'b00100000;
    IMem[12] = 8'b00100011;
    // addi x9 x0 18
    IMem[11] = 8'b00000001;
    IMem[10] = 8'b00100000;
    IMem[9]  = 8'b00000100;
    IMem[8]  = 8'b10010011;
    // addi x11 x0 40
    IMem[7]  = 8'b00000010;
    IMem[6]  = 8'b10000000;
    IMem[5]  = 8'b00000101;
    IMem[4]  = 8'b10010011;
    // addi x10 x0 0
    IMem[3]  = 8'b00000000;
    IMem[2]  = 8'b00000000;
    IMem[1]  = 8'b00000101;
    IMem[0]  = 8'b00010011;
  end
  
  assign Instruction[31:0] = {IMem[Inst_Address+2'b11], IMem[Inst_Address+2'b10], IMem[Inst_Address+1'b1], IMem[Inst_Address]};
  
endmodule