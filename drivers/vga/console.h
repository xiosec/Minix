#ifndef VGA_H
#define VGA_H

#define VGA_ADDRESS 0xB8000
#define BUFSIZE 2200

#include <kernel/types.h>

uint16* vga_buffer;
extern uint32 vga_index;
extern void clear_screen(uint8, uint8);
extern void print_new_line();
extern void print_char(char);
extern void print_string(char *);
extern void print_color_string(char *, uint8, uint8);
extern void print_int(int);
extern void gotoxy(uint16, uint16);
extern void init_vga(uint8 fore_color, uint8 back_color);
extern void print(char *str, uint8 fore_color, uint8 back_color);

extern void pr_alert(char *str);
extern void pr_info(char *str);
extern void pr_err(char *str);

#endif

