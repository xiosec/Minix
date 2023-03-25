#include <drivers/keyboard/keyboard.h>
#include <drivers/power/power.h>
#include <drivers/vga/console.h>
#include "values.h"
#include "utils.h"
#include "types.h"

void entry(){
    init_vga(WHITE, BLACK);
    
    pr_info("hello worlds");
    shutdown_QEMU_old();

}


