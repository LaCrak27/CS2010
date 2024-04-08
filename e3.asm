ldi r5, 22
ldi r6, 10
call mult
sts 0x04, r7
stop

mult:ldi r0, 0
add r0, r5
mult_loop: add r7, r6
subi r0, 0x01
cpi r0, 0
breq mult_end
jmp mult_loop
mult_end: ret