; distance squared = (x2-x1)^2+(y2-y1)^2

	section .data
x1		dq	0xa
x2		dq	0xc
y1		dq	0x6
y2		dq	0x9
x2_sub_x1	dq	0
y2_sub_y1	dq	0
distance_sq	dq	0


	section .text
	global main
main:
	mov 	rax, [x2] 		; move x1
	mov 	rbx, [x1]		; move x2
	sub	rax, rbx		; x2-x1
	imul	rax, rax		; (x2-x1)^2

	mov	rcx, [y1]		; mov y1
	mov 	rdx, [y2]		; mov y2
	sub	rdx, rcx		; y2-y1
	imul	rdx, rdx 		; (y2-y1)^2
	add	rax, rdx		; (x2-x1)^2+(y2-y1)^2	

	mov	[distance_sq], rax
	xor	rax, rax
	xor	rbx, rbx
	xor	rcx, rcx
	xor	rdx, rdx
	ret

