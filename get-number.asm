section .data
  initMsg db 'Input some number : '
  lenInitMsg equ $-initMsg
  dispMsg db 'You have entered: '
  lenDispMsg equ $-dispMsg

section .bss
  num resb 5      ; variable "num" with size of 5 bytes.

section .text
  global _start

_start:
  ; message prompt
  mov eax, 4
  mov ebx, 1
  mov ecx, initMsg
  mov edx, lenDispMsg
  int 0x80

  ; store input
  mov eax, 3
  mov ebx, 2
  mov ecx, num
  mov edx, 5
  int 0x80

  ; displayMsg prompt
  mov eax, 4
  mov ebx, 1
  mov ecx, dispMsg
  mov edx, lenDispMsg
  int 0x80

  ; result prompt
  mov eax, 4
  mov ebx, 1
  mov ecx, num
  mov edx, 5
  int 0x80

  ; exit
  mov eax, 1
  mov ebx, 0
  int 0x80
