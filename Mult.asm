// Multiplies R0 and R1 and stores the result in R2.
// The program must compute the product R0*R1 and store the result in R2. 


@R2
M=0        // R2 = 0 

@R0 
D=M
@LOOP
D;JGT	   // Jump if R0 > 0

@END
0;JMP  	   // Jump to End

(LOOP)
 @R2
 D=M	   // Get R2

 @R1
 D=D+M	   // R2 = R2 + R1

 @R2
 M=D	   // save in R2

 @R0
 D=M-1	   // reduce R0 by 1
 M=D

 @LOOP
 D;JGT	   // Jump to Loop if R0 > 0

(END)
 @END
 0;JMP
