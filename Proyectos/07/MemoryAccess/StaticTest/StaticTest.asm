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

// push constante 111 
@111
D=A
@SP
M=M+1
A=M-1
M=D

// push constante 333 
@333
D=A
@SP
M=M+1
A=M-1
M=D

// push constante 888 
@888
D=A
@SP
M=M+1
A=M-1
M=D

// pop from statck to static 8
@SP
AM=M-1
D=M
M=0
@StaticTest.vm_8
M=D
// pop from statck to static 3
@SP
AM=M-1
D=M
M=0
@StaticTest.vm_3
M=D
// pop from statck to static 1
@SP
AM=M-1
D=M
M=0
@StaticTest.vm_1
M=D
// push desde static 3 a stack 
@StaticTest.vm_3
D=M
@SP
M=M+1
A=M-1
M=D

// push desde static 1 a stack 
@StaticTest.vm_1
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

// push desde static 8 a stack 
@StaticTest.vm_8
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

