; Materia: Lenguajes de Interfaz
; Alumno: Osuna Monarrez Aldahir
; Horario: 8-9
; Docente: Dr. José Luis Medina Jiménez
; Práctica: Comparacion y pruebas
; Descripción: Programa que muestra como las intrucciones cmp, add y test afectan las
; banderas de el cpu (zero, sing, carry y overflow)

INCLUDE Irvine32.inc

.code
main PROC

; CONDICION 1: ZERO FLAGS
   mov EBX, 1
   cmp EBX, 1
   call dumpRegs

   mov EAX, 01h
   cmp EAX, EBX 
   call dumpRegs 

   mov cl, 11111111b
   cmp cl, cl
   call dumpRegs 

   ; CONDICION 2: SING FLAG
   mov EAX, 0
   mov EBX, 0

   mov al, -5
   mov bl, 1
   cmp al, bl 
   call dumpRegs 

   ; CONDICION 3: CARRY FLAGS 
   mov EAX, 0
   mov EBX, 0

   mov al, 255
   add al, 1
   call dumpRegs 

   ; CONDICION 4: OVERFLOW FLAG 
   mov EAX, 0
   mov EBX, 0

   mov al, -128
   mov bl, 1
   cmp al, bl
   call dumpRegs

   ;CASO 5: TEST
   mov EAX, 0
   mov EAX, 5; 00000101b
   test EAX, 1
   call dumpRegs 
   
   ;00000101b
   ;-
   ;00000001b
   ;------------
   ;00000001b

   mov eax, 0
   mov al, 10000000b
   test al, al
   call dumpRegs

main ENDP 

END main 
