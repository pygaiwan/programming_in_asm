Some assembly exercises and code. 

The code is mostly generated for Linux and compiled as follow:

```
yasm -f elf64 -g dwarf2 -l $1.lst $1.asm && gcc $1.o -o $1.out  && ./$1.out
```
For the main is defined as `_start`, otherwise:

```
yasm -f elf64 -g dwarf2 -l $1.lst $1.asm && ld $1.o -o $1.out  && ./$1.out 
```

The directory `intro_to_intel_assembly` is storing the exercises and code from Introduction to 64 Bit Intel Assembly Language Programming for Linux by Ray Seyfarth.
