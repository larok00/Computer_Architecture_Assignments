		MOV		R1, #0x0000005A
		MOV		R2, #0x00000045
		
		MOV		R0, #0
		MOV		R3, #3
		
LOOP		AND		R4, R1, R3
		AND		R5, R2, R3
		ADD		R4, R4, R5
		ADD		R0, R0, R4
		RSBMI	R3, R3, #0
		SUBS		R4, R0, R3
		BMI		NOCARRY
		AND		R4, R3, R3, lsr #1
		ADD		R0, R0, R4
NOCARRY	LSLS		R3, R3, #2
		BCC		LOOP
