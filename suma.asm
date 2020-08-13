.data
numbers: .word 56, 44          # reservo dos words y le doy valores

.text
.globl main
main:
  la        $t0, numbers       # guardo en $t0 la direccion de numbers
  lw        $t1, 0($t0)        # guardo en $t1 el 6
  lw        $t2, 4($t0)        # guardo en $t2 el 4
  add       $t1, $t1, $t2      # sumo $t1 = $t1 + $t2
  li        $v0, 1             # syscall print_int code
  move      $a0, $t1           # muevo el resultado ($t1) a $a0 para la syscall
  syscall                      # print_int syscall
  li        $v0, 10            # syscall exit code
  syscall                      # exit program
