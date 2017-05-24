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

// push constante 7 
@7
D=A
@SP
M=M+1
A=M-1
M=D

// push constante 8 
@8
D=A
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

