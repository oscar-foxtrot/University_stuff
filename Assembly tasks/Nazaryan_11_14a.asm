INCLUDE SETTINGS.INC
INCLUDE IO2020.INC
.CONST
M=10
N=10
.STACK 4096
.DATA
A DB M DUP (?)
B DB N DUP (?)
K DB ?
.CODE
F PROC
PUSH ECX
MOV EAX,0
MOV EDX,[ESI+EBX]
L:
MOV EDI, ECX
DEC EDI
CMP EDX,[ESI+EDI]
JNE CONT
INC EAX
CONT: LOOP L
POP ECX
RET
F ENDP
START:
MOV ECX,M
MOV EAX,0
INA:
ININT EDX
MOV A[EAX], DL ;REDACTED FROM "MOV A[EAX], EDX". Cause - error A2070: invalid instruction operands
INC EAX
LOOP INA
MOV ECX,N
MOV EAX,0
INB:
ININT EDX
MOV B[EAX], DL ;REDACTED FROM "MOV B[EAX],EDX". Cause - error A2070: invalid instruction operands
INC EAX
LOOP INB
ININT K
LEA ESI, B[0]
MOV ECX,N
MOV EBX,0
MOV BL, K
DEC EBX
CALL F
LEA ESI, A[0]
MOV ECX,M
MOV BL,AL
MOV EAX,0
CALL F
OUTU EAX
EXIT
END START