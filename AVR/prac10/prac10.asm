.include"m32def.inc"

LDI R28,0X90
LDI R29,0X00

LDI R16,0X00;
LDI R18,0X00

LDI R17,0X01;
LDI R24,0X14

REPEAT: MOV R21,R16
		ADD R16,R17
		ADC R21,R18
		MOV R17,R21
		ST Y+,R17
		DEC R24
	 	BRNE REPEAT

END: JMP END
