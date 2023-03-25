#!/bin/sh

echo "[@] Create directories to build"
mkdir -p build/kernel/io
mkdir -p build/drivers/keyboard
mkdir -p build/drivers/vga
mkdir -p build/drivers/power
mkdir bin
echo "[*] Directories created successfully"

echo "[@] Build a bootloader"
#assemble boot.s file
as --32 boot.s -o build/boot.o
echo "[*] build successfully"

echo "[@] Building the project"

compile()
{
   gcc -I "$PWD" -m32 -c "$1" -o "$2" -std=gnu99 -ffreestanding -O1 -Wall -Wextra        
}
#compile files
compile "kernel/kernel.c" "build/kernel.o"
compile "kernel/utils.c" "build/kernel/utils.o"
compile "kernel/io/io.c" "build/kernel/io/io.o"
compile "drivers/keyboard/keyboard.c" "build/drivers/keyboard/keyboard.o"
compile "drivers/vga/console.c" "build/drivers/vga/console.o"
compile "drivers/vga/gui.c" "build/drivers/vga/gui.o"
compile "drivers/power/power.c" "build/drivers/power/power.o"

echo "[*] build successfully"

echo "[@] linking files"
#linking files
ld -m elf_i386 -T linker.ld build/boot.o \
        build/kernel.o \
        build/kernel/utils.o \
        build/kernel/io/io.o \
        build/drivers/keyboard/keyboard.o \
        build/drivers/vga/console.o \
        build/drivers/vga/gui.o \
        build/drivers/power/power.o \
        -o bin/Minix.bin -nostdlib

echo "[*] Link successfully"

#check bin file is x86 multiboot file or not
grub-file --is-x86-multiboot ./bin/Minix.bin

echo "[@] building the iso file"
#building the iso file
mkdir -p iso/boot/grub
mkdir -p iso/build

cp bin/Minix.bin iso/boot/Minix.bin
cp grub.cfg iso/boot/grub/grub.cfg
grub-mkrescue -o iso/build/Minix.iso iso
