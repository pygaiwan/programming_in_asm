# Assembly Exercises and Code

The code provided is primarily generated for Linux systems. Here are the steps for compilation and execution:

### Main Program

If the main is defined as `_start`, use the following commands:

```
yasm -f elf64 -g dwarf2 -l $1.lst $1.asm && ld $1.o -o $1.out && ./$1.out
```

Otherwise use:

```
yasm -f elf64 -g dwarf2 -l $1.lst $1.asm && gcc $1.o -o $1.out && ./$1.out
```

The directory `intro_to_intel_assembly` is storing the exercises and code from Introduction to 64 Bit Intel Assembly Language Programming for Linux by Ray Seyfarth.
