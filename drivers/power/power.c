#include <kernel/io/io.h>

void shutdown_QEMU_old(){
    outw(0xB004, 0x2000);
}

void shutdown_QEMU_newer(){
    outw(0x604, 0x2000);
}

void shutdown_Virtualbox(){
    outw(0x4004, 0x3400);
}
