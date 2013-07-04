	.syntax unified
	.cpu cortex-m3
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"core_cm3.c"
	.text
	.align	1
	.global	__get_PSP
	.thumb
	.thumb_func
	.type	__get_PSP, %function
__get_PSP:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 447 "../core_cm3.c" 1
	MRS r0, psp
	MOV r0, r0 
	BX  lr     
	
@ 0 "" 2
	.thumb
	.size	__get_PSP, .-__get_PSP
	.align	1
	.global	__set_PSP
	.thumb
	.thumb_func
	.type	__set_PSP, %function
__set_PSP:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 464 "../core_cm3.c" 1
	MSR psp, r0
	BX  lr     
	
@ 0 "" 2
	.thumb
	.size	__set_PSP, .-__set_PSP
	.align	1
	.global	__get_MSP
	.thumb
	.thumb_func
	.type	__get_MSP, %function
__get_MSP:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 481 "../core_cm3.c" 1
	MRS r0, msp
	MOV r0, r0 
	BX  lr     
	
@ 0 "" 2
	.thumb
	.size	__get_MSP, .-__get_MSP
	.align	1
	.global	__set_MSP
	.thumb
	.thumb_func
	.type	__set_MSP, %function
__set_MSP:
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ 498 "../core_cm3.c" 1
	MSR msp, r0
	BX  lr     
	
@ 0 "" 2
	.thumb
	.size	__set_MSP, .-__set_MSP
	.align	1
	.global	__get_BASEPRI
	.thumb
	.thumb_func
	.type	__get_BASEPRI, %function
__get_BASEPRI:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 513 "../core_cm3.c" 1
	MRS r0, basepri_max
@ 0 "" 2
	.thumb
	bx	lr
	.size	__get_BASEPRI, .-__get_BASEPRI
	.align	1
	.global	__set_BASEPRI
	.thumb
	.thumb_func
	.type	__set_BASEPRI, %function
__set_BASEPRI:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 526 "../core_cm3.c" 1
	MSR basepri, r0
@ 0 "" 2
	.thumb
	bx	lr
	.size	__set_BASEPRI, .-__set_BASEPRI
	.align	1
	.global	__get_PRIMASK
	.thumb
	.thumb_func
	.type	__get_PRIMASK, %function
__get_PRIMASK:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 540 "../core_cm3.c" 1
	MRS r0, primask
@ 0 "" 2
	.thumb
	bx	lr
	.size	__get_PRIMASK, .-__get_PRIMASK
	.align	1
	.global	__set_PRIMASK
	.thumb
	.thumb_func
	.type	__set_PRIMASK, %function
__set_PRIMASK:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 553 "../core_cm3.c" 1
	MSR primask, r0
@ 0 "" 2
	.thumb
	bx	lr
	.size	__set_PRIMASK, .-__set_PRIMASK
	.align	1
	.global	__get_FAULTMASK
	.thumb
	.thumb_func
	.type	__get_FAULTMASK, %function
__get_FAULTMASK:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 567 "../core_cm3.c" 1
	MRS r0, faultmask
@ 0 "" 2
	.thumb
	bx	lr
	.size	__get_FAULTMASK, .-__get_FAULTMASK
	.align	1
	.global	__set_FAULTMASK
	.thumb
	.thumb_func
	.type	__set_FAULTMASK, %function
__set_FAULTMASK:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 580 "../core_cm3.c" 1
	MSR faultmask, r0
@ 0 "" 2
	.thumb
	bx	lr
	.size	__set_FAULTMASK, .-__set_FAULTMASK
	.align	1
	.global	__get_CONTROL
	.thumb
	.thumb_func
	.type	__get_CONTROL, %function
__get_CONTROL:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 594 "../core_cm3.c" 1
	MRS r0, control
@ 0 "" 2
	.thumb
	bx	lr
	.size	__get_CONTROL, .-__get_CONTROL
	.align	1
	.global	__set_CONTROL
	.thumb
	.thumb_func
	.type	__set_CONTROL, %function
__set_CONTROL:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 607 "../core_cm3.c" 1
	MSR control, r0
@ 0 "" 2
	.thumb
	bx	lr
	.size	__set_CONTROL, .-__set_CONTROL
	.align	1
	.global	__REV
	.thumb
	.thumb_func
	.type	__REV, %function
__REV:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 623 "../core_cm3.c" 1
	rev r0, r0
@ 0 "" 2
	.thumb
	bx	lr
	.size	__REV, .-__REV
	.align	1
	.global	__REV16
	.thumb
	.thumb_func
	.type	__REV16, %function
__REV16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 639 "../core_cm3.c" 1
	rev16 r0, r0
@ 0 "" 2
	.thumb
	bx	lr
	.size	__REV16, .-__REV16
	.align	1
	.global	__REVSH
	.thumb
	.thumb_func
	.type	__REVSH, %function
__REVSH:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 655 "../core_cm3.c" 1
	revsh r0, r0
@ 0 "" 2
	.thumb
	bx	lr
	.size	__REVSH, .-__REVSH
	.align	1
	.global	__RBIT
	.thumb
	.thumb_func
	.type	__RBIT, %function
__RBIT:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 671 "../core_cm3.c" 1
	rbit r0, r0
@ 0 "" 2
	.thumb
	bx	lr
	.size	__RBIT, .-__RBIT
	.align	1
	.global	__LDREXB
	.thumb
	.thumb_func
	.type	__LDREXB, %function
__LDREXB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 687 "../core_cm3.c" 1
	ldrexb r0, [r0]
@ 0 "" 2
	.thumb
	uxtb	r0, r0
	bx	lr
	.size	__LDREXB, .-__LDREXB
	.align	1
	.global	__LDREXH
	.thumb
	.thumb_func
	.type	__LDREXH, %function
__LDREXH:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 703 "../core_cm3.c" 1
	ldrexh r0, [r0]
@ 0 "" 2
	.thumb
	uxth	r0, r0
	bx	lr
	.size	__LDREXH, .-__LDREXH
	.align	1
	.global	__LDREXW
	.thumb
	.thumb_func
	.type	__LDREXW, %function
__LDREXW:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 719 "../core_cm3.c" 1
	ldrex r0, [r0]
@ 0 "" 2
	.thumb
	bx	lr
	.size	__LDREXW, .-__LDREXW
	.align	1
	.global	__STREXB
	.thumb
	.thumb_func
	.type	__STREXB, %function
__STREXB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 736 "../core_cm3.c" 1
	strexb r0, r0, [r1]
@ 0 "" 2
	.thumb
	bx	lr
	.size	__STREXB, .-__STREXB
	.align	1
	.global	__STREXH
	.thumb
	.thumb_func
	.type	__STREXH, %function
__STREXH:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 753 "../core_cm3.c" 1
	strexh r0, r0, [r1]
@ 0 "" 2
	.thumb
	bx	lr
	.size	__STREXH, .-__STREXH
	.align	1
	.global	__STREXW
	.thumb
	.thumb_func
	.type	__STREXW, %function
__STREXW:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ 770 "../core_cm3.c" 1
	strex r0, r0, [r1]
@ 0 "" 2
	.thumb
	bx	lr
	.size	__STREXW, .-__STREXW
	.ident	"GCC: (Linaro GCC 4.7-2013.01) 4.7.3 20130102 (prerelease)"
