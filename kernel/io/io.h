#ifndef IO_H
#define IO_H

#include <kernel/types.h>

extern uint8 inb(uint16 port);
extern void outb(uint16, uint8);
extern void outw(int16, int32);
extern void sleep(uint32);

#endif