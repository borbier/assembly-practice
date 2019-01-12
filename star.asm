SYS_EXIT equ 1
SYS_WRITE equ 4
STDOUT equ 1

NUMBER equ 9

section .text
  stars times 9 db '*'

section .text
  global _start

_start:
  mov eax, SYS_WRITE
  mov ebx, STDOUT
  mov ecx, stars
  mov edx, NUMBER
  int 0x80

  mov eax, SYS_EXIT
  int 0x80
