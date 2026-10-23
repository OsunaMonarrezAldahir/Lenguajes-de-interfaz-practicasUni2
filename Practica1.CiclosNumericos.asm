; Materia: Lenguajes de Interfaz
; Alumno: Osuna Monarrez Aldahir 
; Horario: 8-9
; Docente: José Luis Medina Jiménez
; Práctica: Captura y despliegue de mensajes
; Descripción: Imprime el mensaje "Hola, mundo" 5 veces

INCLUDE Irvine32.inc

.data
mensaje BYTE "Hola, mundo: ", 0

.code
main PROC
 mov ecx, 5

 ciclo:
  mov edx, OFFSET mensaje
   call writeString
   call crlf 
   loop ciclo 
   exit
main ENDP 

END main 
