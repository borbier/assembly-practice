section .data
  Msg db 'Hello Assembly!'
  lenMsg equ $-Msg

section .text
  global _start     ; code segment

_start:
  mov eax, 4        ; sys_write
  mov ebx, 1        ; stdout
  mov ecx, Msg      ; message
  mov edx, lenMsg   ; message's length
  int 0x80          ; call kernel

  mov eax, 1        ; sys_exit
  mov ebx, 0
  int 80h
