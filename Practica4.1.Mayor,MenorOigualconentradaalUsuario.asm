; Materia: Lenguajes de Interfaz
; Alumno: Osuna Monarrez Aldahir
; Horario: [Tu horario]
; Docente: Dr. José Luis Medina Jiménez
; Práctica: Mayor, menor o igual con entrada al usuario
; Descripción: Codigo que pide 2 numeros al usuario para mostrar si 
; el primero es mayor, menor o igaul al segundo 

INCLUDE Irvine32.inc

.data
msgNum1 BYTE "Ingresa el primer numero: ", 0
msgNum2 BYTE "Ingresa el segundo numero: ", 0

msgMayor BYTE "El primer numero es mayor", 0
msgMenor BYTE "El primer numero es menor", 0
msgIguales BYTE "Los numeros son iguales", 0

num1 DWORD ?
num2 DWORD ?

.code
main PROC

    ; Pedir el primer numero
    mov edx, OFFSET msgNum1
    call WriteString
    call ReadInt
    mov num1, eax

    ; Pedir el segundo numero
    mov edx, OFFSET msgNum2
    call WriteString
    call ReadInt
    mov num2, eax

    ; Comparar los dos numeros
    mov eax, num1
    mov ebx, num2

    cmp eax, ebx

    jg mayor
    jl menor
    je iguales

iguales:
    mov edx, OFFSET msgIguales
    call WriteString
    jmp fin

mayor:
    mov edx, OFFSET msgMayor
    call WriteString
    jmp fin

menor:
    mov edx, OFFSET msgMenor
    call WriteString

fin:
    call Crlf
    exit

main ENDP
END main
