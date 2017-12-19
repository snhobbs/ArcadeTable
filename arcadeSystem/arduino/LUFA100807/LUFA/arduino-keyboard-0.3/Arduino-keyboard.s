	.file	"Arduino-keyboard.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB87:
	.file 1 "Arduino-keyboard.c"
	.loc 1 124 0
	.cfi_startproc
	push r11
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 11, -2
	push r12
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 126 0
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
	.loc 1 127 0
	ldi r24,lo8(24)
/* #APP */
 ;  127 "Arduino-keyboard.c" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r24
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
.LVL0:
/* #NOAPP */
.LBB55:
.LBB56:
	.file 2 "../../LUFA/Drivers/Peripheral/Serial.h"
	.loc 2 102 0
	ldi r24,lo8(-52)
	mov r12,r24
	mov r13,__zero_reg__
	ldi r24,lo8(103)
	ldi r25,0
	movw r30,r12
	std Z+1,r25
	st Z,r24
	.loc 2 104 0
	ldi r25,lo8(-54)
	mov r14,r25
	mov r15,__zero_reg__
	ldi r18,lo8(6)
	mov r11,r18
	movw r30,r14
	st Z,r11
	.loc 2 105 0
	ldi r16,lo8(-56)
	ldi r17,0
	movw r30,r16
	st Z,__zero_reg__
	.loc 2 106 0
	ldi r28,lo8(-55)
	ldi r29,0
	ldi r24,lo8(24)
	st Y,r24
	.loc 2 108 0
	sbi 0xa,3
	.loc 2 109 0
	sbi 0xb,2
.LBE56:
.LBE55:
	.loc 1 131 0
	call USB_Init
.LVL1:
	.loc 1 134 0
	ldi r24,lo8(4)
	out 0x25,r24
	.loc 1 137 0
	sbi 0xb,7
	.loc 1 138 0
	sbi 0xa,7
	.loc 1 141 0
	st Y,__zero_reg__
	.loc 1 142 0
	movw r30,r16
	st Z,__zero_reg__
	.loc 1 143 0
	movw r30,r14
	st Z,__zero_reg__
	.loc 1 146 0
	ldi r24,lo8(-49)
	ldi r25,0
	movw r30,r12
	std Z+1,r25
	st Z,r24
	.loc 1 148 0
	movw r30,r14
	st Z,r11
	.loc 1 149 0
	ldi r24,lo8(2)
	movw r30,r16
	st Z,r24
	.loc 1 150 0
	ldi r24,lo8(-104)
	st Y,r24
/* epilogue start */
	.loc 1 151 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
	.cfi_endproc
.LFE87:
	.size	SetupHardware, .-SetupHardware
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB86:
	.loc 1 108 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 109 0
	call SetupHardware
.LVL2:
.LBB64:
.LBB65:
	.file 3 "Lib/LightweightRingBuff.h"
	.loc 3 87 0
	in r18,__SREG__
.LVL3:
.LBB66:
.LBB67:
	.file 4 "/usr/lib/avr/include/util/atomic.h"
	.loc 4 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL4:
/* #NOAPP */
.LBE67:
.LBE66:
	.loc 3 89 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	.loc 3 90 0
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LVL5:
.LBB68:
.LBB69:
	.loc 4 70 0
	out __SREG__,r18
	.loc 4 71 0
.LBE69:
.LBE68:
.LBE65:
.LBE64:
	.loc 1 113 0
/* #APP */
 ;  113 "Arduino-keyboard.c" 1
	sei
 ;  0 "" 2
.LVL6:
/* #NOAPP */
.L3:
	.loc 1 117 0 discriminator 1
	ldi r24,lo8(Keyboard_HID_Interface)
	ldi r25,hi8(Keyboard_HID_Interface)
	call HID_Device_USBTask
.LVL7:
	.loc 1 118 0 discriminator 1
	call USB_USBTask
.LVL8:
	rjmp .L3
	.cfi_endproc
.LFE86:
	.size	main, .-main
	.section	.text.EVENT_USB_Device_Connect,"ax",@progbits
.global	EVENT_USB_Device_Connect
	.type	EVENT_USB_Device_Connect, @function
EVENT_USB_Device_Connect:
.LFB88:
	.loc 1 155 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE88:
	.size	EVENT_USB_Device_Connect, .-EVENT_USB_Device_Connect
	.section	.text.EVENT_USB_Device_Disconnect,"ax",@progbits
.global	EVENT_USB_Device_Disconnect
	.type	EVENT_USB_Device_Disconnect, @function
EVENT_USB_Device_Disconnect:
.LFB89:
	.loc 1 161 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE89:
	.size	EVENT_USB_Device_Disconnect, .-EVENT_USB_Device_Disconnect
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB90:
	.loc 1 167 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 170 0
	ldi r24,lo8(Keyboard_HID_Interface)
	ldi r25,hi8(Keyboard_HID_Interface)
	call HID_Device_ConfigureEndpoints
.LVL9:
.LBB70:
.LBB71:
	.file 5 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/Device.h"
	.loc 5 150 0
	ldi r30,lo8(-30)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ret
.LBE71:
.LBE70:
	.cfi_endproc
.LFE90:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB91:
	.loc 1 177 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 178 0
	ldi r24,lo8(Keyboard_HID_Interface)
	ldi r25,hi8(Keyboard_HID_Interface)
	jmp HID_Device_ProcessControlRequest
.LVL10:
	.cfi_endproc
.LFE91:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_USB_Device_StartOfFrame,"ax",@progbits
.global	EVENT_USB_Device_StartOfFrame
	.type	EVENT_USB_Device_StartOfFrame, @function
EVENT_USB_Device_StartOfFrame:
.LFB92:
	.loc 1 183 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL11:
.LBB72:
.LBB73:
	.file 6 "../../LUFA/Drivers/USB/Class/Device/HID.h"
	.loc 6 201 0
	lds r24,Keyboard_HID_Interface+11
	lds r25,Keyboard_HID_Interface+11+1
	sbiw r24,0
	breq .L9
	.loc 6 202 0
	sbiw r24,1
	sts Keyboard_HID_Interface+11+1,r25
	sts Keyboard_HID_Interface+11,r24
.L9:
	ret
.LBE73:
.LBE72:
	.cfi_endproc
.LFE92:
	.size	EVENT_USB_Device_StartOfFrame, .-EVENT_USB_Device_StartOfFrame
	.section	.text.CALLBACK_HID_Device_CreateHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_CreateHIDReport
	.type	CALLBACK_HID_Device_CreateHIDReport, @function
CALLBACK_HID_Device_CreateHIDReport:
.LFB93:
	.loc 1 203 0
	.cfi_startproc
.LVL12:
	push r16
.LCFI9:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL13:
.LBB90:
.LBB91:
.LBB92:
	.loc 3 111 0
	in r25,__SREG__
.LVL14:
.LBB93:
.LBB94:
	.loc 4 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL15:
/* #NOAPP */
.LBE94:
.LBE93:
	.loc 3 113 0
	lds r24,USARTtoUSB_Buffer+132
.LVL16:
.LBB95:
.LBB96:
	.loc 4 70 0
	out __SREG__,r25
	.loc 4 71 0
.LBE96:
.LBE95:
.LBE92:
.LBE91:
.LBE90:
	.loc 1 209 0
	cpi r24,lo8(16)
	brlo .L15
	ldi r26,lo8(keyboardData)
	ldi r27,hi8(keyboardData)
.LBB97:
.LBB98:
	.loc 3 187 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
.LVL17:
.L18:
	.loc 3 184 0
	lds r30,USARTtoUSB_Buffer+130
	lds r31,USARTtoUSB_Buffer+130+1
	ld r21,Z+
.LVL18:
	.loc 3 186 0
	sts USARTtoUSB_Buffer+130+1,r31
	sts USARTtoUSB_Buffer+130,r30
	subi r30,lo8(USARTtoUSB_Buffer+128)
	sbci r31,hi8(USARTtoUSB_Buffer+128)
	brne .L16
	.loc 3 187 0
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.L16:
.LBB99:
	.loc 3 189 0
	in r22,__SREG__
.LVL19:
.LBB100:
.LBB101:
	.loc 4 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL20:
/* #NOAPP */
.LBE101:
.LBE100:
	.loc 3 191 0
	lds r20,USARTtoUSB_Buffer+132
	subi r20,lo8(-(-1))
	sts USARTtoUSB_Buffer+132,r20
.LVL21:
.LBB102:
.LBB103:
	.loc 4 70 0
	out __SREG__,r22
	.loc 4 71 0
.LBE103:
.LBE102:
.LBE99:
.LBE98:
.LBE97:
	.loc 1 211 0
	st X+,r21
.LVL22:
	.loc 1 210 0
	ldi r30,hi8(keyboardData+16)
	cpi r26,lo8(keyboardData+16)
	cpc r27,r30
	brne .L18
	.loc 1 215 0
	lds r24,ledReport
.LVL23:
.L20:
.LBB104:
.LBB105:
	.loc 2 142 0
	lds r25,200
	sbrs r25,5
	rjmp .L20
	.loc 2 143 0
	sts 206,r24
.LVL24:
.L15:
	ldi r26,lo8(keyboardData)
	ldi r27,hi8(keyboardData)
	movw r30,r18
.LVL25:
.L22:
.LBE105:
.LBE104:
	.loc 1 219 0 discriminator 2
	ld r24,X+
.LVL26:
	st Z+,r24
.LVL27:
	.loc 1 218 0 discriminator 2
	ldi r20,hi8(keyboardData+16)
	cpi r26,lo8(keyboardData+16)
	cpc r27,r20
	brne .L22
	.loc 1 222 0
	ldi r24,lo8(8)
	ldi r25,0
	movw r30,r16
	std Z+1,r25
	st Z,r24
	.loc 1 224 0
	ldi r24,0
/* epilogue start */
	pop r17
	pop r16
.LVL28:
	ret
	.cfi_endproc
.LFE93:
	.size	CALLBACK_HID_Device_CreateHIDReport, .-CALLBACK_HID_Device_CreateHIDReport
	.section	.text.CALLBACK_HID_Device_ProcessHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_ProcessHIDReport
	.type	CALLBACK_HID_Device_ProcessHIDReport, @function
CALLBACK_HID_Device_ProcessHIDReport:
.LFB94:
	.loc 1 239 0
	.cfi_startproc
.LVL29:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 241 0
	movw r30,r18
	ld r24,Z
.LVL30:
	sts ledReport,r24
	ret
	.cfi_endproc
.LFE94:
	.size	CALLBACK_HID_Device_ProcessHIDReport, .-CALLBACK_HID_Device_ProcessHIDReport
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
.LFB95:
	.loc 1 248 0
	.cfi_startproc
	push r1
.LCFI11:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI13:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r24
.LCFI14:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI15:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI16:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI17:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 249 0
	lds r24,206
.LVL31:
	.loc 1 251 0
	in r25,0x1e
	cpi r25,lo8(4)
	brne .L24
.LVL32:
.LBB113:
.LBB114:
	.loc 3 161 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	st Z,r24
	.loc 3 163 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	movw r24,r30
.LVL33:
	adiw r24,1
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	subi r24,lo8(USARTtoUSB_Buffer+128)
	sbci r25,hi8(USARTtoUSB_Buffer+128)
	brne .L26
	.loc 3 164 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
.L26:
.LBB115:
	.loc 3 166 0
	in r25,__SREG__
.LVL34:
.LBB116:
.LBB117:
	.loc 4 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL35:
/* #NOAPP */
.LBE117:
.LBE116:
	.loc 3 168 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LVL36:
.LBB118:
.LBB119:
	.loc 4 70 0
	out __SREG__,r25
	.loc 4 71 0
.LVL37:
.L24:
/* epilogue start */
.LBE119:
.LBE118:
.LBE115:
.LBE114:
.LBE113:
	.loc 1 253 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE95:
	.size	__vector_23, .-__vector_23
.global	ledReport
	.section .bss
	.type	ledReport, @object
	.size	ledReport, 1
ledReport:
	.zero	1
.global	keyboardData
	.type	keyboardData, @object
	.size	keyboardData, 16
keyboardData:
	.zero	16
	.comm	USARTtoUSB_Buffer,133,1
.global	Keyboard_HID_Interface
	.data
	.type	Keyboard_HID_Interface, @object
	.size	Keyboard_HID_Interface, 13
Keyboard_HID_Interface:
	.byte	0
	.byte	1
	.word	8
	.byte	0
	.word	PrevKeyboardHIDReportBuffer
	.byte	8
	.zero	5
	.comm	PrevKeyboardHIDReportBuffer,8,1
	.text
.Letext0:
	.file 7 "/usr/lib/avr/include/stdint.h"
	.file 8 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/USBController.h"
	.file 9 "../../LUFA/Drivers/USB/HighLevel/USBTask.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8d8
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF73
	.byte	0x1
	.long	.LASF74
	.long	.LASF75
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x7
	.byte	0x7a
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x7
	.byte	0x7c
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x7
	.byte	0x7e
	.long	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF76
	.byte	0x1
	.byte	0x5
	.byte	0x72
	.long	0xba
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.uleb128 0x6
	.long	.LASF13
	.sleb128 2
	.uleb128 0x6
	.long	.LASF14
	.sleb128 3
	.uleb128 0x6
	.long	.LASF15
	.sleb128 4
	.uleb128 0x6
	.long	.LASF16
	.sleb128 5
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.uleb128 0x8
	.byte	0x8
	.byte	0x6
	.byte	0x56
	.long	0x119
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.byte	0x58
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.byte	0x5a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.byte	0x5b
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.byte	0x5c
	.long	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.byte	0x5e
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.byte	0x6a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF23
	.uleb128 0x8
	.byte	0x5
	.byte	0x6
	.byte	0x73
	.long	0x153
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.byte	0x75
	.long	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.byte	0x76
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.byte	0x77
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.byte	0xd
	.byte	0x6
	.byte	0x54
	.long	0x178
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.byte	0x70
	.long	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.byte	0x79
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.long	0xbc
	.uleb128 0x3
	.long	.LASF29
	.byte	0x6
	.byte	0x7c
	.long	0x153
	.uleb128 0x8
	.byte	0x85
	.byte	0x3
	.byte	0x46
	.long	0x1cb
	.uleb128 0x9
	.long	.LASF30
	.byte	0x3
	.byte	0x48
	.long	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"In"
	.byte	0x3
	.byte	0x49
	.long	0x1db
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.string	"Out"
	.byte	0x3
	.byte	0x4a
	.long	0x1db
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x3
	.byte	0x4b
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0xc
	.long	0x30
	.long	0x1db
	.uleb128 0xd
	.long	0x82
	.byte	0x7f
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x30
	.uleb128 0x3
	.long	.LASF32
	.byte	0x3
	.byte	0x4c
	.long	0x188
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF33
	.uleb128 0xf
	.long	.LASF36
	.byte	0x4
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x20c
	.uleb128 0x10
	.string	"__s"
	.byte	0x4
	.byte	0x44
	.long	0x20c
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x212
	.uleb128 0xa
	.long	0x30
	.uleb128 0x11
	.long	.LASF77
	.byte	0x4
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x12
	.long	.LASF44
	.byte	0x3
	.byte	0x6b
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x264
	.uleb128 0x13
	.long	.LASF30
	.byte	0x3
	.byte	0x6b
	.long	0x264
	.uleb128 0x14
	.long	.LASF31
	.byte	0x3
	.byte	0x6d
	.long	0x30
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF34
	.byte	0x3
	.byte	0x6f
	.long	0x30
	.uleb128 0x14
	.long	.LASF35
	.byte	0x3
	.byte	0x6f
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x269
	.uleb128 0xe
	.byte	0x2
	.long	0x1e1
	.uleb128 0x16
	.long	.LASF78
	.byte	0x5
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.long	.LASF37
	.byte	0x6
	.byte	0xc7
	.byte	0x1
	.byte	0x3
	.long	0x291
	.uleb128 0x13
	.long	.LASF38
	.byte	0x6
	.byte	0xc7
	.long	0x291
	.byte	0
	.uleb128 0xa
	.long	0x296
	.uleb128 0xe
	.byte	0x2
	.long	0x17d
	.uleb128 0xf
	.long	.LASF39
	.byte	0x2
	.byte	0x8c
	.byte	0x1
	.byte	0x3
	.long	0x2b5
	.uleb128 0x13
	.long	.LASF40
	.byte	0x2
	.byte	0x8c
	.long	0x2b5
	.byte	0
	.uleb128 0xa
	.long	0x1ec
	.uleb128 0xf
	.long	.LASF41
	.byte	0x3
	.byte	0x55
	.byte	0x1
	.byte	0x3
	.long	0x2eb
	.uleb128 0x13
	.long	.LASF30
	.byte	0x3
	.byte	0x55
	.long	0x264
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF34
	.byte	0x3
	.byte	0x57
	.long	0x30
	.uleb128 0x14
	.long	.LASF35
	.byte	0x3
	.byte	0x57
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF42
	.byte	0x3
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.long	0x327
	.uleb128 0x13
	.long	.LASF30
	.byte	0x3
	.byte	0x9e
	.long	0x264
	.uleb128 0x13
	.long	.LASF43
	.byte	0x3
	.byte	0x9f
	.long	0x212
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF34
	.byte	0x3
	.byte	0xa6
	.long	0x30
	.uleb128 0x14
	.long	.LASF35
	.byte	0x3
	.byte	0xa6
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF45
	.byte	0x3
	.byte	0xb6
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x367
	.uleb128 0x13
	.long	.LASF30
	.byte	0x3
	.byte	0xb6
	.long	0x264
	.uleb128 0x14
	.long	.LASF43
	.byte	0x3
	.byte	0xb8
	.long	0x30
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF34
	.byte	0x3
	.byte	0xbd
	.long	0x30
	.uleb128 0x14
	.long	.LASF35
	.byte	0x3
	.byte	0xbd
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF46
	.byte	0x2
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0x38b
	.uleb128 0x13
	.long	.LASF47
	.byte	0x2
	.byte	0x63
	.long	0x38b
	.uleb128 0x13
	.long	.LASF48
	.byte	0x2
	.byte	0x64
	.long	0x390
	.byte	0
	.uleb128 0xa
	.long	0x62
	.uleb128 0xa
	.long	0x119
	.uleb128 0x17
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.long	.LFB87
	.long	.LFE87
	.long	.LLST0
	.byte	0x1
	.long	0x3da
	.uleb128 0x18
	.long	0x367
	.long	.LBB55
	.long	.LBE55
	.byte	0x1
	.byte	0x82
	.long	0x3d0
	.uleb128 0x19
	.long	0x374
	.word	0x2580
	.uleb128 0x1a
	.long	0x37f
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL1
	.long	0x88a
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0x42
	.long	.LFB86
	.long	.LFE86
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x48e
	.uleb128 0x18
	.long	0x2ba
	.long	.LBB64
	.long	.LBE64
	.byte	0x1
	.byte	0x6f
	.long	0x45f
	.uleb128 0x1d
	.long	0x2c7
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1e
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x1f
	.long	0x2d3
	.long	.LLST1
	.uleb128 0x1f
	.long	0x2de
	.long	.LLST2
	.uleb128 0x20
	.long	0x217
	.long	.LBB66
	.long	.LBE66
	.byte	0x3
	.byte	0x57
	.uleb128 0x21
	.long	0x1f3
	.long	.LBB68
	.long	.LBE68
	.byte	0x3
	.byte	0x57
	.uleb128 0x1d
	.long	0x200
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1056
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL2
	.long	0x395
	.uleb128 0x22
	.long	.LVL7
	.long	0x895
	.long	0x484
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_HID_Interface
	.byte	0
	.uleb128 0x1b
	.long	.LVL8
	.long	0x8a9
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x4fc
	.uleb128 0x20
	.long	0x26f
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.byte	0xac
	.uleb128 0x26
	.long	.LVL9
	.long	0x8b3
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_HID_Interface
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x530
	.uleb128 0x27
	.long	.LVL10
	.byte	0x1
	.long	0x8cb
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_HID_Interface
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	.LFB92
	.long	.LFE92
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x567
	.uleb128 0x21
	.long	0x278
	.long	.LBB72
	.long	.LBE72
	.byte	0x1
	.byte	0xb8
	.uleb128 0x1d
	.long	0x285
	.byte	0x6
	.byte	0x3
	.long	Keyboard_HID_Interface
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.long	0x119
	.long	.LFB93
	.long	.LFE93
	.long	.LLST3
	.byte	0x1
	.long	0x700
	.uleb128 0x29
	.long	.LASF38
	.byte	0x1
	.byte	0xc6
	.long	0x291
	.long	.LLST4
	.uleb128 0x29
	.long	.LASF57
	.byte	0x1
	.byte	0xc7
	.long	0x700
	.long	.LLST5
	.uleb128 0x29
	.long	.LASF58
	.byte	0x1
	.byte	0xc8
	.long	0x212
	.long	.LLST6
	.uleb128 0x2a
	.long	.LASF59
	.byte	0x1
	.byte	0xc9
	.long	0xba
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x29
	.long	.LASF60
	.byte	0x1
	.byte	0xca
	.long	0x705
	.long	.LLST7
	.uleb128 0x2b
	.long	.LASF61
	.byte	0x1
	.byte	0xcc
	.long	0x1db
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2c
	.string	"ind"
	.byte	0x1
	.byte	0xcd
	.long	0x42
	.long	.LLST8
	.uleb128 0x14
	.long	.LASF62
	.byte	0x1
	.byte	0xcf
	.long	0x30
	.uleb128 0x18
	.long	0x224
	.long	.LBB90
	.long	.LBE90
	.byte	0x1
	.byte	0xcf
	.long	0x676
	.uleb128 0x1d
	.long	0x235
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1e
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x1f
	.long	0x240
	.long	.LLST9
	.uleb128 0x1e
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x1f
	.long	0x24c
	.long	.LLST10
	.uleb128 0x1f
	.long	0x257
	.long	.LLST11
	.uleb128 0x20
	.long	0x217
	.long	.LBB93
	.long	.LBE93
	.byte	0x3
	.byte	0x6f
	.uleb128 0x21
	.long	0x1f3
	.long	.LBB95
	.long	.LBE95
	.byte	0x3
	.byte	0x6f
	.uleb128 0x2d
	.long	0x200
	.long	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x327
	.long	.LBB97
	.long	.LBE97
	.byte	0x1
	.byte	0xd3
	.long	0x6e6
	.uleb128 0x2e
	.long	0x338
	.uleb128 0x1e
	.long	.LBB98
	.long	.LBE98
	.uleb128 0x1f
	.long	0x343
	.long	.LLST13
	.uleb128 0x1e
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x1f
	.long	0x34f
	.long	.LLST14
	.uleb128 0x1f
	.long	0x35a
	.long	.LLST15
	.uleb128 0x20
	.long	0x217
	.long	.LBB100
	.long	.LBE100
	.byte	0x3
	.byte	0xbd
	.uleb128 0x21
	.long	0x1f3
	.long	.LBB102
	.long	.LBE102
	.byte	0x3
	.byte	0xbd
	.uleb128 0x2d
	.long	0x200
	.long	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x29c
	.long	.LBB104
	.long	.LBE104
	.byte	0x1
	.byte	0xd7
	.uleb128 0x2d
	.long	0x2a9
	.long	.LLST17
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x1db
	.uleb128 0xa
	.long	0x70a
	.uleb128 0xe
	.byte	0x2
	.long	0x49
	.uleb128 0x25
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x778
	.uleb128 0x29
	.long	.LASF38
	.byte	0x1
	.byte	0xea
	.long	0x291
	.long	.LLST18
	.uleb128 0x2a
	.long	.LASF57
	.byte	0x1
	.byte	0xeb
	.long	0x212
	.byte	0x1
	.byte	0x66
	.uleb128 0x2a
	.long	.LASF58
	.byte	0x1
	.byte	0xec
	.long	0x212
	.byte	0x1
	.byte	0x64
	.uleb128 0x2a
	.long	.LASF59
	.byte	0x1
	.byte	0xed
	.long	0x778
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2a
	.long	.LASF60
	.byte	0x1
	.byte	0xee
	.long	0x77f
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x77e
	.uleb128 0x2f
	.uleb128 0xa
	.long	0x49
	.uleb128 0x17
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST19
	.byte	0x1
	.long	0x810
	.uleb128 0x30
	.long	.LASF65
	.byte	0x1
	.byte	0xf9
	.long	0x30
	.long	.LLST20
	.uleb128 0x21
	.long	0x2eb
	.long	.LBB113
	.long	.LBE113
	.byte	0x1
	.byte	0xfc
	.uleb128 0x2e
	.long	0x2f8
	.uleb128 0x2d
	.long	0x303
	.long	.LLST21
	.uleb128 0x1e
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x1f
	.long	0x30f
	.long	.LLST22
	.uleb128 0x1f
	.long	0x31a
	.long	.LLST23
	.uleb128 0x20
	.long	0x217
	.long	.LBB116
	.long	.LBE116
	.byte	0x3
	.byte	0xa6
	.uleb128 0x21
	.long	0x1f3
	.long	.LBB118
	.long	.LBE118
	.byte	0x3
	.byte	0xa6
	.uleb128 0x2d
	.long	0x200
	.long	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x30
	.long	0x820
	.uleb128 0xd
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x31
	.long	.LASF66
	.byte	0x1
	.byte	0x49
	.long	0x810
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PrevKeyboardHIDReportBuffer
	.uleb128 0x31
	.long	.LASF67
	.byte	0x1
	.byte	0x4f
	.long	0x17d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Keyboard_HID_Interface
	.uleb128 0x31
	.long	.LASF68
	.byte	0x1
	.byte	0x63
	.long	0x1e1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0xc
	.long	0x30
	.long	0x866
	.uleb128 0xd
	.long	0x82
	.byte	0xf
	.byte	0
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.byte	0x65
	.long	0x856
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keyboardData
	.uleb128 0x31
	.long	.LASF70
	.byte	0x1
	.byte	0x66
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ledReport
	.uleb128 0x32
	.byte	0x1
	.long	.LASF71
	.byte	0x8
	.word	0x123
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.long	.LASF79
	.byte	0x6
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.long	0x8a9
	.uleb128 0x34
	.long	0x291
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF72
	.byte	0x9
	.byte	0xb2
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.long	.LASF80
	.byte	0x6
	.byte	0x87
	.byte	0x1
	.long	0x119
	.byte	0x1
	.long	0x8cb
	.uleb128 0x34
	.long	0x291
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF81
	.byte	0x6
	.byte	0x8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	0x291
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB87
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LFE87
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL6
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL5
	.long	.LFE86
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB93
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LFE93
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LVL12
	.long	.LVL16
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LFE93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL17
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LFE93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
	.long	.LVL17
	.word	0x1
	.byte	0x64
	.long	.LVL17
	.long	.LFE93
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL28
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LFE93
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL17
	.long	.LVL24
	.word	0x9
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.long	keyboardData
	.byte	0x1c
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.word	0x9
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.long	keyboardData
	.byte	0x1c
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.word	0xa
	.byte	0x3
	.long	keyboardData
	.byte	0x20
	.byte	0x8a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL27
	.long	.LFE93
	.word	0x9
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.long	keyboardData
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST10:
	.long	.LVL14
	.long	.LVL23
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST11:
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL16
	.long	.LFE93
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1593
	.sleb128 0
	.long	.LVL21
	.long	.LVL24
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1705
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL18
	.long	.LVL24
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST14:
	.long	.LVL19
	.long	.LVL24
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST15:
	.long	.LVL20
	.long	.LVL21
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL21
	.long	.LVL24
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL21
	.long	.LVL24
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1705
	.sleb128 0
	.long	0
	.long	0
.LLST17:
	.long	.LVL23
	.long	.LVL24
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST18:
	.long	.LVL29
	.long	.LVL30
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LFE94
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LFB95
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI17
	.long	.LFE95
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST20:
	.long	.LVL31
	.long	.LVL33
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST21:
	.long	.LVL32
	.long	.LVL33
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST22:
	.long	.LVL34
	.long	.LVL37
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST23:
	.long	.LVL35
	.long	.LVL36
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL36
	.long	.LVL37
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL36
	.long	.LVL37
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2003
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x64
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.long	.LFB86
	.long	.LFE86-.LFB86
	.long	.LFB88
	.long	.LFE88-.LFB88
	.long	.LFB89
	.long	.LFE89-.LFB89
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB87
	.long	.LFE87
	.long	.LFB86
	.long	.LFE86
	.long	.LFB88
	.long	.LFE88
	.long	.LFB89
	.long	.LFE89
	.long	.LFB90
	.long	.LFE90
	.long	.LFB91
	.long	.LFE91
	.long	.LFB92
	.long	.LFE92
	.long	.LFB93
	.long	.LFE93
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF73:
	.string	"GNU C 4.8.2 -mmcu=atmega8u2 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fno-inline-small-functions -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF77:
	.string	"__iCliRetVal"
.LASF29:
	.string	"USB_ClassInfo_HID_Device_t"
.LASF64:
	.string	"__vector_23"
.LASF22:
	.string	"PrevReportINBufferSize"
.LASF66:
	.string	"PrevKeyboardHIDReportBuffer"
.LASF9:
	.string	"long long unsigned int"
.LASF20:
	.string	"ReportINEndpointDoubleBank"
.LASF11:
	.string	"DEVICE_STATE_Unattached"
.LASF13:
	.string	"DEVICE_STATE_Default"
.LASF37:
	.string	"HID_Device_MillisecondElapsed"
.LASF45:
	.string	"RingBuffer_Remove"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF47:
	.string	"BaudRate"
.LASF59:
	.string	"ReportData"
.LASF46:
	.string	"Serial_Init"
.LASF78:
	.string	"USB_Device_EnableSOFEvents"
.LASF5:
	.string	"long int"
.LASF53:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF3:
	.string	"uint16_t"
.LASF69:
	.string	"keyboardData"
.LASF76:
	.string	"USB_Device_States_t"
.LASF54:
	.string	"EVENT_USB_Device_StartOfFrame"
.LASF80:
	.string	"HID_Device_ConfigureEndpoints"
.LASF17:
	.string	"InterfaceNumber"
.LASF25:
	.string	"IdleCount"
.LASF35:
	.string	"__ToDo"
.LASF57:
	.string	"ReportID"
.LASF21:
	.string	"PrevReportINBuffer"
.LASF4:
	.string	"unsigned int"
.LASF68:
	.string	"USARTtoUSB_Buffer"
.LASF7:
	.string	"long unsigned int"
.LASF34:
	.string	"sreg_save"
.LASF19:
	.string	"ReportINEndpointSize"
.LASF15:
	.string	"DEVICE_STATE_Configured"
.LASF81:
	.string	"HID_Device_ProcessControlRequest"
.LASF72:
	.string	"USB_USBTask"
.LASF42:
	.string	"RingBuffer_Insert"
.LASF50:
	.string	"EVENT_USB_Device_Disconnect"
.LASF16:
	.string	"DEVICE_STATE_Suspended"
.LASF67:
	.string	"Keyboard_HID_Interface"
.LASF74:
	.string	"Arduino-keyboard.c"
.LASF10:
	.string	"sizetype"
.LASF63:
	.string	"CALLBACK_HID_Device_ProcessHIDReport"
.LASF71:
	.string	"USB_Init"
.LASF70:
	.string	"ledReport"
.LASF58:
	.string	"ReportType"
.LASF14:
	.string	"DEVICE_STATE_Addressed"
.LASF12:
	.string	"DEVICE_STATE_Powered"
.LASF65:
	.string	"ReceivedByte"
.LASF51:
	.string	"SetupHardware"
.LASF61:
	.string	"datap"
.LASF62:
	.string	"BufferCount"
.LASF23:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF49:
	.string	"EVENT_USB_Device_Connect"
.LASF48:
	.string	"DoubleSpeed"
.LASF18:
	.string	"ReportINEndpointNumber"
.LASF44:
	.string	"RingBuffer_GetCount"
.LASF6:
	.string	"uint32_t"
.LASF33:
	.string	"char"
.LASF75:
	.string	"/home/simon/Documents/hobby/arduino/LUFA 100807/LUFA/arduino-keyboard-0.3"
.LASF28:
	.string	"State"
.LASF26:
	.string	"IdleMSRemaining"
.LASF24:
	.string	"UsingReportProtocol"
.LASF56:
	.string	"CALLBACK_HID_Device_CreateHIDReport"
.LASF36:
	.string	"__iRestore"
.LASF41:
	.string	"RingBuffer_InitBuffer"
.LASF32:
	.string	"RingBuff_t"
.LASF79:
	.string	"HID_Device_USBTask"
.LASF27:
	.string	"Config"
.LASF38:
	.string	"HIDInterfaceInfo"
.LASF30:
	.string	"Buffer"
.LASF60:
	.string	"ReportSize"
.LASF31:
	.string	"Count"
.LASF2:
	.string	"uint8_t"
.LASF43:
	.string	"Data"
.LASF52:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF40:
	.string	"DataByte"
.LASF55:
	.string	"main"
.LASF39:
	.string	"Serial_TxByte"
	.ident	"GCC: (GNU) 4.8.2"
.global __do_copy_data
.global __do_clear_bss
