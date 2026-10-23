; Materia: Lenguajes de Interfaz
; Alumno: Osuna Monarrez Aldahir
; Horario: 8-9
; Docente: Dr. José Luis Medina Jiménez
; Práctica: Saltos
; Descripción: Compara dos numeros en este caso 10/10 usando cmp con un salto 
; condicional je para imprimir si son iguales o si los valores no son iguales
INCLUDE Irvine32.inc

.data
msgIguales BYTE "Los valores son iguales", 0
msgDiferente BYTE "Los valores son diferentes", 0

.code
main PROC
  mov eax, 10
  mov ebx, 10

  cmp eax, ebx

  je iguales

  mov edx, OFFSET msgDiferentes
  call WriteString


  jmp fin

  iguales: 
  mov edx, OFFSET msgIguales
  call WriteString

fin:
call crlf
exit 
  main ENDP 

END main 
