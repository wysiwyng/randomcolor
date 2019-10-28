# Random Color in WebAssembly

The simplest way to run this code is to compile it from source and run it on [webassembly.studio](https://webassembly.studio/).

## The C code
```C
#define WASM_EXPORT __attribute__((visibility("default")))
#include  <stdint.h>
#include  <stdlib.h>

/* random rgba */
WASM_EXPORT
uint32_t randomcolor(uint32_t seed)  {
	srand(seed);
	return  0xff  |  /* a */
	((rand()  %  0x100)  <<  24)  |  /* r */
	((rand()  %  0x100)  <<  16)  |  /* g */
	((rand()  %  0x100)  <<  8);  /* b */
}
```

## Calling the function
Extend the `main.js` file with these lines:
```Javascript
const color =  new  Uint32Array(1);
const seed =  Math.abs(Math.round(Math.random()  *  1000))
color[0]  = instance.exports.randomcolor(seed);
const hexColor =  '#'  + color[0].toString(16);
document.body.style.backgroundColor = hexColor;
document.getElementById("container").textContent = hexColor;
```