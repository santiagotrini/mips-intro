.data
hello: .asciiz "Hello world\n"    # el string que voy a imprimir

.text
.globl main
main:
  li        $v0, 4                # syscall print_string code
  la        $a0, hello            # pongo en $a0 la direccion de hello
  syscall                         # print_string syscall
  li        $v0, 10               # syscall exit code
  syscall                         # exit syscall
