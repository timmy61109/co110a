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

// int main() {
//     int R0 = 8191;
@8191
D=A
@0
M=D

//     int R1 = -1;
@1
M=-1

//     int R16384 = 0;
@0
D=A
@16384
M=D

//     while (R0 > 0) {

//       R50 = (R16384 + R2);
@16384
D=A
@0
D=D+M
@50
M=D

// read keyboard
@24576
D=M

// If the currently pressed key any, goto a
//       if ()

@37
D;JGT
@22
D;JEQ

//       {

//       R16384 + R50 = #000000;
// 設定成黑色
@50
D=M
A=D
M=-1

@16384

//         R0 = R0 - 1;
@1
D=A
@0
M=M-D

@0
D=M
@10
D;JGE

//       }

//       else {

//         R16384 + R50 = #ffffff;
// 設定成白色
@50
D=M
A=D
M=0

@16384

//         R0 = R0 + 1;
@1
D=A
@0
M=M+D

@16384
D=A
@0
D=D-M
@10
D;JGE

//       }
@10
0;JMP
