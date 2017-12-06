# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.0.098 Build 20160721";
# mark_description "-O3 -S -c";
	.file "mp0_b.c"
	.text
..TXTST0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main(int, char **)
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #13.1
        pushq     %rbp                                          #13.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #13.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-128, %rsp                                   #13.1
        pushq     %r12                                          #13.1
        pushq     %r13                                          #13.1
        pushq     %r14                                          #13.1
        pushq     %r15                                          #13.1
        pushq     %rbx                                          #13.1
        subq      $88, %rsp                                     #13.1
        xorl      %esi, %esi                                    #13.1
        movl      $3, %edi                                      #13.1
        call      __intel_new_feature_proc_init                 #13.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13
..B1.114:                       # Preds ..B1.1
                                # Execution count [1.00e+00]
        stmxcsr   (%rsp)                                        #13.1
        xorb      %bl, %bl                                      #14.5
        orl       $32832, (%rsp)                                #13.1
        ldmxcsr   (%rsp)                                        #13.1
        pxor      %xmm0, %xmm0                                  #14.5
        movsd     %xmm0, 40(%rsp)                               #14.5[spill]
        movsd     %xmm0, 8(%rsp)                                #14.5[spill]
                                # LOE r12 r13 bl
..B1.2:                         # Preds ..B1.4 ..B1.114
                                # Execution count [9.31e+00]
        xorl      %eax, %eax                                    #14.5
..___tag_value_main.11:
#       get_clock()
        call      get_clock                                     #14.5
..___tag_value_main.12:
                                # LOE r12 r13 bl xmm0
..B1.115:                       # Preds ..B1.2
                                # Execution count [9.31e+00]
        movsd     %xmm0, (%rsp)                                 #14.5[spill]
                                # LOE r12 r13 bl
..B1.3:                         # Preds ..B1.115
                                # Execution count [9.24e+00]
        xorl      %eax, %eax                                    #14.5
..___tag_value_main.13:
#       get_clock()
        call      get_clock                                     #14.5
..___tag_value_main.14:
                                # LOE r12 r13 bl xmm0
..B1.116:                       # Preds ..B1.3
                                # Execution count [9.24e+00]
        movaps    %xmm0, %xmm1                                  #14.5
                                # LOE r12 r13 bl xmm1
..B1.4:                         # Preds ..B1.116
                                # Execution count [9.31e+00]
        movsd     8(%rsp), %xmm0                                #14.5[spill]
        incb      %bl                                           #14.5
        subsd     (%rsp), %xmm1                                 #14.5[spill]
        addsd     %xmm1, %xmm0                                  #14.5
        movsd     %xmm0, 8(%rsp)                                #14.5[spill]
        cmpb      $10, %bl                                      #14.5
        jb        ..B1.2        # Prob 89%                      #14.5
                                # LOE r12 r13 bl xmm0
..B1.5:                         # Preds ..B1.4
                                # Execution count [9.24e-01]
        movl      $.L_2__STRING.0, %edi                         #14.5
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #14.5
        movl      $1, %eax                                      #14.5
..___tag_value_main.15:
#       printf(const char *__restrict__, ...)
        call      printf                                        #14.5
..___tag_value_main.16:
                                # LOE r12 r13
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        movl      $4000000, %edi                                #15.5
#       malloc(size_t)
        call      malloc                                        #15.5
                                # LOE rax r12 r13
..B1.117:                       # Preds ..B1.6
                                # Execution count [1.00e+00]
        movq      %rax, %r15                                    #15.5
                                # LOE r12 r13 r15
..B1.7:                         # Preds ..B1.117
                                # Execution count [1.00e+00]
        movl      $4000000, %edi                                #15.5
#       malloc(size_t)
        call      malloc                                        #15.5
                                # LOE rax r12 r13 r15
..B1.118:                       # Preds ..B1.7
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #15.5
                                # LOE rbx r12 r13 r15
..B1.8:                         # Preds ..B1.118
                                # Execution count [1.00e+00]
        movl      $4000000, %edi                                #15.5
#       malloc(size_t)
        call      malloc                                        #15.5
                                # LOE rax rbx r12 r13 r15
..B1.119:                       # Preds ..B1.8
                                # Execution count [1.00e+00]
        movq      %rax, %r14                                    #15.5
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.119
                                # Execution count [9.38e-01]
        xorl      %eax, %eax                                    #15.5
        movq      %rax, %r13                                    #15.5
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.12 ..B1.9
                                # Execution count [1.00e+06]
#       rand(void)
        call      rand                                          #15.5
                                # LOE rbx r12 r13 r14 r15 eax
..B1.120:                       # Preds ..B1.10
                                # Execution count [1.00e+06]
        movl      %eax, %r8d                                    #15.5
                                # LOE rbx r12 r13 r14 r15 r8d
..B1.11:                        # Preds ..B1.120
                                # Execution count [1.00e+06]
        movl      $351843721, %eax                              #15.5
        movl      %r8d, %ecx                                    #15.5
        imull     %r8d                                          #15.5
        sarl      $31, %ecx                                     #15.5
        sarl      $13, %edx                                     #15.5
        subl      %ecx, %edx                                    #15.5
        imull     $-100000, %edx, %esi                          #15.5
        addl      %esi, %r8d                                    #15.5
        movl      %r8d, (%r15,%r13,4)                           #15.5
#       rand(void)
        call      rand                                          #15.5
                                # LOE rbx r12 r13 r14 r15 eax
..B1.121:                       # Preds ..B1.11
                                # Execution count [1.00e+06]
        movl      %eax, %r8d                                    #15.5
                                # LOE rbx r12 r13 r14 r15 r8d
..B1.12:                        # Preds ..B1.121
                                # Execution count [1.00e+06]
        movl      $351843721, %eax                              #15.5
        movl      %r8d, %ecx                                    #15.5
        imull     %r8d                                          #15.5
        sarl      $31, %ecx                                     #15.5
        sarl      $13, %edx                                     #15.5
        subl      %ecx, %edx                                    #15.5
        imull     $-100000, %edx, %esi                          #15.5
        addl      %esi, %r8d                                    #15.5
        movl      %r8d, (%rbx,%r13,4)                           #15.5
        incq      %r13                                          #15.5
        cmpq      $1000000, %r13                                #15.5
        jb        ..B1.10       # Prob 99%                      #15.5
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
                                # Execution count [9.92e-01]
        movq      %r14, %r8                                     #15.5
        xorb      %sil, %sil                                    #15.5
        andq      $15, %r8                                      #15.5
        movb      %sil, %r12b                                   #15.5
        movl      %r8d, %eax                                    #15.5
        pxor      %xmm0, %xmm0                                  #15.5
        movl      %eax, %edx                                    #15.5
        movl      %eax, %ecx                                    #15.5
        negl      %edx                                          #15.5
        andl      $3, %ecx                                      #15.5
        addl      $16, %edx                                     #15.5
        movl      %eax, %r13d                                   #15.5
        shrl      $2, %edx                                      #15.5
        movsd     %xmm0, 24(%rsp)                               #15.5[spill]
        movq      %r8, (%rsp)                                   #15.5[spill]
        movq      %r14, 8(%rsp)                                 #15.5[spill]
        movl      %edx, %r14d                                   #15.5
        movq      %r15, 16(%rsp)                                #15.5[spill]
        movl      %ecx, %r15d                                   #15.5
                                # LOE rbx r13d r14d r15d r12b
..B1.14:                        # Preds ..B1.33 ..B1.13
                                # Execution count [9.24e+00]
        xorl      %eax, %eax                                    #15.5
..___tag_value_main.17:
#       get_clock()
        call      get_clock                                     #15.5
..___tag_value_main.18:
                                # LOE rbx r13d r14d r15d r12b xmm0
..B1.122:                       # Preds ..B1.14
                                # Execution count [9.24e+00]
        movsd     %xmm0, 32(%rsp)                               #15.5[spill]
                                # LOE rbx r13d r14d r15d r12b
..B1.15:                        # Preds ..B1.122
                                # Execution count [9.00e+00]
        movl      %r13d, %r9d                                   #15.5
        testl     %r13d, %r13d                                  #15.5
        je        ..B1.20       # Prob 50%                      #15.5
                                # LOE rbx r9 r13d r14d r15d r12b
..B1.16:                        # Preds ..B1.15
                                # Execution count [9.00e+00]
        testl     %r15d, %r15d                                  #15.5
        jne       ..B1.107      # Prob 10%                      #15.5
                                # LOE rbx r13d r14d r15d r12b
..B1.17:                        # Preds ..B1.16
                                # Execution count [8.00e+00]
        movl      %r14d, %edx                                   #15.5
        movl      %r14d, %r9d                                   #15.5
        movq      8(%rsp), %r11                                 #15.5[spill]
        xorl      %r8d, %r8d                                    #15.5
        movq      16(%rsp), %rax                                #15.5[spill]
                                # LOE rax rdx rbx r8 r9 r11 r13d r14d r15d r12b
..B1.18:                        # Preds ..B1.18 ..B1.17
                                # Execution count [9.24e+06]
        movl      (%rax,%r8,4), %r10d                           #15.5
        addl      (%rbx,%r8,4), %r10d                           #15.5
        movl      %r10d, (%r11,%r8,4)                           #15.5
        incq      %r8                                           #15.5
        cmpq      %rdx, %r8                                     #15.5
        jb        ..B1.18       # Prob 99%                      #15.5
        jmp       ..B1.21       # Prob 100%                     #15.5
                                # LOE rax rdx rbx r8 r9 r11 r13d r14d r15d r12b
..B1.20:                        # Preds ..B1.15
                                # Execution count [4.50e+00]
        movq      (%rsp), %rdx                                  #15.5[spill]
                                # LOE rdx rbx r9 r13d r14d r15d r12b
..B1.21:                        # Preds ..B1.18 ..B1.20
                                # Execution count [0.00e+00]
        movl      %r9d, %r8d                                    #15.5
        movl      $1000000, %eax                                #15.5
        negl      %r8d                                          #15.5
        andl      $3, %r8d                                      #15.5
        subq      %r8, %rax                                     #15.5
        lea       (%rbx,%r9,4), %r10                            #15.5
        testq     $15, %r10                                     #15.5
        je        ..B1.25       # Prob 60%                      #15.5
                                # LOE rax rdx rbx r13d r14d r15d r12b
..B1.22:                        # Preds ..B1.21
                                # Execution count [8.00e+00]
        movq      8(%rsp), %r8                                  #[spill]
        movq      16(%rsp), %r9                                 #[spill]
                                # LOE rax rdx rbx r8 r9 r13d r14d r15d r12b
..B1.23:                        # Preds ..B1.23 ..B1.22
                                # Execution count [9.24e+06]
        movdqu    (%r9,%rdx,4), %xmm1                           #15.5
        movdqu    (%rbx,%rdx,4), %xmm0                          #15.5
        paddd     %xmm0, %xmm1                                  #15.5
        movntdq   %xmm1, (%r8,%rdx,4)                           #15.5
        addq      $4, %rdx                                      #15.5
        cmpq      %rax, %rdx                                    #15.5
        jb        ..B1.23       # Prob 99%                      #15.5
        jmp       ..B1.27       # Prob 100%                     #15.5
                                # LOE rax rdx rbx r8 r9 r13d r14d r15d r12b
..B1.25:                        # Preds ..B1.21
                                # Execution count [8.00e+00]
        movq      8(%rsp), %r8                                  #[spill]
        movq      16(%rsp), %r9                                 #[spill]
                                # LOE rax rdx rbx r8 r9 r13d r14d r15d r12b
..B1.26:                        # Preds ..B1.26 ..B1.25
                                # Execution count [9.24e+06]
        movdqu    (%r9,%rdx,4), %xmm0                           #15.5
        paddd     (%rbx,%rdx,4), %xmm0                          #15.5
        movntdq   %xmm0, (%r8,%rdx,4)                           #15.5
        addq      $4, %rdx                                      #15.5
        cmpq      %rax, %rdx                                    #15.5
        jb        ..B1.26       # Prob 99%                      #15.5
                                # LOE rax rdx rbx r8 r9 r13d r14d r15d r12b
..B1.27:                        # Preds ..B1.23 ..B1.26
                                # Execution count [0.00e+00]
        mfence                                                  #15.5
                                # LOE rax rbx r13d r14d r15d r12b
..B1.28:                        # Preds ..B1.27 ..B1.107
                                # Execution count [9.00e+00]
        cmpq      $1000000, %rax                                #15.5
        jae       ..B1.32       # Prob 0%                       #15.5
                                # LOE rax rbx r13d r14d r15d r12b
..B1.29:                        # Preds ..B1.28
                                # Execution count [8.00e+00]
        movq      8(%rsp), %r9                                  #[spill]
        movq      16(%rsp), %r10                                #[spill]
                                # LOE rax rbx r9 r10 r13d r14d r15d r12b
..B1.30:                        # Preds ..B1.30 ..B1.29
                                # Execution count [9.24e+06]
        movl      (%r10,%rax,4), %r8d                           #15.5
        addl      (%rbx,%rax,4), %r8d                           #15.5
        movl      %r8d, (%r9,%rax,4)                            #15.5
        incq      %rax                                          #15.5
        cmpq      $1000000, %rax                                #15.5
        jb        ..B1.30       # Prob 99%                      #15.5
                                # LOE rax rbx r9 r10 r13d r14d r15d r12b
..B1.32:                        # Preds ..B1.30 ..B1.28
                                # Execution count [9.16e+00]
        xorl      %eax, %eax                                    #15.5
..___tag_value_main.19:
#       get_clock()
        call      get_clock                                     #15.5
..___tag_value_main.20:
                                # LOE rbx r13d r14d r15d r12b xmm0
..B1.123:                       # Preds ..B1.32
                                # Execution count [9.16e+00]
        movaps    %xmm0, %xmm1                                  #15.5
                                # LOE rbx r13d r14d r15d r12b xmm1
..B1.33:                        # Preds ..B1.123
                                # Execution count [9.24e+00]
        movsd     24(%rsp), %xmm0                               #15.5[spill]
        incb      %r12b                                         #15.5
        subsd     32(%rsp), %xmm1                               #15.5[spill]
        addsd     %xmm1, %xmm0                                  #15.5
        movsd     %xmm0, 24(%rsp)                               #15.5[spill]
        cmpb      $10, %r12b                                    #15.5
        jb        ..B1.14       # Prob 89%                      #15.5
                                # LOE rbx r13d r14d r15d r12b
..B1.34:                        # Preds ..B1.33
                                # Execution count [9.16e-01]
        movq      16(%rsp), %r15                                #[spill]
        movq      %r15, %rdi                                    #15.5
        movq      8(%rsp), %r14                                 #[spill]
#       free(void *)
        call      free                                          #15.5
                                # LOE rbx r12 r13 r14
..B1.35:                        # Preds ..B1.34
                                # Execution count [9.16e-01]
        movq      %rbx, %rdi                                    #15.5
#       free(void *)
        call      free                                          #15.5
                                # LOE r12 r13 r14
..B1.36:                        # Preds ..B1.35
                                # Execution count [9.16e-01]
        movq      %r14, %rdi                                    #15.5
#       free(void *)
        call      free                                          #15.5
                                # LOE r12 r13
..B1.37:                        # Preds ..B1.36
                                # Execution count [9.16e-01]
        movsd     24(%rsp), %xmm0                               #15.5[spill]
        movl      $.L_2__STRING.1, %edi                         #15.5
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #15.5
        movl      $1, %eax                                      #15.5
..___tag_value_main.21:
#       printf(const char *__restrict__, ...)
        call      printf                                        #15.5
..___tag_value_main.22:
                                # LOE r12 r13
..B1.38:                        # Preds ..B1.37
                                # Execution count [1.00e+00]
        movl      $4194304, %edi                                #16.5
#       malloc(size_t)
        call      malloc                                        #16.5
                                # LOE rax r12 r13
..B1.124:                       # Preds ..B1.38
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #16.5
                                # LOE rbx r12 r13
..B1.39:                        # Preds ..B1.124
                                # Execution count [1.00e+00]
        xorb      %r14b, %r14b                                  #16.5
        pxor      %xmm0, %xmm0                                  #16.5
        movsd     %xmm0, 8(%rsp)                                #16.5[spill]
        movdqu    .L_2il0floatpacket.1(%rip), %xmm0             #16.5
                                # LOE rbx r12 r13 r14b
..B1.40:                        # Preds ..B1.61 ..B1.39
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #16.5
..___tag_value_main.23:
#       get_clock()
        call      get_clock                                     #16.5
..___tag_value_main.24:
                                # LOE rbx r12 r13 r14b xmm0
..B1.125:                       # Preds ..B1.40
                                # Execution count [1.00e+01]
        movsd     %xmm0, (%rsp)                                 #16.5[spill]
                                # LOE rbx r12 r13 r14b
..B1.41:                        # Preds ..B1.125
                                # Execution count [1.00e+01]
        xorl      %esi, %esi                                    #16.5
        movdqu    .L_2il0floatpacket.1(%rip), %xmm0             #16.5
        xorl      %ecx, %ecx                                    #16.5
                                # LOE rbx r12 r13 ecx esi r14b xmm0
..B1.42:                        # Preds ..B1.59 ..B1.41
                                # Execution count [1.02e+04]
        movslq    %ecx, %rcx                                    #16.5
        lea       (%rbx,%rcx,4), %r10                           #16.5
        movq      %r10, %r8                                     #16.5
        andq      $15, %r8                                      #16.5
        testl     %r8d, %r8d                                    #16.5
        je        ..B1.47       # Prob 50%                      #16.5
                                # LOE rbx r10 r12 r13 ecx esi r8d r14b xmm0
..B1.43:                        # Preds ..B1.42
                                # Execution count [1.02e+04]
        testl     $3, %r8d                                      #16.5
        jne       ..B1.108      # Prob 10%                      #16.5
                                # LOE rbx r10 r12 r13 ecx esi r8d r14b xmm0
..B1.44:                        # Preds ..B1.43
                                # Execution count [1.02e+04]
        negl      %r8d                                          #16.5
        xorl      %eax, %eax                                    #16.5
        addl      $16, %r8d                                     #16.5
        shrl      $2, %r8d                                      #16.5
        movl      %r8d, %r9d                                    #16.5
                                # LOE rax rbx r9 r10 r12 r13 ecx esi r8d r14b xmm0
..B1.45:                        # Preds ..B1.45 ..B1.44
                                # Execution count [1.05e+07]
        movl      $1000, (%r10,%rax,4)                          #16.5
        incq      %rax                                          #16.5
        cmpq      %r9, %rax                                     #16.5
        jb        ..B1.45       # Prob 99%                      #16.5
        jmp       ..B1.48       # Prob 100%                     #16.5
                                # LOE rax rbx r9 r10 r12 r13 ecx esi r8d r14b xmm0
..B1.47:                        # Preds ..B1.42
                                # Execution count [5.12e+03]
        xorl      %r9d, %r9d                                    #16.5
                                # LOE rbx r9 r10 r12 r13 ecx esi r8d r14b xmm0
..B1.48:                        # Preds ..B1.45 ..B1.47
                                # Execution count [1.02e+04]
        negl      %r8d                                          #16.5
        andl      $15, %r8d                                     #16.5
        negl      %r8d                                          #16.5
        lea       1024(%r8), %edx                               #16.5
        movl      %edx, %eax                                    #16.5
                                # LOE rax rbx r9 r10 r12 r13 edx ecx esi r8d r14b xmm0
..B1.49:                        # Preds ..B1.49 ..B1.48
                                # Execution count [1.05e+07]
        movdqu    %xmm0, (%r10,%r9,4)                           #16.5
        movdqu    %xmm0, 16(%r10,%r9,4)                         #16.5
        movdqu    %xmm0, 32(%r10,%r9,4)                         #16.5
        movdqu    %xmm0, 48(%r10,%r9,4)                         #16.5
        addq      $16, %r9                                      #16.5
        cmpq      %rax, %r9                                     #16.5
        jb        ..B1.49       # Prob 99%                      #16.5
                                # LOE rax rbx r9 r10 r12 r13 edx ecx esi r8d r14b xmm0
..B1.50:                        # Preds ..B1.49
                                # Execution count [1.02e+04]
        lea       1025(%r8), %eax                               #16.5
        cmpl      $1024, %eax                                   #16.5
        ja        ..B1.59       # Prob 50%                      #16.5
                                # LOE rbx r12 r13 edx ecx esi r8d r14b xmm0
..B1.51:                        # Preds ..B1.50
                                # Execution count [1.02e+04]
        movl      %edx, %eax                                    #16.5
        negl      %eax                                          #16.5
        addl      $1024, %eax                                   #16.5
        cmpl      $4, %eax                                      #16.5
        jb        ..B1.111      # Prob 10%                      #16.5
                                # LOE rax rbx r12 r13 edx ecx esi r8d r14b xmm0
..B1.52:                        # Preds ..B1.51
                                # Execution count [1.02e+04]
        movl      %eax, %r10d                                   #16.5
        lea       1024(%rcx,%r8), %r8d                          #16.5
        movslq    %r8d, %r8                                     #16.5
        andl      $-4, %r10d                                    #16.5
        xorl      %r9d, %r9d                                    #16.5
        lea       (%rbx,%r8,4), %r8                             #16.5
                                # LOE rax rbx r8 r9 r10 r12 r13 edx ecx esi r14b xmm0
..B1.53:                        # Preds ..B1.53 ..B1.52
                                # Execution count [1.05e+07]
        movdqu    %xmm0, (%r8,%r9,4)                            #16.5
        addq      $4, %r9                                       #16.5
        cmpq      %r10, %r9                                     #16.5
        jb        ..B1.53       # Prob 99%                      #16.5
                                # LOE rax rbx r8 r9 r10 r12 r13 edx ecx esi r14b xmm0
..B1.55:                        # Preds ..B1.53 ..B1.111 ..B1.108
                                # Execution count [1.02e+04]
        cmpq      %rax, %r10                                    #16.5
        jae       ..B1.59       # Prob 0%                       #16.5
                                # LOE rax rbx r10 r12 r13 edx ecx esi r14b xmm0
..B1.56:                        # Preds ..B1.55
                                # Execution count [1.02e+04]
        addl      %ecx, %edx                                    #16.5
        movslq    %edx, %rdx                                    #16.5
        lea       (%rbx,%rdx,4), %rdx                           #16.5
                                # LOE rax rdx rbx r10 r12 r13 ecx esi r14b xmm0
..B1.57:                        # Preds ..B1.57 ..B1.56
                                # Execution count [1.05e+07]
        movl      $1000, (%rdx,%r10,4)                          #16.5
        incq      %r10                                          #16.5
        cmpq      %rax, %r10                                    #16.5
        jb        ..B1.57       # Prob 99%                      #16.5
                                # LOE rax rdx rbx r10 r12 r13 ecx esi r14b xmm0
..B1.59:                        # Preds ..B1.57 ..B1.55 ..B1.50
                                # Execution count [1.02e+04]
        incl      %esi                                          #16.5
        addl      $1024, %ecx                                   #16.5
        cmpl      $1024, %esi                                   #16.5
        jb        ..B1.42       # Prob 99%                      #16.5
                                # LOE rbx r12 r13 ecx esi r14b xmm0
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #16.5
..___tag_value_main.25:
#       get_clock()
        call      get_clock                                     #16.5
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14b xmm0
..B1.126:                       # Preds ..B1.60
                                # Execution count [1.00e+01]
        movaps    %xmm0, %xmm1                                  #16.5
                                # LOE rbx r12 r13 r14b xmm1
..B1.61:                        # Preds ..B1.126
                                # Execution count [1.00e+01]
        movsd     8(%rsp), %xmm0                                #16.5[spill]
        incb      %r14b                                         #16.5
        subsd     (%rsp), %xmm1                                 #16.5[spill]
        addsd     %xmm1, %xmm0                                  #16.5
        movsd     %xmm0, 8(%rsp)                                #16.5[spill]
        cmpb      $10, %r14b                                    #16.5
        jb        ..B1.40       # Prob 90%                      #16.5
                                # LOE rbx r12 r13 r14b
..B1.62:                        # Preds ..B1.61
                                # Execution count [1.00e+00]
        movq      %rbx, %rdi                                    #16.5
#       free(void *)
        call      free                                          #16.5
                                # LOE r12 r13
..B1.63:                        # Preds ..B1.62
                                # Execution count [1.00e+00]
        movsd     8(%rsp), %xmm0                                #16.5[spill]
        movl      $.L_2__STRING.2, %edi                         #16.5
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #16.5
        movl      $1, %eax                                      #16.5
..___tag_value_main.27:
#       printf(const char *__restrict__, ...)
        call      printf                                        #16.5
..___tag_value_main.28:
                                # LOE r12 r13
..B1.64:                        # Preds ..B1.63
                                # Execution count [1.00e+00]
        movl      $4194304, %edi                                #17.5
#       malloc(size_t)
        call      malloc                                        #17.5
                                # LOE rax r12 r13
..B1.127:                       # Preds ..B1.64
                                # Execution count [1.00e+00]
        movq      %rax, %r15                                    #17.5
                                # LOE r12 r13 r15
..B1.65:                        # Preds ..B1.127
                                # Execution count [1.00e+00]
        movl      $4194304, %edi                                #17.5
#       malloc(size_t)
        call      malloc                                        #17.5
                                # LOE rax r12 r13 r15
..B1.128:                       # Preds ..B1.65
                                # Execution count [1.00e+00]
        movq      %rax, %r14                                    #17.5
                                # LOE r12 r13 r14 r15
..B1.66:                        # Preds ..B1.128
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #17.5
        xorl      %ebx, %ebx                                    #17.5
        pxor      %xmm0, %xmm0                                  #17.5
        movl      %eax, %r12d                                   #17.5
        movsd     %xmm0, 8(%rsp)                                #17.5[spill]
        movq      %r14, (%rsp)                                  #17.5[spill]
                                # LOE rbx r15 r12d
..B1.67:                        # Preds ..B1.70 ..B1.66
                                # Execution count [1.02e+03]
        xorl      %r14d, %r14d                                  #17.5
        lea       (%r15,%rbx,4), %r13                           #17.5
                                # LOE rbx r13 r14 r15 r12d
..B1.68:                        # Preds ..B1.69 ..B1.67
                                # Execution count [1.05e+06]
#       rand(void)
        call      rand                                          #17.5
                                # LOE rbx r13 r14 r15 eax r12d
..B1.129:                       # Preds ..B1.68
                                # Execution count [1.05e+06]
        movl      %eax, %r8d                                    #17.5
                                # LOE rbx r13 r14 r15 r8d r12d
..B1.69:                        # Preds ..B1.129
                                # Execution count [1.05e+06]
        movl      $274877907, %eax                              #17.5
        movl      %r8d, %ecx                                    #17.5
        imull     %r8d                                          #17.5
        sarl      $31, %ecx                                     #17.5
        sarl      $6, %edx                                      #17.5
        subl      %ecx, %edx                                    #17.5
        imull     $-1000, %edx, %esi                            #17.5
        addl      %esi, %r8d                                    #17.5
        movl      %r8d, (%r13,%r14,4)                           #17.5
        incq      %r14                                          #17.5
        cmpq      $1024, %r14                                   #17.5
        jb        ..B1.68       # Prob 99%                      #17.5
                                # LOE rbx r13 r14 r15 r12d
..B1.70:                        # Preds ..B1.69
                                # Execution count [1.02e+03]
        incl      %r12d                                         #17.5
        addq      $1024, %rbx                                   #17.5
        cmpl      $1024, %r12d                                  #17.5
        jb        ..B1.67       # Prob 99%                      #17.5
                                # LOE rbx r15 r12d
..B1.71:                        # Preds ..B1.70
                                # Execution count [1.00e+00]
        movq      (%rsp), %r14                                  #[spill]
        xorb      %bl, %bl                                      #17.5
                                # LOE r12 r13 r14 r15 bl
..B1.72:                        # Preds ..B1.78 ..B1.71
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #17.5
..___tag_value_main.29:
#       get_clock()
        call      get_clock                                     #17.5
..___tag_value_main.30:
                                # LOE r12 r13 r14 r15 bl xmm0
..B1.130:                       # Preds ..B1.72
                                # Execution count [1.00e+01]
        movsd     %xmm0, (%rsp)                                 #17.5[spill]
                                # LOE r12 r13 r14 r15 bl
..B1.73:                        # Preds ..B1.130
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #17.5
                                # LOE rax r12 r13 r14 r15 bl
..B1.74:                        # Preds ..B1.76 ..B1.73
                                # Execution count [1.02e+04]
        movl      %eax, %esi                                    #17.5
        xorl      %r8d, %r8d                                    #17.5
        shll      $10, %esi                                     #17.5
        lea       (%r15,%rax,4), %rcx                           #17.5
        xorl      %edx, %edx                                    #17.5
                                # LOE rax rdx rcx r12 r13 r14 r15 esi r8d bl
..B1.75:                        # Preds ..B1.75 ..B1.74
                                # Execution count [5.24e+06]
        movl      (%rcx,%rdx,4), %r10d                          #17.5
        lea       (%rsi,%r8,2), %r9d                            #17.5
        movslq    %r9d, %r9                                     #17.5
        incl      %r8d                                          #17.5
        movl      4096(%rcx,%rdx,4), %r11d                      #17.5
        addq      $2048, %rdx                                   #17.5
        movl      %r10d, (%r14,%r9,4)                           #17.5
        movl      %r11d, 4(%r14,%r9,4)                          #17.5
        cmpl      $512, %r8d                                    #17.5
        jb        ..B1.75       # Prob 99%                      #17.5
                                # LOE rax rdx rcx r12 r13 r14 r15 esi r8d bl
..B1.76:                        # Preds ..B1.75
                                # Execution count [1.02e+04]
        incq      %rax                                          #17.5
        cmpq      $1024, %rax                                   #17.5
        jb        ..B1.74       # Prob 99%                      #17.5
                                # LOE rax r12 r13 r14 r15 bl
..B1.77:                        # Preds ..B1.76
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #17.5
..___tag_value_main.31:
#       get_clock()
        call      get_clock                                     #17.5
..___tag_value_main.32:
                                # LOE r12 r13 r14 r15 bl xmm0
..B1.131:                       # Preds ..B1.77
                                # Execution count [1.00e+01]
        movaps    %xmm0, %xmm1                                  #17.5
                                # LOE r12 r13 r14 r15 bl xmm1
..B1.78:                        # Preds ..B1.131
                                # Execution count [1.00e+01]
        movsd     8(%rsp), %xmm0                                #17.5[spill]
        incb      %bl                                           #17.5
        subsd     (%rsp), %xmm1                                 #17.5[spill]
        addsd     %xmm1, %xmm0                                  #17.5
        movsd     %xmm0, 8(%rsp)                                #17.5[spill]
        cmpb      $10, %bl                                      #17.5
        jb        ..B1.72       # Prob 90%                      #17.5
                                # LOE r12 r13 r14 r15 bl
..B1.79:                        # Preds ..B1.78
                                # Execution count [1.00e+00]
        movq      %r15, %rdi                                    #17.5
#       free(void *)
        call      free                                          #17.5
                                # LOE r12 r13 r14
..B1.80:                        # Preds ..B1.79
                                # Execution count [1.00e+00]
        movq      %r14, %rdi                                    #17.5
#       free(void *)
        call      free                                          #17.5
                                # LOE r12 r13
..B1.81:                        # Preds ..B1.80
                                # Execution count [1.00e+00]
        movsd     8(%rsp), %xmm0                                #17.5[spill]
        movl      $.L_2__STRING.3, %edi                         #17.5
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #17.5
        movl      $1, %eax                                      #17.5
..___tag_value_main.33:
#       printf(const char *__restrict__, ...)
        call      printf                                        #17.5
..___tag_value_main.34:
                                # LOE r12 r13
..B1.82:                        # Preds ..B1.81
                                # Execution count [1.00e+00]
        movl      $40000, %edi                                  #18.5
#       malloc(size_t)
        call      malloc                                        #18.5
                                # LOE rax r12 r13
..B1.132:                       # Preds ..B1.82
                                # Execution count [1.00e+00]
        movq      %rax, %r15                                    #18.5
                                # LOE r12 r13 r15
..B1.83:                        # Preds ..B1.132
                                # Execution count [1.00e+00]
        movq      %r15, %rdx                                    #18.5
        xorb      %cl, %cl                                      #18.5
        andq      $15, %rdx                                     #18.5
        movb      %cl, %r12b                                    #18.5
        movl      %edx, %ebx                                    #18.5
        movq      %rdx, %r13                                    #18.5
        movl      %ebx, %r14d                                   #18.5
        movl      %ebx, %eax                                    #18.5
        movdqu    .L_2il0floatpacket.2(%rip), %xmm0             #18.5
        negl      %r14d                                         #18.5
        paddd     %xmm0, %xmm0                                  #18.5
        andl      $3, %eax                                      #18.5
        addl      $16, %r14d                                    #18.5
        shrl      $2, %r14d                                     #18.5
        movdqu    %xmm0, (%rsp)                                 #18.5[spill]
        movq      %r15, 16(%rsp)                                #18.5[spill]
        movl      %eax, %r15d                                   #18.5
                                # LOE r13 ebx r14d r15d r12b
..B1.84:                        # Preds ..B1.103 ..B1.83
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #18.5
..___tag_value_main.35:
#       get_clock()
        call      get_clock                                     #18.5
..___tag_value_main.36:
                                # LOE r13 ebx r14d r15d r12b xmm0
..B1.133:                       # Preds ..B1.84
                                # Execution count [1.00e+01]
        movsd     %xmm0, 24(%rsp)                               #18.5[spill]
                                # LOE r13 ebx r14d r15d r12b
..B1.85:                        # Preds ..B1.133
                                # Execution count [1.00e+01]
        movl      %ebx, %edi                                    #18.5
        testl     %ebx, %ebx                                    #18.5
        je        ..B1.90       # Prob 50%                      #18.5
                                # LOE r13 ebx edi r14d r15d r12b
..B1.86:                        # Preds ..B1.85
                                # Execution count [1.00e+01]
        testl     %r15d, %r15d                                  #18.5
        jne       ..B1.109      # Prob 10%                      #18.5
                                # LOE r13 ebx r14d r15d r12b
..B1.87:                        # Preds ..B1.86
                                # Execution count [1.00e+01]
        movl      %r14d, %r8d                                   #18.5
        movl      %r14d, %edi                                   #18.5
        movq      16(%rsp), %r9                                 #18.5[spill]
        xorl      %esi, %esi                                    #18.5
                                # LOE rsi r8 r9 r13 ebx edi r14d r15d r12b
..B1.88:                        # Preds ..B1.88 ..B1.87
                                # Execution count [1.00e+05]
        movl      $50, (%r9,%rsi,4)                             #18.5
        incq      %rsi                                          #18.5
        cmpq      %r8, %rsi                                     #18.5
        jb        ..B1.88       # Prob 99%                      #18.5
        jmp       ..B1.91       # Prob 100%                     #18.5
                                # LOE rsi r8 r9 r13 ebx edi r14d r15d r12b
..B1.90:                        # Preds ..B1.85
                                # Execution count [5.00e+00]
        movq      %r13, %r8                                     #18.5
                                # LOE r8 r13 ebx edi r14d r15d r12b
..B1.91:                        # Preds ..B1.88 ..B1.90
                                # Execution count [1.00e+01]
        negl      %edi                                          #18.5
        andl      $15, %edi                                     #18.5
        negl      %edi                                          #18.5
        movdqu    (%rsp), %xmm0                                 #18.5[spill]
        movq      16(%rsp), %r9                                 #18.5[spill]
        lea       10000(%rdi), %eax                             #18.5
        movl      %eax, %esi                                    #18.5
                                # LOE rsi r8 r9 r13 eax ebx edi r14d r15d r12b xmm0
..B1.92:                        # Preds ..B1.92 ..B1.91
                                # Execution count [1.00e+05]
        movdqu    %xmm0, (%r9,%r8,4)                            #18.5
        movdqu    %xmm0, 16(%r9,%r8,4)                          #18.5
        movdqu    %xmm0, 32(%r9,%r8,4)                          #18.5
        movdqu    %xmm0, 48(%r9,%r8,4)                          #18.5
        addq      $16, %r8                                      #18.5
        cmpq      %rsi, %r8                                     #18.5
        jb        ..B1.92       # Prob 99%                      #18.5
                                # LOE rsi r8 r9 r13 eax ebx edi r14d r15d r12b xmm0
..B1.93:                        # Preds ..B1.92
                                # Execution count [1.00e+01]
        addl      $10001, %edi                                  #18.5
        cmpl      $10000, %edi                                  #18.5
        ja        ..B1.102      # Prob 50%                      #18.5
                                # LOE rsi r13 eax ebx r14d r15d r12b
..B1.94:                        # Preds ..B1.93
                                # Execution count [1.00e+01]
        movl      %eax, %r9d                                    #18.5
        negl      %r9d                                          #18.5
        addl      $10000, %r9d                                  #18.5
        cmpl      $4, %r9d                                      #18.5
        jb        ..B1.110      # Prob 10%                      #18.5
                                # LOE rsi r13 eax ebx r9d r14d r15d r12b
..B1.95:                        # Preds ..B1.94
                                # Execution count [1.00e+01]
        movl      %r9d, %r8d                                    #18.5
        xorl      %edi, %edi                                    #18.5
        movdqu    (%rsp), %xmm0                                 #18.5[spill]
        andl      $-4, %r8d                                     #18.5
        movq      16(%rsp), %r10                                #18.5[spill]
                                # LOE rsi r10 r13 eax ebx edi r8d r9d r14d r15d r12b xmm0
..B1.96:                        # Preds ..B1.96 ..B1.95
                                # Execution count [1.00e+05]
        addl      $4, %edi                                      #18.5
        movdqu    %xmm0, (%r10,%rsi,4)                          #18.5
        addq      $4, %rsi                                      #18.5
        cmpl      %r8d, %edi                                    #18.5
        jb        ..B1.96       # Prob 99%                      #18.5
                                # LOE rsi r10 r13 eax ebx edi r8d r9d r14d r15d r12b xmm0
..B1.98:                        # Preds ..B1.96 ..B1.110 ..B1.109
                                # Execution count [1.00e+01]
        cmpl      %r9d, %r8d                                    #18.5
        jae       ..B1.102      # Prob 0%                       #18.5
                                # LOE r13 eax ebx r8d r9d r14d r15d r12b
..B1.99:                        # Preds ..B1.98
                                # Execution count [1.00e+01]
        movq      16(%rsp), %rdi                                #[spill]
                                # LOE rdi r13 eax ebx r8d r9d r14d r15d r12b
..B1.100:                       # Preds ..B1.100 ..B1.99
                                # Execution count [1.00e+05]
        lea       (%rax,%r8), %esi                              #18.5
        incl      %r8d                                          #18.5
        movslq    %esi, %rsi                                    #18.5
        movl      $50, (%rdi,%rsi,4)                            #18.5
        cmpl      %r9d, %r8d                                    #18.5
        jb        ..B1.100      # Prob 99%                      #18.5
                                # LOE rdi r13 eax ebx r8d r9d r14d r15d r12b
..B1.102:                       # Preds ..B1.100 ..B1.93 ..B1.98
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #18.5
..___tag_value_main.37:
#       get_clock()
        call      get_clock                                     #18.5
..___tag_value_main.38:
                                # LOE r13 ebx r14d r15d r12b xmm0
..B1.134:                       # Preds ..B1.102
                                # Execution count [1.00e+01]
        movaps    %xmm0, %xmm1                                  #18.5
                                # LOE r13 ebx r14d r15d r12b xmm1
..B1.103:                       # Preds ..B1.134
                                # Execution count [1.00e+01]
        movsd     40(%rsp), %xmm0                               #18.5[spill]
        incb      %r12b                                         #18.5
        subsd     24(%rsp), %xmm1                               #18.5[spill]
        addsd     %xmm1, %xmm0                                  #18.5
        movsd     %xmm0, 40(%rsp)                               #18.5[spill]
        cmpb      $10, %r12b                                    #18.5
        jb        ..B1.84       # Prob 90%                      #18.5
                                # LOE r13 ebx r14d r15d r12b xmm0
..B1.104:                       # Preds ..B1.103
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.4, %edi                         #18.5
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #18.5
        movl      $1, %eax                                      #18.5
        movq      16(%rsp), %r15                                #[spill]
..___tag_value_main.39:
#       printf(const char *__restrict__, ...)
        call      printf                                        #18.5
..___tag_value_main.40:
                                # LOE r12 r13 r15
..B1.105:                       # Preds ..B1.104
                                # Execution count [1.00e+00]
        movq      %r15, %rdi                                    #18.5
#       free(void *)
        call      free                                          #18.5
                                # LOE r12 r13
..B1.106:                       # Preds ..B1.105
                                # Execution count [1.00e+00]
        xorl      %eax, %eax                                    #19.12
        addq      $88, %rsp                                     #19.12
	.cfi_restore 3
        popq      %rbx                                          #19.12
	.cfi_restore 15
        popq      %r15                                          #19.12
	.cfi_restore 14
        popq      %r14                                          #19.12
	.cfi_restore 13
        popq      %r13                                          #19.12
	.cfi_restore 12
        popq      %r12                                          #19.12
        movq      %rbp, %rsp                                    #19.12
        popq      %rbp                                          #19.12
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #19.12
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.107:                       # Preds ..B1.16
                                # Execution count [9.00e-01]: Infreq
        xorl      %eax, %eax                                    #15.5
        jmp       ..B1.28       # Prob 100%                     #15.5
                                # LOE rax rbx r13d r14d r15d r12b
..B1.108:                       # Preds ..B1.43
                                # Execution count [1.02e+03]: Infreq
        xorl      %edx, %edx                                    #16.5
        movl      $1024, %eax                                   #16.5
        xorl      %r10d, %r10d                                  #16.5
        jmp       ..B1.55       # Prob 100%                     #16.5
                                # LOE rax rbx r10 r12 r13 edx ecx esi r14b xmm0
..B1.109:                       # Preds ..B1.86
                                # Execution count [1.00e+00]: Infreq
        xorl      %eax, %eax                                    #18.5
        movl      $10000, %r9d                                  #18.5
        xorl      %r8d, %r8d                                    #18.5
        jmp       ..B1.98       # Prob 100%                     #18.5
                                # LOE r13 eax ebx r8d r9d r14d r15d r12b
..B1.110:                       # Preds ..B1.94
                                # Execution count [1.00e+00]: Infreq
        xorl      %r8d, %r8d                                    #18.5
        jmp       ..B1.98       # Prob 100%                     #18.5
                                # LOE r13 eax ebx r8d r9d r14d r15d r12b
..B1.111:                       # Preds ..B1.51
                                # Execution count [1.02e+03]: Infreq
        xorl      %r10d, %r10d                                  #16.5
        jmp       ..B1.55       # Prob 100%                     #16.5
        .align    16,0x90
	.cfi_endproc
                                # LOE rax rbx r10 r12 r13 edx ecx esi r14b xmm0
# mark_end;
	.type	main,@function
	.size	main,.-main
	.data
# -- End  main
	.text
# -- Begin  test1
	.text
# mark_begin;
       .align    16,0x90
	.globl test1
# --- test1()
test1:
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_test1.56:
..L57:
                                                         #23.1
        pushq     %r12                                          #23.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        subq      $16, %rsp                                     #23.1
	.cfi_def_cfa_offset 32
        xorb      %al, %al                                      #27.9
        pxor      %xmm0, %xmm0                                  #24.22
        movb      %al, %r12b                                    #27.9
        movsd     %xmm0, (%rsp)                                 #27.9[spill]
                                # LOE rbx rbp r13 r14 r15 r12b
..B2.2:                         # Preds ..B2.4 ..B2.1
                                # Execution count [9.31e+00]
        xorl      %eax, %eax                                    #28.21
..___tag_value_test1.61:
#       get_clock()
        call      get_clock                                     #28.21
..___tag_value_test1.62:
                                # LOE rbx rbp r13 r14 r15 r12b xmm0
..B2.9:                         # Preds ..B2.2
                                # Execution count [9.31e+00]
        movsd     %xmm0, 8(%rsp)                                #28.21[spill]
                                # LOE rbx rbp r13 r14 r15 r12b
..B2.3:                         # Preds ..B2.9
                                # Execution count [9.24e+00]
        xorl      %eax, %eax                                    #34.21
..___tag_value_test1.63:
#       get_clock()
        call      get_clock                                     #34.21
..___tag_value_test1.64:
                                # LOE rbx rbp r13 r14 r15 r12b xmm0
..B2.10:                        # Preds ..B2.3
                                # Execution count [9.24e+00]
        movaps    %xmm0, %xmm1                                  #34.21
                                # LOE rbx rbp r13 r14 r15 r12b xmm1
..B2.4:                         # Preds ..B2.10
                                # Execution count [9.24e+00]
        movsd     (%rsp), %xmm0                                 #35.9[spill]
        incb      %r12b                                         #27.20
        subsd     8(%rsp), %xmm1                                #35.27[spill]
        addsd     %xmm1, %xmm0                                  #35.9
        movsd     %xmm0, (%rsp)                                 #35.9[spill]
        cmpb      $10, %r12b                                    #27.16
        jl        ..B2.2        # Prob 90%                      #27.16
                                # LOE rbx rbp r13 r14 r15 r12b xmm0
..B2.5:                         # Preds ..B2.4
                                # Execution count [9.24e-01]
        movl      $.L_2__STRING.0, %edi                         #40.5
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #40.5
        movl      $1, %eax                                      #40.5
..___tag_value_test1.65:
#       printf(const char *__restrict__, ...)
        call      printf                                        #40.5
..___tag_value_test1.66:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.6:                         # Preds ..B2.5
                                # Execution count [9.24e-01]
        addq      $16, %rsp                                     #41.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #41.1
	.cfi_def_cfa_offset 8
        ret                                                     #41.1
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	test1,@function
	.size	test1,.-test1
	.data
# -- End  test1
	.text
# -- Begin  test2
	.text
# mark_begin;
       .align    16,0x90
	.globl test2
# --- test2()
test2:
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_test2.71:
..L72:
                                                         #44.1
        pushq     %r12                                          #44.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #44.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #44.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %rbp                                          #44.1
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
        subq      $56, %rsp                                     #44.1
	.cfi_def_cfa_offset 96
        movl      $4000000, %edi                                #45.21
#       malloc(size_t)
        call      malloc                                        #45.21
                                # LOE rax rbx r14 r15
..B3.37:                        # Preds ..B3.1
                                # Execution count [1.00e+00]
        movq      %rax, %r13                                    #45.21
                                # LOE rbx r13 r14 r15
..B3.2:                         # Preds ..B3.37
                                # Execution count [1.00e+00]
        movl      $4000000, %edi                                #46.21
#       malloc(size_t)
        call      malloc                                        #46.21
                                # LOE rax rbx r13 r14 r15
..B3.38:                        # Preds ..B3.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbp                                    #46.21
                                # LOE rbx rbp r13 r14 r15
..B3.3:                         # Preds ..B3.38
                                # Execution count [1.00e+00]
        movl      $4000000, %edi                                #47.21
#       malloc(size_t)
        call      malloc                                        #47.21
                                # LOE rax rbx rbp r13 r14 r15
..B3.39:                        # Preds ..B3.3
                                # Execution count [1.00e+00]
        movq      %rax, %r12                                    #47.21
                                # LOE rbx rbp r12 r13 r14 r15
..B3.4:                         # Preds ..B3.39
                                # Execution count [9.38e-01]
        xorl      %eax, %eax                                    #51.5
        movq      %rax, %r14                                    #51.5
                                # LOE rbx rbp r12 r13 r14 r15
..B3.5:                         # Preds ..B3.7 ..B3.4
                                # Execution count [1.00e+06]
#       rand(void)
        call      rand                                          #52.16
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B3.40:                        # Preds ..B3.5
                                # Execution count [1.00e+06]
        movl      %eax, %r8d                                    #52.16
                                # LOE rbx rbp r12 r13 r14 r15 r8d
..B3.6:                         # Preds ..B3.40
                                # Execution count [1.00e+06]
        movl      $351843721, %eax                              #52.23
        movl      %r8d, %ecx                                    #52.23
        imull     %r8d                                          #52.23
        sarl      $31, %ecx                                     #52.23
        sarl      $13, %edx                                     #52.23
        subl      %ecx, %edx                                    #52.23
        imull     $-100000, %edx, %esi                          #52.23
        addl      %esi, %r8d                                    #52.23
        movl      %r8d, (%r13,%r14,4)                           #52.9
#       rand(void)
        call      rand                                          #53.16
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B3.41:                        # Preds ..B3.6
                                # Execution count [1.00e+06]
        movl      %eax, %r8d                                    #53.16
                                # LOE rbx rbp r12 r13 r14 r15 r8d
..B3.7:                         # Preds ..B3.41
                                # Execution count [1.00e+06]
        movl      $351843721, %eax                              #53.23
        movl      %r8d, %ecx                                    #53.23
        imull     %r8d                                          #53.23
        sarl      $31, %ecx                                     #53.23
        sarl      $13, %edx                                     #53.23
        subl      %ecx, %edx                                    #53.23
        imull     $-100000, %edx, %esi                          #53.23
        addl      %esi, %r8d                                    #53.23
        movl      %r8d, (%rbp,%r14,4)                           #53.9
        incq      %r14                                          #51.5
        cmpq      $1000000, %r14                                #51.5
        jb        ..B3.5        # Prob 99%                      #51.5
                                # LOE rbx rbp r12 r13 r14 r15
..B3.8:                         # Preds ..B3.7
                                # Execution count [9.92e-01]
        movq      %r12, %rsi                                    #62.9
        xorb      %dil, %dil                                    #58.5
        andq      $15, %rsi                                     #62.9
        movl      %esi, %eax                                    #62.9
        pxor      %xmm0, %xmm0                                  #56.23
        movl      %eax, %edx                                    #62.9
        movl      %eax, %ecx                                    #62.9
        negl      %edx                                          #62.9
        andl      $3, %ecx                                      #62.9
        addl      $16, %edx                                     #62.9
        movq      %rsi, %r14                                    #62.9
        shrl      $2, %edx                                      #62.9
        movsd     %xmm0, 32(%rsp)                               #56.23[spill]
        movq      %r12, 16(%rsp)                                #62.9[spill]
        movl      %eax, %r12d                                   #62.9
        movq      %r13, 24(%rsp)                                #62.9[spill]
        movb      %dil, %r13b                                   #62.9
        movq      %r15, 8(%rsp)                                 #62.9[spill]
	.cfi_offset 15, -88
        movl      %edx, %r15d                                   #62.9
        movq      %rbx, (%rsp)                                  #62.9[spill]
	.cfi_offset 3, -96
        movl      %ecx, %ebx                                    #62.9
                                # LOE rbp r14 ebx r12d r15d r13b
..B3.9:                         # Preds ..B3.28 ..B3.8
                                # Execution count [9.24e+00]
        xorl      %eax, %eax                                    #60.21
..___tag_value_test2.84:
#       get_clock()
        call      get_clock                                     #60.21
..___tag_value_test2.85:
                                # LOE rbp r14 ebx r12d r15d r13b xmm0
..B3.42:                        # Preds ..B3.9
                                # Execution count [9.24e+00]
        movsd     %xmm0, 40(%rsp)                               #60.21[spill]
                                # LOE rbp r14 ebx r12d r15d r13b
..B3.10:                        # Preds ..B3.42
                                # Execution count [9.00e+00]
        movl      %r12d, %r9d                                   #62.9
        testl     %r12d, %r12d                                  #62.9
        je        ..B3.15       # Prob 50%                      #62.9
                                # LOE rbp r9 r14 ebx r12d r15d r13b
..B3.11:                        # Preds ..B3.10
                                # Execution count [9.00e+00]
        testl     %ebx, %ebx                                    #62.9
        jne       ..B3.34       # Prob 10%                      #62.9
                                # LOE rbp r14 ebx r12d r15d r13b
..B3.12:                        # Preds ..B3.11
                                # Execution count [8.00e+00]
        movl      %r15d, %edx                                   #62.9
        movl      %r15d, %r9d                                   #62.9
        movq      16(%rsp), %r11                                #62.9[spill]
        xorl      %r8d, %r8d                                    #62.9
        movq      24(%rsp), %rax                                #62.9[spill]
                                # LOE rax rdx rbp r8 r9 r11 r14 ebx r12d r15d r13b
..B3.13:                        # Preds ..B3.13 ..B3.12
                                # Execution count [9.24e+06]
        movl      (%rax,%r8,4), %r10d                           #63.20
        addl      (%rbp,%r8,4), %r10d                           #63.25
        movl      %r10d, (%r11,%r8,4)                           #63.13
        incq      %r8                                           #62.9
        cmpq      %rdx, %r8                                     #62.9
        jb        ..B3.13       # Prob 99%                      #62.9
        jmp       ..B3.16       # Prob 100%                     #62.9
                                # LOE rax rdx rbp r8 r9 r11 r14 ebx r12d r15d r13b
..B3.15:                        # Preds ..B3.10
                                # Execution count [4.50e+00]
        movq      %r14, %rdx                                    #62.9
                                # LOE rdx rbp r9 r14 ebx r12d r15d r13b
..B3.16:                        # Preds ..B3.13 ..B3.15
                                # Execution count [0.00e+00]
        movl      %r9d, %r8d                                    #62.9
        movl      $1000000, %eax                                #62.9
        negl      %r8d                                          #62.9
        andl      $3, %r8d                                      #62.9
        subq      %r8, %rax                                     #62.9
        lea       (%rbp,%r9,4), %r10                            #63.25
        testq     $15, %r10                                     #62.9
        je        ..B3.20       # Prob 60%                      #62.9
                                # LOE rax rdx rbp r14 ebx r12d r15d r13b
..B3.17:                        # Preds ..B3.16
                                # Execution count [8.00e+00]
        movq      16(%rsp), %r8                                 #[spill]
        movq      24(%rsp), %r9                                 #[spill]
                                # LOE rax rdx rbp r8 r9 r14 ebx r12d r15d r13b
..B3.18:                        # Preds ..B3.18 ..B3.17
                                # Execution count [9.24e+06]
        movdqu    (%r9,%rdx,4), %xmm1                           #63.20
        movdqu    (%rbp,%rdx,4), %xmm0                          #63.25
        paddd     %xmm0, %xmm1                                  #63.25
        movntdq   %xmm1, (%r8,%rdx,4)                           #63.13
        addq      $4, %rdx                                      #62.9
        cmpq      %rax, %rdx                                    #62.9
        jb        ..B3.18       # Prob 99%                      #62.9
        jmp       ..B3.22       # Prob 100%                     #62.9
                                # LOE rax rdx rbp r8 r9 r14 ebx r12d r15d r13b
..B3.20:                        # Preds ..B3.16
                                # Execution count [8.00e+00]
        movq      16(%rsp), %r8                                 #[spill]
        movq      24(%rsp), %r9                                 #[spill]
                                # LOE rax rdx rbp r8 r9 r14 ebx r12d r15d r13b
..B3.21:                        # Preds ..B3.21 ..B3.20
                                # Execution count [9.24e+06]
        movdqu    (%r9,%rdx,4), %xmm0                           #63.20
        paddd     (%rbp,%rdx,4), %xmm0                          #63.25
        movntdq   %xmm0, (%r8,%rdx,4)                           #63.13
        addq      $4, %rdx                                      #62.9
        cmpq      %rax, %rdx                                    #62.9
        jb        ..B3.21       # Prob 99%                      #62.9
                                # LOE rax rdx rbp r8 r9 r14 ebx r12d r15d r13b
..B3.22:                        # Preds ..B3.18 ..B3.21
                                # Execution count [0.00e+00]
        mfence                                                  #62.9
                                # LOE rax rbp r14 ebx r12d r15d r13b
..B3.23:                        # Preds ..B3.22 ..B3.34
                                # Execution count [9.00e+00]
        cmpq      $1000000, %rax                                #62.9
        jae       ..B3.27       # Prob 0%                       #62.9
                                # LOE rax rbp r14 ebx r12d r15d r13b
..B3.24:                        # Preds ..B3.23
                                # Execution count [8.00e+00]
        movq      16(%rsp), %r9                                 #[spill]
        movq      24(%rsp), %r10                                #[spill]
                                # LOE rax rbp r9 r10 r14 ebx r12d r15d r13b
..B3.25:                        # Preds ..B3.25 ..B3.24
                                # Execution count [9.24e+06]
        movl      (%r10,%rax,4), %r8d                           #63.20
        addl      (%rbp,%rax,4), %r8d                           #63.25
        movl      %r8d, (%r9,%rax,4)                            #63.13
        incq      %rax                                          #62.9
        cmpq      $1000000, %rax                                #62.9
        jb        ..B3.25       # Prob 99%                      #62.9
                                # LOE rax rbp r9 r10 r14 ebx r12d r15d r13b
..B3.27:                        # Preds ..B3.25 ..B3.23
                                # Execution count [9.16e+00]
        xorl      %eax, %eax                                    #65.21
..___tag_value_test2.86:
#       get_clock()
        call      get_clock                                     #65.21
..___tag_value_test2.87:
                                # LOE rbp r14 ebx r12d r15d r13b xmm0
..B3.43:                        # Preds ..B3.27
                                # Execution count [9.16e+00]
        movaps    %xmm0, %xmm1                                  #65.21
                                # LOE rbp r14 ebx r12d r15d r13b xmm1
..B3.28:                        # Preds ..B3.43
                                # Execution count [9.24e+00]
        movsd     32(%rsp), %xmm0                               #66.9[spill]
        incb      %r13b                                         #58.5
        subsd     40(%rsp), %xmm1                               #66.27[spill]
        addsd     %xmm1, %xmm0                                  #66.9
        movsd     %xmm0, 32(%rsp)                               #66.9[spill]
        cmpb      $10, %r13b                                    #58.5
        jb        ..B3.9        # Prob 89%                      #58.5
                                # LOE rbp r14 ebx r12d r15d r13b
..B3.29:                        # Preds ..B3.28
                                # Execution count [9.16e-01]
        movq      24(%rsp), %r13                                #[spill]
        movq      %r13, %rdi                                    #71.5
        movq      16(%rsp), %r12                                #[spill]
        movq      8(%rsp), %r15                                 #[spill]
	.cfi_restore 15
        movq      (%rsp), %rbx                                  #[spill]
	.cfi_restore 3
#       free(void *)
        call      free                                          #71.5
	.cfi_offset 3, -96
	.cfi_offset 15, -88
                                # LOE rbx rbp r12 r14 r15
..B3.30:                        # Preds ..B3.29
                                # Execution count [9.16e-01]
        movq      %rbp, %rdi                                    #72.5
#       free(void *)
        call      free                                          #72.5
                                # LOE rbx r12 r14 r15
..B3.31:                        # Preds ..B3.30
                                # Execution count [9.16e-01]
        movq      %r12, %rdi                                    #73.5
#       free(void *)
        call      free                                          #73.5
                                # LOE rbx r14 r15
..B3.32:                        # Preds ..B3.31
                                # Execution count [9.16e-01]
        movsd     32(%rsp), %xmm0                               #75.5[spill]
        movl      $.L_2__STRING.1, %edi                         #75.5
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #75.5
        movl      $1, %eax                                      #75.5
..___tag_value_test2.92:
#       printf(const char *__restrict__, ...)
        call      printf                                        #75.5
..___tag_value_test2.93:
                                # LOE rbx r14 r15
..B3.33:                        # Preds ..B3.32
                                # Execution count [9.16e-01]
        addq      $56, %rsp                                     #76.1
	.cfi_def_cfa_offset 40
	.cfi_restore 6
        popq      %rbp                                          #76.1
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #76.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #76.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #76.1
	.cfi_def_cfa_offset 8
        ret                                                     #76.1
	.cfi_def_cfa_offset 96
	.cfi_offset 6, -40
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
                                # LOE
..B3.34:                        # Preds ..B3.11
                                # Execution count [9.00e-01]: Infreq
        xorl      %eax, %eax                                    #62.9
        jmp       ..B3.23       # Prob 100%                     #62.9
        .align    16,0x90
	.cfi_endproc
                                # LOE rax rbp r14 ebx r12d r15d r13b
# mark_end;
	.type	test2,@function
	.size	test2,.-test2
	.data
# -- End  test2
	.text
# -- Begin  test3
	.text
# mark_begin;
       .align    16,0x90
	.globl test3
# --- test3()
test3:
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_test3.109:
..L110:
                                                        #79.1
        pushq     %r12                                          #79.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #79.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        subq      $24, %rsp                                     #79.1
	.cfi_def_cfa_offset 48
        movl      $4194304, %edi                                #80.21
#       malloc(size_t)
        call      malloc                                        #80.21
                                # LOE rax rbx rbp r12 r13 r14 r15
..B4.32:                        # Preds ..B4.1
                                # Execution count [1.00e+00]
        movq      %rax, %rdi                                    #80.21
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B4.2:                         # Preds ..B4.32
                                # Execution count [1.00e+00]
        xorb      %al, %al                                      #85.5
        movq      %rdi, %r13                                    #90.31
        pxor      %xmm0, %xmm0                                  #82.23
        movb      %al, %r12b                                    #90.31
        movsd     %xmm0, 8(%rsp)                                #82.23[spill]
        movdqu    .L_2il0floatpacket.1(%rip), %xmm0             #90.31
                                # LOE rbx rbp r13 r14 r15 r12b
..B4.3:                         # Preds ..B4.24 ..B4.2
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #86.21
..___tag_value_test3.116:
#       get_clock()
        call      get_clock                                     #86.21
..___tag_value_test3.117:
                                # LOE rbx rbp r13 r14 r15 r12b xmm0
..B4.33:                        # Preds ..B4.3
                                # Execution count [1.00e+01]
        movsd     %xmm0, (%rsp)                                 #86.21[spill]
                                # LOE rbx rbp r13 r14 r15 r12b
..B4.4:                         # Preds ..B4.33
                                # Execution count [1.00e+01]
        xorl      %esi, %esi                                    #89.13
        movdqu    .L_2il0floatpacket.1(%rip), %xmm0             #89.13
        xorl      %edi, %edi                                    #89.13
                                # LOE rbx rbp r13 r14 r15 esi edi r12b xmm0
..B4.5:                         # Preds ..B4.22 ..B4.4
                                # Execution count [1.02e+04]
        movslq    %edi, %rdi                                    #90.17
        lea       (%r13,%rdi,4), %r9                            #90.17
        movq      %r9, %rax                                     #88.9
        andq      $15, %rax                                     #88.9
        testl     %eax, %eax                                    #88.9
        je        ..B4.10       # Prob 50%                      #88.9
                                # LOE rbx rbp r9 r13 r14 r15 eax esi edi r12b xmm0
..B4.6:                         # Preds ..B4.5
                                # Execution count [1.02e+04]
        testb     $3, %al                                       #88.9
        jne       ..B4.28       # Prob 10%                      #88.9
                                # LOE rbx rbp r9 r13 r14 r15 eax esi edi r12b xmm0
..B4.7:                         # Preds ..B4.6
                                # Execution count [1.02e+04]
        negl      %eax                                          #88.9
        xorl      %edx, %edx                                    #88.9
        addl      $16, %eax                                     #88.9
        shrl      $2, %eax                                      #88.9
        movl      %eax, %r8d                                    #88.9
                                # LOE rdx rbx rbp r8 r9 r13 r14 r15 eax esi edi r12b xmm0
..B4.8:                         # Preds ..B4.8 ..B4.7
                                # Execution count [1.05e+07]
        movl      $1000, (%r9,%rdx,4)                           #90.17
        incq      %rdx                                          #88.9
        cmpq      %r8, %rdx                                     #88.9
        jb        ..B4.8        # Prob 99%                      #88.9
        jmp       ..B4.11       # Prob 100%                     #88.9
                                # LOE rdx rbx rbp r8 r9 r13 r14 r15 eax esi edi r12b xmm0
..B4.10:                        # Preds ..B4.5
                                # Execution count [5.12e+03]
        xorl      %r8d, %r8d                                    #88.9
                                # LOE rbx rbp r8 r9 r13 r14 r15 eax esi edi r12b xmm0
..B4.11:                        # Preds ..B4.8 ..B4.10
                                # Execution count [1.02e+04]
        negl      %eax                                          #88.9
        andl      $15, %eax                                     #88.9
        negl      %eax                                          #88.9
        lea       1024(%rax), %ecx                              #88.9
        movl      %ecx, %edx                                    #88.9
                                # LOE rdx rbx rbp r8 r9 r13 r14 r15 eax ecx esi edi r12b xmm0
..B4.12:                        # Preds ..B4.12 ..B4.11
                                # Execution count [1.05e+07]
        movdqu    %xmm0, (%r9,%r8,4)                            #90.17
        movdqu    %xmm0, 16(%r9,%r8,4)                          #90.17
        movdqu    %xmm0, 32(%r9,%r8,4)                          #90.17
        movdqu    %xmm0, 48(%r9,%r8,4)                          #90.17
        addq      $16, %r8                                      #88.9
        cmpq      %rdx, %r8                                     #88.9
        jb        ..B4.12       # Prob 99%                      #88.9
                                # LOE rdx rbx rbp r8 r9 r13 r14 r15 eax ecx esi edi r12b xmm0
..B4.13:                        # Preds ..B4.12
                                # Execution count [1.02e+04]
        lea       1025(%rax), %edx                              #88.9
        cmpl      $1024, %edx                                   #88.9
        ja        ..B4.22       # Prob 50%                      #88.9
                                # LOE rbx rbp r13 r14 r15 eax ecx esi edi r12b xmm0
..B4.14:                        # Preds ..B4.13
                                # Execution count [1.02e+04]
        movl      %ecx, %edx                                    #88.9
        negl      %edx                                          #88.9
        addl      $1024, %edx                                   #88.9
        cmpl      $4, %edx                                      #88.9
        jb        ..B4.29       # Prob 10%                      #88.9
                                # LOE rdx rbx rbp r13 r14 r15 eax ecx esi edi r12b xmm0
..B4.15:                        # Preds ..B4.14
                                # Execution count [1.02e+04]
        xorl      %r9d, %r9d                                    #88.9
        lea       1024(%rdi,%rax), %r8d                         #90.17
        movslq    %r8d, %r8                                     #90.17
        movl      %edx, %eax                                    #88.9
        andl      $-4, %eax                                     #88.9
        lea       (%r13,%r8,4), %r8                             #90.17
                                # LOE rax rdx rbx rbp r8 r9 r13 r14 r15 ecx esi edi r12b xmm0
..B4.16:                        # Preds ..B4.16 ..B4.15
                                # Execution count [1.05e+07]
        movdqu    %xmm0, (%r8,%r9,4)                            #90.17
        addq      $4, %r9                                       #88.9
        cmpq      %rax, %r9                                     #88.9
        jb        ..B4.16       # Prob 99%                      #88.9
                                # LOE rax rdx rbx rbp r8 r9 r13 r14 r15 ecx esi edi r12b xmm0
..B4.18:                        # Preds ..B4.16 ..B4.29 ..B4.28
                                # Execution count [1.02e+04]
        cmpq      %rdx, %rax                                    #88.9
        jae       ..B4.22       # Prob 0%                       #88.9
                                # LOE rax rdx rbx rbp r13 r14 r15 ecx esi edi r12b xmm0
..B4.19:                        # Preds ..B4.18
                                # Execution count [1.02e+04]
        addl      %edi, %ecx                                    #90.17
        movslq    %ecx, %rcx                                    #90.17
        lea       (%r13,%rcx,4), %rcx                           #90.17
                                # LOE rax rdx rcx rbx rbp r13 r14 r15 esi edi r12b xmm0
..B4.20:                        # Preds ..B4.20 ..B4.19
                                # Execution count [1.05e+07]
        movl      $1000, (%rcx,%rax,4)                          #90.17
        incq      %rax                                          #88.9
        cmpq      %rdx, %rax                                    #88.9
        jb        ..B4.20       # Prob 99%                      #88.9
                                # LOE rax rdx rcx rbx rbp r13 r14 r15 esi edi r12b xmm0
..B4.22:                        # Preds ..B4.20 ..B4.18 ..B4.13
                                # Execution count [1.02e+04]
        incl      %esi                                          #89.13
        addl      $1024, %edi                                   #89.13
        cmpl      $1024, %esi                                   #89.13
        jb        ..B4.5        # Prob 99%                      #89.13
                                # LOE rbx rbp r13 r14 r15 esi edi r12b xmm0
..B4.23:                        # Preds ..B4.22
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #92.21
..___tag_value_test3.118:
#       get_clock()
        call      get_clock                                     #92.21
..___tag_value_test3.119:
                                # LOE rbx rbp r13 r14 r15 r12b xmm0
..B4.34:                        # Preds ..B4.23
                                # Execution count [1.00e+01]
        movaps    %xmm0, %xmm1                                  #92.21
                                # LOE rbx rbp r13 r14 r15 r12b xmm1
..B4.24:                        # Preds ..B4.34
                                # Execution count [1.00e+01]
        movsd     8(%rsp), %xmm0                                #93.9[spill]
        incb      %r12b                                         #85.5
        subsd     (%rsp), %xmm1                                 #93.27[spill]
        addsd     %xmm1, %xmm0                                  #93.9
        movsd     %xmm0, 8(%rsp)                                #93.9[spill]
        cmpb      $10, %r12b                                    #85.5
        jb        ..B4.3        # Prob 90%                      #85.5
                                # LOE rbx rbp r13 r14 r15 r12b
..B4.25:                        # Preds ..B4.24
                                # Execution count [1.00e+00]
        movq      %r13, %rdi                                    #
#       free(void *)
        call      free                                          #98.5
                                # LOE rbx rbp r12 r13 r14 r15
..B4.26:                        # Preds ..B4.25
                                # Execution count [1.00e+00]
        movsd     8(%rsp), %xmm0                                #100.5[spill]
        movl      $.L_2__STRING.2, %edi                         #100.5
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #100.5
        movl      $1, %eax                                      #100.5
..___tag_value_test3.120:
#       printf(const char *__restrict__, ...)
        call      printf                                        #100.5
..___tag_value_test3.121:
                                # LOE rbx rbp r12 r13 r14 r15
..B4.27:                        # Preds ..B4.26
                                # Execution count [1.00e+00]
        addq      $24, %rsp                                     #101.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #101.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #101.1
	.cfi_def_cfa_offset 8
        ret                                                     #101.1
	.cfi_def_cfa_offset 48
	.cfi_offset 12, -16
	.cfi_offset 13, -24
                                # LOE
..B4.28:                        # Preds ..B4.6
                                # Execution count [1.02e+03]: Infreq
        xorl      %ecx, %ecx                                    #88.9
        movl      $1024, %edx                                   #88.9
        xorl      %eax, %eax                                    #88.9
        jmp       ..B4.18       # Prob 100%                     #88.9
                                # LOE rax rdx rbx rbp r13 r14 r15 ecx esi edi r12b xmm0
..B4.29:                        # Preds ..B4.14
                                # Execution count [1.02e+03]: Infreq
        xorl      %eax, %eax                                    #88.9
        jmp       ..B4.18       # Prob 100%                     #88.9
        .align    16,0x90
	.cfi_endproc
                                # LOE rax rdx rbx rbp r13 r14 r15 ecx esi edi r12b xmm0
# mark_end;
	.type	test3,@function
	.size	test3,.-test3
	.data
# -- End  test3
	.text
# -- Begin  test4
	.text
# mark_begin;
       .align    16,0x90
	.globl test4
# --- test4()
test4:
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_test4.131:
..L132:
                                                        #104.1
        pushq     %r12                                          #104.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #104.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #104.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #104.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #104.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #104.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $24, %rsp                                     #104.1
	.cfi_def_cfa_offset 80
        movl      $4194304, %edi                                #105.21
#       malloc(size_t)
        call      malloc                                        #105.21
                                # LOE rax r12 r13 r14 r15
..B5.22:                        # Preds ..B5.1
                                # Execution count [1.00e+00]
        movq      %rax, %rbp                                    #105.21
                                # LOE rbp r12 r13 r14 r15
..B5.2:                         # Preds ..B5.22
                                # Execution count [1.00e+00]
        movl      $4194304, %edi                                #106.21
#       malloc(size_t)
        call      malloc                                        #106.21
                                # LOE rax rbp r12 r13 r14 r15
..B5.23:                        # Preds ..B5.2
                                # Execution count [1.00e+00]
        movq      %rax, %rbx                                    #106.21
                                # LOE rbx rbp r12 r13 r14 r15
..B5.3:                         # Preds ..B5.23
                                # Execution count [1.00e+00]
        xorl      %edx, %edx                                    #111.5
        xorl      %eax, %eax                                    #111.5
        movq      %rax, %r12                                    #111.5
        movl      %edx, %r15d                                   #111.5
        pxor      %xmm0, %xmm0                                  #108.23
        movsd     %xmm0, (%rsp)                                 #108.23[spill]
                                # LOE rbx rbp r12 r15d
..B5.4:                         # Preds ..B5.7 ..B5.3
                                # Execution count [1.02e+03]
        xorl      %r14d, %r14d                                  #112.9
        lea       (%rbp,%r12,4), %r13                           #113.13
                                # LOE rbx rbp r12 r13 r14 r15d
..B5.5:                         # Preds ..B5.6 ..B5.4
                                # Execution count [1.05e+06]
#       rand(void)
        call      rand                                          #113.27
                                # LOE rbx rbp r12 r13 r14 eax r15d
..B5.24:                        # Preds ..B5.5
                                # Execution count [1.05e+06]
        movl      %eax, %r8d                                    #113.27
                                # LOE rbx rbp r12 r13 r14 r8d r15d
..B5.6:                         # Preds ..B5.24
                                # Execution count [1.05e+06]
        movl      $274877907, %eax                              #113.34
        movl      %r8d, %ecx                                    #113.34
        imull     %r8d                                          #113.34
        sarl      $31, %ecx                                     #113.34
        sarl      $6, %edx                                      #113.34
        subl      %ecx, %edx                                    #113.34
        imull     $-1000, %edx, %esi                            #113.34
        addl      %esi, %r8d                                    #113.34
        movl      %r8d, (%r13,%r14,4)                           #113.13
        incq      %r14                                          #112.9
        cmpq      $1024, %r14                                   #112.9
        jb        ..B5.5        # Prob 99%                      #112.9
                                # LOE rbx rbp r12 r13 r14 r15d
..B5.7:                         # Preds ..B5.6
                                # Execution count [1.02e+03]
        incl      %r15d                                         #111.5
        addq      $1024, %r12                                   #111.5
        cmpl      $1024, %r15d                                  #111.5
        jb        ..B5.4        # Prob 99%                      #111.5
                                # LOE rbx rbp r12 r15d
..B5.8:                         # Preds ..B5.7
                                # Execution count [1.00e+00]
        xorb      %al, %al                                      #115.5
        movb      %al, %r15b                                    #115.5
                                # LOE rbx rbp r12 r13 r14 r15b
..B5.9:                         # Preds ..B5.15 ..B5.8
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #116.21
..___tag_value_test4.146:
#       get_clock()
        call      get_clock                                     #116.21
..___tag_value_test4.147:
                                # LOE rbx rbp r12 r13 r14 r15b xmm0
..B5.25:                        # Preds ..B5.9
                                # Execution count [1.00e+01]
        movsd     %xmm0, 8(%rsp)                                #116.21[spill]
                                # LOE rbx rbp r12 r13 r14 r15b
..B5.10:                        # Preds ..B5.25
                                # Execution count [1.00e+01]
        xorl      %edx, %edx                                    #119.13
                                # LOE rdx rbx rbp r12 r13 r14 r15b
..B5.11:                        # Preds ..B5.13 ..B5.10
                                # Execution count [1.02e+04]
        movl      %edx, %r8d                                    #120.17
        xorl      %r9d, %r9d                                    #118.9
        shll      $10, %r8d                                     #120.17
        lea       (%rbp,%rdx,4), %rsi                           #120.31
        xorl      %ecx, %ecx                                    #118.9
                                # LOE rdx rcx rbx rbp rsi r12 r13 r14 r8d r9d r15b
..B5.12:                        # Preds ..B5.12 ..B5.11
                                # Execution count [5.24e+06]
        movl      (%rsi,%rcx,4), %r11d                          #120.31
        lea       (%r8,%r9,2), %r10d                            #120.17
        movslq    %r10d, %r10                                   #120.17
        incl      %r9d                                          #118.9
        movl      %r11d, (%rbx,%r10,4)                          #120.17
        movl      4096(%rsi,%rcx,4), %r11d                      #120.31
        addq      $2048, %rcx                                   #118.9
        movl      %r11d, 4(%rbx,%r10,4)                         #120.17
        cmpl      $512, %r9d                                    #118.9
        jb        ..B5.12       # Prob 99%                      #118.9
                                # LOE rdx rcx rbx rbp rsi r12 r13 r14 r8d r9d r15b
..B5.13:                        # Preds ..B5.12
                                # Execution count [1.02e+04]
        incq      %rdx                                          #119.13
        cmpq      $1024, %rdx                                   #119.13
        jb        ..B5.11       # Prob 99%                      #119.13
                                # LOE rdx rbx rbp r12 r13 r14 r15b
..B5.14:                        # Preds ..B5.13
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #122.21
..___tag_value_test4.148:
#       get_clock()
        call      get_clock                                     #122.21
..___tag_value_test4.149:
                                # LOE rbx rbp r12 r13 r14 r15b xmm0
..B5.26:                        # Preds ..B5.14
                                # Execution count [1.00e+01]
        movaps    %xmm0, %xmm1                                  #122.21
                                # LOE rbx rbp r12 r13 r14 r15b xmm1
..B5.15:                        # Preds ..B5.26
                                # Execution count [1.00e+01]
        movsd     (%rsp), %xmm0                                 #123.9[spill]
        incb      %r15b                                         #115.5
        subsd     8(%rsp), %xmm1                                #123.27[spill]
        addsd     %xmm1, %xmm0                                  #123.9
        movsd     %xmm0, (%rsp)                                 #123.9[spill]
        cmpb      $10, %r15b                                    #115.5
        jb        ..B5.9        # Prob 90%                      #115.5
                                # LOE rbx rbp r12 r13 r14 r15b
..B5.16:                        # Preds ..B5.15
                                # Execution count [1.00e+00]
        movq      %rbp, %rdi                                    #128.5
#       free(void *)
        call      free                                          #128.5
                                # LOE rbx r12 r13 r14 r15
..B5.17:                        # Preds ..B5.16
                                # Execution count [1.00e+00]
        movq      %rbx, %rdi                                    #129.5
#       free(void *)
        call      free                                          #129.5
                                # LOE r12 r13 r14 r15
..B5.18:                        # Preds ..B5.17
                                # Execution count [1.00e+00]
        movsd     (%rsp), %xmm0                                 #131.5[spill]
        movl      $.L_2__STRING.3, %edi                         #131.5
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #131.5
        movl      $1, %eax                                      #131.5
..___tag_value_test4.150:
#       printf(const char *__restrict__, ...)
        call      printf                                        #131.5
..___tag_value_test4.151:
                                # LOE r12 r13 r14 r15
..B5.19:                        # Preds ..B5.18
                                # Execution count [1.00e+00]
        addq      $24, %rsp                                     #132.1
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #132.1
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #132.1
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #132.1
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #132.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #132.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #132.1
	.cfi_def_cfa_offset 8
        ret                                                     #132.1
        .align    16,0x90
	.cfi_endproc
                                # LOE
# mark_end;
	.type	test4,@function
	.size	test4,.-test4
	.data
# -- End  test4
	.text
# -- Begin  test5
	.text
# mark_begin;
       .align    16,0x90
	.globl test5
# --- test5()
test5:
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_test5.166:
..L167:
                                                        #135.1
        pushq     %r12                                          #135.1
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        pushq     %r13                                          #135.1
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        pushq     %r14                                          #135.1
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        pushq     %r15                                          #135.1
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        pushq     %rbx                                          #135.1
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        pushq     %rbp                                          #135.1
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        subq      $40, %rsp                                     #135.1
	.cfi_def_cfa_offset 96
        movl      $40000, %edi                                  #136.21
#       malloc(size_t)
        call      malloc                                        #136.21
                                # LOE rax rbx r12 r13 r14 r15
..B6.30:                        # Preds ..B6.1
                                # Execution count [1.00e+00]
        movq      %rax, %rbp                                    #136.21
                                # LOE rbx rbp r12 r13 r14 r15
..B6.2:                         # Preds ..B6.30
                                # Execution count [1.00e+00]
        movq      %rbp, %rsi                                    #144.9
        xorb      %dil, %dil                                    #141.5
        andq      $15, %rsi                                     #144.9
        pxor      %xmm0, %xmm0                                  #138.23
        movl      %esi, %eax                                    #144.9
        movq      %rsi, %r15                                    #144.9
        movl      %eax, %edx                                    #144.9
        movl      %eax, %ecx                                    #144.9
        negl      %edx                                          #144.9
        andl      $3, %ecx                                      #144.9
        movdqu    .L_2il0floatpacket.2(%rip), %xmm1             #145.20
        addl      $16, %edx                                     #144.9
        shrl      $2, %edx                                      #144.9
        paddd     %xmm1, %xmm1                                  #148.13
        movdqu    %xmm1, (%rsp)                                 #144.9[spill]
        movl      %eax, %ebx                                    #144.9
        movsd     %xmm0, 24(%rsp)                               #144.9[spill]
        movl      %edx, %r12d                                   #144.9
        movl      %ecx, %r14d                                   #144.9
        movb      %dil, %r13b                                   #144.9
                                # LOE rbp r15 ebx r12d r14d r13b
..B6.3:                         # Preds ..B6.22 ..B6.2
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #142.21
..___tag_value_test5.181:
#       get_clock()
        call      get_clock                                     #142.21
..___tag_value_test5.182:
                                # LOE rbp r15 ebx r12d r14d r13b xmm0
..B6.31:                        # Preds ..B6.3
                                # Execution count [1.00e+01]
        movsd     %xmm0, 16(%rsp)                               #142.21[spill]
                                # LOE rbp r15 ebx r12d r14d r13b
..B6.4:                         # Preds ..B6.31
                                # Execution count [1.00e+01]
        movl      %ebx, %r9d                                    #144.9
        testl     %ebx, %ebx                                    #144.9
        je        ..B6.9        # Prob 50%                      #144.9
                                # LOE rbp r15 ebx r9d r12d r14d r13b
..B6.5:                         # Preds ..B6.4
                                # Execution count [1.00e+01]
        testl     %r14d, %r14d                                  #144.9
        jne       ..B6.26       # Prob 10%                      #144.9
                                # LOE rbp r15 ebx r12d r14d r13b
..B6.6:                         # Preds ..B6.5
                                # Execution count [1.00e+01]
        movl      %r12d, %r10d                                  #144.9
        movl      %r12d, %r9d                                   #144.9
        xorl      %r8d, %r8d                                    #144.9
                                # LOE rbp r8 r10 r15 ebx r9d r12d r14d r13b
..B6.7:                         # Preds ..B6.7 ..B6.6
                                # Execution count [1.00e+05]
        movl      $50, (%rbp,%r8,4)                             #148.13
        incq      %r8                                           #144.9
        cmpq      %r10, %r8                                     #144.9
        jb        ..B6.7        # Prob 99%                      #144.9
        jmp       ..B6.10       # Prob 100%                     #144.9
                                # LOE rbp r8 r10 r15 ebx r9d r12d r14d r13b
..B6.9:                         # Preds ..B6.4
                                # Execution count [5.00e+00]
        movq      %r15, %r10                                    #144.9
                                # LOE rbp r10 r15 ebx r9d r12d r14d r13b
..B6.10:                        # Preds ..B6.7 ..B6.9
                                # Execution count [1.00e+01]
        negl      %r9d                                          #144.9
        andl      $15, %r9d                                     #144.9
        negl      %r9d                                          #144.9
        movdqu    (%rsp), %xmm0                                 #144.9[spill]
        lea       10000(%r9), %r8d                              #144.9
        movl      %r8d, %r11d                                   #144.9
                                # LOE rbp r10 r11 r15 ebx r8d r9d r12d r14d r13b xmm0
..B6.11:                        # Preds ..B6.11 ..B6.10
                                # Execution count [1.00e+05]
        movdqu    %xmm0, (%rbp,%r10,4)                          #148.13
        movdqu    %xmm0, 16(%rbp,%r10,4)                        #148.13
        movdqu    %xmm0, 32(%rbp,%r10,4)                        #148.13
        movdqu    %xmm0, 48(%rbp,%r10,4)                        #148.13
        addq      $16, %r10                                     #144.9
        cmpq      %r11, %r10                                    #144.9
        jb        ..B6.11       # Prob 99%                      #144.9
                                # LOE rbp r10 r11 r15 ebx r8d r9d r12d r14d r13b xmm0
..B6.12:                        # Preds ..B6.11
                                # Execution count [1.00e+01]
        addl      $10001, %r9d                                  #144.9
        cmpl      $10000, %r9d                                  #144.9
        ja        ..B6.21       # Prob 50%                      #144.9
                                # LOE rbp r11 r15 ebx r8d r12d r14d r13b
..B6.13:                        # Preds ..B6.12
                                # Execution count [1.00e+01]
        movl      %r8d, %eax                                    #144.9
        negl      %eax                                          #144.9
        addl      $10000, %eax                                  #144.9
        cmpl      $4, %eax                                      #144.9
        jb        ..B6.27       # Prob 10%                      #144.9
                                # LOE rbp r11 r15 eax ebx r8d r12d r14d r13b
..B6.14:                        # Preds ..B6.13
                                # Execution count [1.00e+01]
        movl      %eax, %r10d                                   #144.9
        xorl      %r9d, %r9d                                    #144.9
        movdqu    (%rsp), %xmm0                                 #144.9[spill]
        andl      $-4, %r10d                                    #144.9
                                # LOE rbp r11 r15 eax ebx r8d r9d r10d r12d r14d r13b xmm0
..B6.15:                        # Preds ..B6.15 ..B6.14
                                # Execution count [1.00e+05]
        addl      $4, %r9d                                      #144.9
        movdqu    %xmm0, (%rbp,%r11,4)                          #148.13
        addq      $4, %r11                                      #144.9
        cmpl      %r10d, %r9d                                   #144.9
        jb        ..B6.15       # Prob 99%                      #144.9
                                # LOE rbp r11 r15 eax ebx r8d r9d r10d r12d r14d r13b xmm0
..B6.17:                        # Preds ..B6.15 ..B6.27 ..B6.26
                                # Execution count [1.00e+01]
        cmpl      %eax, %r10d                                   #144.9
        jae       ..B6.21       # Prob 0%                       #144.9
                                # LOE rbp r15 eax ebx r8d r10d r12d r14d r13b
..B6.19:                        # Preds ..B6.17 ..B6.19
                                # Execution count [1.00e+05]
        lea       (%r8,%r10), %r9d                              #145.13
        incl      %r10d                                         #144.9
        movslq    %r9d, %r9                                     #145.13
        movl      $50, (%rbp,%r9,4)                             #148.13
        cmpl      %eax, %r10d                                   #144.9
        jb        ..B6.19       # Prob 99%                      #144.9
                                # LOE rbp r15 eax ebx r8d r10d r12d r14d r13b
..B6.21:                        # Preds ..B6.19 ..B6.17 ..B6.12
                                # Execution count [1.00e+01]
        xorl      %eax, %eax                                    #150.21
..___tag_value_test5.183:
#       get_clock()
        call      get_clock                                     #150.21
..___tag_value_test5.184:
                                # LOE rbp r15 ebx r12d r14d r13b xmm0
..B6.32:                        # Preds ..B6.21
                                # Execution count [1.00e+01]
        movaps    %xmm0, %xmm1                                  #150.21
                                # LOE rbp r15 ebx r12d r14d r13b xmm1
..B6.22:                        # Preds ..B6.32
                                # Execution count [1.00e+01]
        movsd     24(%rsp), %xmm0                               #151.9[spill]
        incb      %r13b                                         #141.5
        subsd     16(%rsp), %xmm1                               #151.27[spill]
        addsd     %xmm1, %xmm0                                  #151.9
        movsd     %xmm0, 24(%rsp)                               #151.9[spill]
        cmpb      $10, %r13b                                    #141.5
        jb        ..B6.3        # Prob 90%                      #141.5
                                # LOE rbp r15 ebx r12d r14d r13b xmm0
..B6.23:                        # Preds ..B6.22
                                # Execution count [1.00e+00]
        movl      $.L_2__STRING.4, %edi                         #156.5
        divsd     .L_2il0floatpacket.0(%rip), %xmm0             #156.5
        movl      $1, %eax                                      #156.5
..___tag_value_test5.185:
#       printf(const char *__restrict__, ...)
        call      printf                                        #156.5
..___tag_value_test5.186:
                                # LOE rbx rbp r12 r13 r14 r15
..B6.24:                        # Preds ..B6.23
                                # Execution count [1.00e+00]
        movq      %rbp, %rdi                                    #158.5
        addq      $40, %rsp                                     #158.5
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        popq      %rbp                                          #158.5
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        popq      %rbx                                          #158.5
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        popq      %r15                                          #158.5
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        popq      %r14                                          #158.5
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        popq      %r13                                          #158.5
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        popq      %r12                                          #158.5
	.cfi_def_cfa_offset 8
#       free(void *)
        jmp       free                                          #158.5
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -48
	.cfi_offset 6, -56
	.cfi_offset 12, -16
	.cfi_offset 13, -24
	.cfi_offset 14, -32
	.cfi_offset 15, -40
                                # LOE
..B6.26:                        # Preds ..B6.5
                                # Execution count [1.00e+00]: Infreq
        xorl      %r8d, %r8d                                    #144.9
        movl      $10000, %eax                                  #144.9
        xorl      %r10d, %r10d                                  #144.9
        jmp       ..B6.17       # Prob 100%                     #144.9
                                # LOE rbp r15 eax ebx r8d r10d r12d r14d r13b
..B6.27:                        # Preds ..B6.13
                                # Execution count [1.00e+00]: Infreq
        xorl      %r10d, %r10d                                  #144.9
        jmp       ..B6.17       # Prob 100%                     #144.9
        .align    16,0x90
	.cfi_endproc
                                # LOE rbp r15 eax ebx r8d r10d r12d r14d r13b
# mark_end;
	.type	test5,@function
	.size	test5,.-test5
	.data
# -- End  test5
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.1:
	.long	0x000003e8,0x000003e8,0x000003e8,0x000003e8
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,16
	.align 16
.L_2il0floatpacket.2:
	.long	0x00000019,0x00000019,0x00000019,0x00000019
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,16
	.align 8
.L_2il0floatpacket.0:
	.long	0x00000000,0x40240000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,8
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1701669236
	.long	1801548832
	.long	1713401445
	.long	1948283503
	.long	829715301
	.long	622869792
	.long	909192759
	.word	2662
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,31
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1701669236
	.long	1801548832
	.long	1713401445
	.long	1948283503
	.long	846492517
	.long	622869792
	.long	909192759
	.word	2662
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,31
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.long	1701669236
	.long	1801548832
	.long	1713401445
	.long	1948283503
	.long	863269733
	.long	622869792
	.long	909192759
	.word	2662
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,31
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1701669236
	.long	1801548832
	.long	1713401445
	.long	1948283503
	.long	880046949
	.long	622869792
	.long	909192759
	.word	2662
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,31
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	1701669236
	.long	1801548832
	.long	1713401445
	.long	1948283503
	.long	896824165
	.long	622869792
	.long	909192759
	.word	2662
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,31
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
# End
