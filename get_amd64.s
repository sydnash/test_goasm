#include "go_asm.h"
#include "funcdata.h"
#include "textflag.h"

TEXT ·Get1(SB),NOSPLIT,$0
	LEAQ t+0(FP), BX   //get value in FP, which is caller's SP   '
	MOVQ BX, ret+16(FP)
	MOVQ $0, ret+24(FP)
	RET


TEXT ·Get(SB),NOSPLIT,$32
	MOVQ t+0(FP), BX
	LEAQ t+0(FP), BX
	LEAQ 0(SP), AX //get value in sp
	MOVQ AX, ret+8(FP)

	CALL ·Get1(SB)
	MOVQ 16(SP), BX   //Get1's first reture value   which is equal to SP'
	MOVQ BX, ret+16(FP)
	RET
