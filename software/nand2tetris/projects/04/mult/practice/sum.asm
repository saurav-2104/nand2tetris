// Add 1 + 2 + .... n where n is stored in R0

// Algorithm
// i = 1
// sum = 0
// while i <= n {
// 	sum  = sum + i
// 	i = i + 1
// }

	@i
	M = 1

	@sum
	M = 0

(LOOP)
	@i
	D = M
	@R0
	D = D - M
	@END
	D;JGT
	@i
	D = M
	@sum
	M = D+M
	@i
	M = M + 1
	@LOOP
	0;JMP

(END)
	@END
	0;JMP
