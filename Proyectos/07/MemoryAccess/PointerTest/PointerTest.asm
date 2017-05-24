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

// push constante 3030 
@3030
D=A
@SP
M=M+1
A=M-1
M=D

// pop from stack to register 3
@SP
AM=M-1
D=M
M=0
@3
M=D
// push constante 3040 
@3040
D=A
@SP
M=M+1
A=M-1
M=D

// pop from stack to register 4
@SP
AM=M-1
D=M
M=0
@4
M=D
// push constante 32 
@32
D=A
@SP
M=M+1
A=M-1
M=D

// pop from stack to segment THIS 2 
@2
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

// push constante 46 
@46
D=A
@SP
M=M+1
A=M-1
M=D

// pop from stack to segment THAT 6 
@6
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

@3
D=M
@SP
M=M+1
A=M-1
M=D

@4
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

// push desde segmento THIS a stack 2 
@2
D=A
@THIS
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

// push desde segmento THAT a stack 6 
@6
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

