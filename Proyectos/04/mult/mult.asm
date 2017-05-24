// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@R2 // Se refiere a una posicion de memoria
M=0 //R2=0

//If R0=0 entonces R2=0
  @R0
  D=M
  @FIN
  D;JEQ

 (SUMA) 
//if R1 = 0 entonces R2=0 ó R2=R0*R1
  @R1
  D=M
  @FIN
  D;JEQ
  
 
//R2 += R0
  @R0
  D=M
  @R2
  M=D+M
  
  @R1
  M=M-1
  
  @SUMA
  0;JMP
  
(FIN)
  @FIN
  0;JMP