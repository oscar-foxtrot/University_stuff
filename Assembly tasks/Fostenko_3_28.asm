MOV EAX, T
XOR EDX, EDX
MOV ECX, 3600
DIV ECX
MOV H, AL
MOV AX, DX
MOV DL, 60
DIV DL
MOV M, AL
MOV S, AH