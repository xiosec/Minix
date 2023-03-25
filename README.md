# Minix

[![xiosec - Minix](https://img.shields.io/static/v1?label=xiosec&message=Minix&color=blue&logo=github)](https://github.com/xiosec/Minix)
[![stars - Minix](https://img.shields.io/github/stars/xiosec/Minix?style=social)](https://github.com/xiosec/Minix)
[![forks - Minix](https://img.shields.io/github/forks/xiosec/Minix?style=social)](https://github.com/xiosec/Minix) [![GitHub release](https://img.shields.io/github/release/xiosec/Minix?include_prereleases=&sort=semver)](https://github.com/xiosec/Minix/releases/)
[![License](https://img.shields.io/badge/License-MIT-blue)](#license)
[![issues - Minix](https://img.shields.io/github/issues/xiosec/Minix)](https://github.com/xiosec/Minix/issues)

An example of a small Kernel

The kernel type is `monolithic`

> A monolithic kernel is an operating system architecture where the entire operating system is working in kernel space. The monolithic model differs from other operating system architectures (such as the microkernel architecture) in that it alone defines a high-level virtual interface over computer hardware.

<p align="center">
<img src="resources/images/Kernel.png">
</p>

## Build
```
build.sh 
```
- bin 
    - Minix.bin
- build
- iso
    - boot
        - grub
    - Minix.bin
    - build
        - Minix.iso
```
qemu-system-x86_64 -cdrom iso/build/Minix.iso
```
<p align="center">
<img src="resources/screenshot/boot.jpg">
</p>

## Tree
- drivers
    - keyboard
    - vga
        - console
- kernel
    - io

## License

Released under [MIT](/LICENSE) by [@xiosec](https://github.com/xiosec).
