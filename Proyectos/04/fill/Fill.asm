// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


(INICIARVARIABLES)
    // 8192 son los pixeles que deben pintarse de la pantalla
    // Se inicializa una variable con el numero de pixeles a pintar.
    @8192
    D=A
    @i
    M=D

    // La variable j que es el pixel actual, se hace igual al primer pixel de la pantalla. 
    @SCREEN
    D=A
    @j
    M=D

    // D se hace igual al valor del teclado. Si el valor del teclado es cero no esta //presionado, si el valor del teclado es 1 esta presionado. 
    @KBD
    D=M

    // Si el teclado no esta presionado, pintar de blanco.
    @PINTARBLANCO
    D; JEQ

    // Si el telcado esta presionado, pintar de negro
    @PINTARNEGRO
    0; JMP

  // hacer la variable color=0
  (PINTARBLANCO)
    @color
    M=0

    @PINTAR
    0;JMP

  // hacer la variable color= -1
  (PINTARNEGRO)
    @color
    M=-1

    @PINTAR
    0;JMP

  // Pintar la pantalla
  (PINTAR)
    // hacer D = color
    @color
    D=M

    // Hacer A igual al pixel actual y modificarlo
    @j
    A=M
    M=D

    // Sumar 1 a j para pintar el pixel siguiente
    @j
    M=M+1

    // Restar 1 a i que son los pixeles que faltan por pintar
    @i
    M=M-1
    D=M

    // Si i = 0 volver al inicio del programa
    @INICIARVARIABLES
    D; JEQ

    // Si i > 0 continuar pintando la pantalla.  
    @PINTAR
    0; JMP