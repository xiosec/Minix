#include <kernel/values.h>
#include <kernel/types.h>
#include <kernel/io/io.h>
#include "keyboard.h"

_byte get_input_keycode()
{
  _byte keycode = 0;
  while((keycode = inb(KEYBOARD_PORT)) != 0){
    if(keycode > 0)
      return keycode;
  }
  return keycode;
}