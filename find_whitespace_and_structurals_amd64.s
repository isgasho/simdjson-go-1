//+build !noasm !appengine
// AUTO-GENERATED BY C2GOASM -- DO NOT EDIT

DATA LCDATA1<>+0x000(SB)/8, $0x0000000000000010
DATA LCDATA1<>+0x008(SB)/8, $0x00000902010c0800
DATA LCDATA1<>+0x010(SB)/8, $0x0000000000000010
DATA LCDATA1<>+0x018(SB)/8, $0x00000902010c0800
DATA LCDATA1<>+0x020(SB)/8, $0x0000000000000010
DATA LCDATA1<>+0x028(SB)/8, $0x00000902010c0800
DATA LCDATA1<>+0x030(SB)/8, $0x0000000000000010
DATA LCDATA1<>+0x038(SB)/8, $0x00000902010c0800
DATA LCDATA1<>+0x040(SB)/8, $0x7f7f7f7f7f7f7f7f
DATA LCDATA1<>+0x048(SB)/8, $0x7f7f7f7f7f7f7f7f
DATA LCDATA1<>+0x050(SB)/8, $0x7f7f7f7f7f7f7f7f
DATA LCDATA1<>+0x058(SB)/8, $0x7f7f7f7f7f7f7f7f
DATA LCDATA1<>+0x060(SB)/8, $0x7f7f7f7f7f7f7f7f
DATA LCDATA1<>+0x068(SB)/8, $0x7f7f7f7f7f7f7f7f
DATA LCDATA1<>+0x070(SB)/8, $0x7f7f7f7f7f7f7f7f
DATA LCDATA1<>+0x078(SB)/8, $0x7f7f7f7f7f7f7f7f
DATA LCDATA1<>+0x080(SB)/8, $0x0100010004120008
DATA LCDATA1<>+0x088(SB)/8, $0x0000010203000000
DATA LCDATA1<>+0x090(SB)/8, $0x0100010004120008
DATA LCDATA1<>+0x098(SB)/8, $0x0000010203000000
DATA LCDATA1<>+0x0a0(SB)/8, $0x0100010004120008
DATA LCDATA1<>+0x0a8(SB)/8, $0x0000010203000000
DATA LCDATA1<>+0x0b0(SB)/8, $0x0100010004120008
DATA LCDATA1<>+0x0b8(SB)/8, $0x0000010203000000
DATA LCDATA1<>+0x0c0(SB)/8, $0x0707070707070707
DATA LCDATA1<>+0x0c8(SB)/8, $0x0707070707070707
DATA LCDATA1<>+0x0d0(SB)/8, $0x0707070707070707
DATA LCDATA1<>+0x0d8(SB)/8, $0x0707070707070707
DATA LCDATA1<>+0x0e0(SB)/8, $0x0707070707070707
DATA LCDATA1<>+0x0e8(SB)/8, $0x0707070707070707
DATA LCDATA1<>+0x0f0(SB)/8, $0x0707070707070707
DATA LCDATA1<>+0x0f8(SB)/8, $0x0707070707070707
DATA LCDATA1<>+0x100(SB)/8, $0x1818181818181818
DATA LCDATA1<>+0x108(SB)/8, $0x1818181818181818
DATA LCDATA1<>+0x110(SB)/8, $0x1818181818181818
DATA LCDATA1<>+0x118(SB)/8, $0x1818181818181818
DATA LCDATA1<>+0x120(SB)/8, $0x1818181818181818
DATA LCDATA1<>+0x128(SB)/8, $0x1818181818181818
DATA LCDATA1<>+0x130(SB)/8, $0x1818181818181818
DATA LCDATA1<>+0x138(SB)/8, $0x1818181818181818
GLOBL LCDATA1<>(SB), 8, $320

TEXT ·_find_whitespace_and_structurals(SB), $0-24

    MOVQ input+0(FP), DI
    MOVQ whitespace+8(FP), DX
    MOVQ structurals+16(FP), CX

    VMOVDQU    (DI), Y8          // load low 32-bytes
    VMOVDQU    0x20(DI), Y9      // load high 32-bytes

    CALL ·__find_whitespace_and_structurals(SB)

    VZEROUPPER
    RET


TEXT ·__find_whitespace_and_structurals(SB), $0
    LEAQ LCDATA1<>(SB), BP

    VMOVDQA   Y8, Y0             // vmovdqu    ymm0, yword [rdi]
    VMOVDQA   Y9, Y1             // vmovdqu    ymm1, yword [rsi]
    VMOVDQA   (BP), Y2           // vmovdqa    ymm2, yword 0[rbp] /* [rip + LCPI0_0] */
    VPSHUFB   Y0, Y2, Y3         // vpshufb    ymm3, ymm2, ymm0
    VPSRLD    $4, Y0, Y0         // vpsrld    ymm0, ymm0, 4
    VMOVDQA   0x40(BP), Y4       // vmovdqa    ymm4, yword 32[rbp] /* [rip + LCPI0_1] */
    VPAND     Y4, Y0, Y0         // vpand    ymm0, ymm0, ymm4
    VMOVDQA   0x80(BP), Y5       // vmovdqa    ymm5, yword 64[rbp] /* [rip + LCPI0_2] */
    VPSHUFB   Y0, Y5, Y0         // vpshufb    ymm0, ymm5, ymm0
    VPAND     Y3, Y0, Y0         // vpand    ymm0, ymm0, ymm3
    VPSHUFB   Y1, Y2, Y2         // vpshufb    ymm2, ymm2, ymm1
    VPSRLD    $4, Y1, Y1         // vpsrld    ymm1, ymm1, 4
    VPAND     Y4, Y1, Y1         // vpand    ymm1, ymm1, ymm4
    VPSHUFB   Y1, Y5, Y1         // vpshufb    ymm1, ymm5, ymm1
    VPAND     Y2, Y1, Y1         // vpand    ymm1, ymm1, ymm2
    VMOVDQA   0xc0(BP), Y2       // vmovdqa    ymm2, yword 96[rbp] /* [rip + LCPI0_3] */
    VPAND     Y2, Y0, Y3         // vpand    ymm3, ymm0, ymm2
    VPXOR     Y4, Y4, Y4         // vpxor    ymm4, ymm4, ymm4
    VPCMPEQB  Y4, Y3, Y3         // vpcmpeqb    ymm3, ymm3, ymm4
    VPAND     Y2, Y1, Y2         // vpand    ymm2, ymm1, ymm2
    VPCMPEQB  Y4, Y2, Y2         // vpcmpeqb    ymm2, ymm2, ymm4
    VPMOVMSKB Y3, AX             // vpmovmskb    eax, ymm3
    VPMOVMSKB Y2, SI             // vpmovmskb    esi, ymm2
    SHLQ      $32, SI            // shl    rsi, 32
    ORQ       AX, SI             // or    rsi, rax
    NOTQ      SI                 // not    rsi
    MOVQ      SI, (CX)           // mov    qword [rcx], rsi
    VMOVDQA   0x100(BP), Y2      // vmovdqa    ymm2, yword 128[rbp] /* [rip + LCPI0_4] */
    VPAND     Y2, Y0, Y0         // vpand    ymm0, ymm0, ymm2
    VPCMPEQB  Y4, Y0, Y0         // vpcmpeqb    ymm0, ymm0, ymm4
    VPAND     Y2, Y1, Y1         // vpand    ymm1, ymm1, ymm2
    VPCMPEQB  Y4, Y1, Y1         // vpcmpeqb    ymm1, ymm1, ymm4
    VPMOVMSKB Y0, AX             // vpmovmskb    eax, ymm0
    VPMOVMSKB Y1, CX             // vpmovmskb    ecx, ymm1
    SHLQ      $32, CX            // shl    rcx, 32
    ORQ       AX, CX             // or    rcx, rax
    NOTQ      CX                 // not    rcx
    MOVQ      CX, (DX)           // mov    qword [rdx], rcx
    RET


TEXT ·_find_whitespace_and_structurals_avx512(SB), $0-24

    MOVQ input+0(FP), DI
    MOVQ structurals+8(FP), CX

    VMOVDQU32    (DI), Z8

    CALL ·__init_whitespace_and_structurals_avx512(SB)
    CALL ·__find_whitespace_and_structurals_avx512(SB)

    VZEROUPPER
    KMOVQ K1, DX
    MOVQ  DX, whitespace+16(FP)
    RET

#define ZERO_CONST   Z20
#define WSAS_CONST_1 Z21
#define WSAS_CONST_2 Z22
#define WSAS_CONST_3 Z23
#define WSAS_CONST_4 Z24
#define WSAS_CONST_5 Z25

TEXT ·__init_whitespace_and_structurals_avx512(SB), $0
    LEAQ        LCDATA1<>(SB), BP
    VPXORD      ZERO_CONST, ZERO_CONST, ZERO_CONST
    VMOVDQU32   0x000(BP), WSAS_CONST_1
    VMOVDQU32   0x040(BP), WSAS_CONST_2
    VMOVDQU32   0x080(BP), WSAS_CONST_3
    VMOVDQU32   0x0c0(BP), WSAS_CONST_4
    VMOVDQU32   0x100(BP), WSAS_CONST_5
    RET

TEXT ·__find_whitespace_and_structurals_avx512(SB), $0
    VPSHUFB     Z8, WSAS_CONST_1, Z3
    VPSRLD      $4, Z8, Z0
    VPANDD      WSAS_CONST_2, Z0, Z0
    VPSHUFB     Z0, WSAS_CONST_3, Z0
    VPANDD      Z3, Z0, Z0
    VPANDD      WSAS_CONST_4, Z0, Z3
    VPCMPEQB    ZERO_CONST, Z3, K1
    KMOVQ       K1, SI
    NOTQ        SI
    MOVQ        SI, (CX)
    VPANDD      WSAS_CONST_5, Z0, Z0
    VPCMPEQB    ZERO_CONST, Z0, K1
    KNOTQ       K1, K1
    RET
