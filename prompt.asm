.data
prompt: .asciiz "Ingrese un numero\n"  # prompt string
msg:    .asciiz "La suma es "          # msg string

.text
.globl main
main:
  li        $v0, 4             # syscall print_string code
  la        $a0, prompt        # cargo la direccion del string en a0
  syscall                      # imprimo el prompt
  li        $v0, 5             # syscall read_int code
  syscall                      # leo el primer numero
  move      $t1, $v0           # muevo el resultado de la syscall a t1
  li        $v0, 4             # syscall print_string code
  la        $a0, prompt        # cargo la direccion del string en a0
  syscall                      # imprimo el prompt
  li        $v0, 5             # syscall read_int code
  syscall                      # leo el segundo numero
  move      $t2, $v0           # muevo el resultado de la syscall a t2
  add       $t3, $t1, $t2      # sumo los dos números y pongo el resultado en t3
  li        $v0, 4             # syscall print_string code
  la        $a0, msg           # cargo la direccion del string en a0
  syscall                      # imprimo el mensaje
  li        $v0, 1             # syscall print_int code
  move      $a0, $t3           # muevo el resultado ($t3) a $a0 para la syscall
  syscall                      # print_int syscall
  li        $v0, 10            # syscall exit code
  syscall                      # exit syscall
