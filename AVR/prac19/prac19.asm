.include"m32def.inc"
LDI R16,0xFF
OUT DDRC,R16
SBI DDRD,0 
SBI DDRD,1 
SBI DDRD,2 

LDI R17,0X38
CALL COMM
LDI R17,0X0E
CALL COMM

LDI R17,0XC9
CALL COMM


LDI R17,'H'
CALL DATA
LDI R17,'I'
CALL DATA
ABC:  JMP ABC
COMM: OUT PORTC,R17
      CBI PORTD,0 
      CBI PORTD,1
 	  SBI PORTD,2
 	  CALL DELAY
      CBI PORTD,2 
      RET
DATA: OUT PORTC,R17
 	  SBI PORTD,0 
 	  CBI PORTD,1
 	  SBI PORTD,2
 	  CALL DELAY
 	  CBI PORTD,2
   	  RET
DELAY: LDI R20,0X03
LOOP2: LDI R21,40
LOOP1: DEC R21
	   BRNE LOOP1
	   DEC R20
	   BRNE LOOP2
	   RET