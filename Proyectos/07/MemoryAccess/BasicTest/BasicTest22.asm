@256
D=A
@SP
M=D

// funcion call  Sys.init con locals 0
@continuacion_Sys.init_0
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
// Funcion goto Sys.init
@Sys.init
0;JMP
// Funcion label continuacion_Sys.init_0
(continuacion_Sys.init_0)

// push constante 10 
@10
D=A
@SP
M=M+1
A=M-1
M=D

// pop from stack to segment LCL 0 
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
M=0
@R13
A=M
M=D

// push constante 21 
@21
D=A
@SP
M=M+1
A=M-1
M=D

// push constante 22 
@22
D=A
@SP
M=M+1
A=M-1
M=D

// pop from stack to segment ARG 2 
@2
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
M=0
@R13
A=M
M=D

// pop from stack to segment ARG 1 
@1
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
M=0
@R13
A=M
M=D

// push constante 36 
@36
D=A
@SP
M=M+1
A=M-1
M=D

// pop from stack to segment THIS 6 
@6
D=A
@THIS
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
M=0
@R13
A=M
M=D

// push constante 42 
@42
D=A
@SP
M=M+1
A=M-1
M=D

// push constante 45 
@45
D=A
@SP
M=M+1
A=M-1
M=D

// pop from stack to segment THAT 5 
@5
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
M=0
@R13
A=M
M=D

// pop from stack to segment THAT 2 
@2
D=A
@THAT
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
M=0
@R13
A=M
M=D

// push constante 510 
@510
D=A
@SP
M=M+1
A=M-1
M=D

// pop from stack to register 11
@SP
AM=M-1
D=M
M=0
@11
M=D
// push desde segmento LCL a stack 0 
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push desde segmento THAT a stack 5 
@5
D=A
@THAT
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// add 
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=D+M

// push desde segmento ARG a stack 1 
@1
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// sub 
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M-D

// push desde segmento THIS a stack 6 
@6
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push desde segmento THIS a stack 6 
@6
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// add 
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=D+M

// sub 
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M-D

@11
D=M
@SP
M=M+1
A=M-1
M=D

// add 
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=D+M

