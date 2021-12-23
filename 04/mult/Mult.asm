// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//     int R2 = 0;
@0
D=A
@2
M=D

//
@1
D=M
@16
D;JEQ

//     while (R0 > 0) {

//       R2 = R2 + R0;
@0
D=M
@2
M=D+M

//       R1 = R1 - 1;
@1
D=A
@1
M=M-D

//     }
D=M
@8
D;JGT

// }
