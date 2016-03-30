  .cpu cortex-m4
  .text
  .syntax unified
  .thumb

  .global helloWorldAsm
  .type   helloWorldAsm,%function
  .func   helloWorldAsm
  .align  2

helloWorldAsm:
  push    {r4-r7, lr}           // save r4-r7 to the stack
  add     r7, sp, #12           // update the frame pointer
  push    {r8, r10, r11, r14}   // save upper registers
  // vstmdb  sp!, {d8-d15}      // Save any VFP or NEON (S16-S31 / Q4-Q7) if req'd
  // sub sp, sp, #SOMESIZE      // Allocate memory on the stack if req'd


  // INSERT PROGRAM HERE
  ldr     r0, =0xDEADBEEF


  // sub sp, sp, #SOMESIZE      // Remove memory on the stack if req'd
  //  vldmia  sp!, {d8-d15}     // Restore any VFP or NEON registers if req'd
  pop     {r8, r10, r11, r14}   // restore upper registers
  pop     {r4-r7, pc}           // restore R4-R7 anr branch back out

  .size   helloWorldAsm,.-helloWorldAsm
  .endfunc
  .end