        section .data
a       dd      1,2,3,4,5       
b       dd      1,2,3,4,5
sum     dd      0

        section .text
        global main
main:
        lea     rsi, [a]                ; load address of array a into rsi
        lea     rdi, [b]                ; load address of array b into rdi     
        mov     rcx, 0                  ; set counter rcx to 0


product:
        mov     eax, [rsi+rcx*4]        
        mov     ebx, [rdi+rcx*4]
        mov     edx, [sum]             ; edx will hold temporary sum value
        imul    eax, ebx               ; multiply element of both array
        add     edx, eax               ; add to sum
        mov     [sum], edx             ; load edx value into sum

        inc     rcx                    ; increment rcx
        cmp     rcx, 5                 ; check if rcx = 5
        jne     product
        
        ret
