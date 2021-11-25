// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


// int main() {
//     int R0 = 3;
@3
D=A
@0
M=D

//     int R1 = 5;
@5
D=A
@1
M=D

//     int R2 = 0;
@0
D=A
@2
M=D

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

// 鎖定跳躍位置不讓ROM記憶體亂移動
@24
0;JMP

// }
