		MOV		R1, #0x12
		ADD		R1, R1, #0x2000
		ADD		R1, R1, #0x010000
		ADD		R1, R1, #0x12000000
		MOV		R2, #0x12
		ADD		R2, R2, #0x1200
		ADD		R2, R2, #0x120000
		ADD		R2, R2, #0x12000000
		
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
