# Assembly Exercises and Code

The code provided is primarily generated for Linux systems. Here are the steps for compilation and execution:

### Main Program

If the main is defined as `_start`, use the following commands:

```bash
yasm -f elf64 -g dwarf2 -l $1.lst $1.asm && ld $1.o -o $1.out && ./$1.out
```

Otherwise use:

```bash
yasm -f elf64 -g dwarf2 -l $1.lst $1.asm && gcc $1.o -o $1.out && ./$1.out
```
