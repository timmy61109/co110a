// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


//     while (R0 > 0) {
//       R2 = R2 + R1;
@1
D=M
@2
M=D+M

//       R0 = R0 - 1;
@1
D=A
@0
M=M-D

//     }
@0
D=M
@12
D;JGT

// }
