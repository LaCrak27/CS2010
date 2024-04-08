waitin:lds r0, 0x81
clc
ror r0
brcs pressed
jmp waitin
pressed:ldi r1, 0xca
sts 0x82, r1
sts 0x83, r1
stop