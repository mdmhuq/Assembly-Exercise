section .data
a       dd  0x6f1c
b       dd  0xa742
c       dd  0x3bed
sum_ab  dq  0
sub_ab  dq  0
sum_ac  dq  0
sub_ac  dq  0

section .text
global  main

main:
	movsxd rax, dword[a]
	add    eax, dword[b]
	mov    qword[sum_ab], rax
	xor    rax, rax

	movsxd rax, dword[a]
	sub    eax, dword[b]
	mov    qword[sub_ab], rax
	xor    rax, rax

	movsxd rax, dword[a]
	add    eax, dword[c]
	mov    qword[sum_ac], rax
	xor    rax, rax

	movsxd rax, dword[a]
	sub    eax, dword[c]
	mov    qword[sub_ac], rax
	xor    rax, rax
