# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.0.098 Build 20160721";
# mark_description "-O3 -S -c";
	.file "timers.c"
	.text
..TXTST0:
# -- Begin  get_clock
	.text
# mark_begin;
       .align    16,0x90
	.globl get_clock
# --- get_clock()
get_clock:
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_get_clock.1:
..L2:
                                                          #5.1
        subq      $24, %rsp                                     #5.1
	.cfi_def_cfa_offset 32
        xorl      %esi, %esi                                    #7.15
        lea       (%rsp), %rdi                                  #7.15
#       gettimeofday(struct timeval *__restrict__, __timezone_ptr_t)
        call      gettimeofday                                  #7.15
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B1.2:                         # Preds ..B1.1
                                # Execution count [1.00e+00]
        testl     %eax, %eax                                    #8.15
        jl        ..B1.4        # Prob 5%                       #8.15
                                # LOE rbx rbp r12 r13 r14 r15
..B1.3:                         # Preds ..B1.4 ..B1.2
                                # Execution count [1.00e+00]
        pxor      %xmm1, %xmm1                                  #11.27
        pxor      %xmm0, %xmm0                                  #11.13
        cvtsi2sdq 8(%rsp), %xmm1                                #11.27
        cvtsi2sdq (%rsp), %xmm0                                 #11.13
        mulsd     .L_2il0floatpacket.0(%rip), %xmm1             #11.38
        addsd     %xmm1, %xmm0                                  #11.38
        addq      $24, %rsp                                     #11.38
	.cfi_def_cfa_offset 8
        ret                                                     #11.38
	.cfi_def_cfa_offset 32
                                # LOE
..B1.4:                         # Preds ..B1.2
                                # Execution count [5.10e-02]: Infreq
        movl      $.L_2__STRING.0, %edi                         #9.9
        xorl      %eax, %eax                                    #9.9
..___tag_value_get_clock.6:
#       printf(const char *__restrict__, ...)
        call      printf                                        #9.9
..___tag_value_get_clock.7:
        jmp       ..B1.3        # Prob 100%                     #9.9
        .align    16,0x90
	.cfi_endproc
                                # LOE rbx rbp r12 r13 r14 r15
# mark_end;
	.type	get_clock,@function
	.size	get_clock,.-get_clock
	.data
# -- End  get_clock
	.section .rodata, "a"
	.align 8
	.align 8
.L_2il0floatpacket.0:
	.long	0xa0b5ed8d,0x3eb0c6f7
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1953785191
	.long	1868918121
	.long	2036425830
	.long	1920099616
	.word	29295
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,19
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
