;data segment 数据段
;	数据格式  标识符/数据 db/dw
;data ends  数据段结束
;edata segment 附加数据段
;	数据
;edata ends 附加数据段结束
;code segment 代码段
;assume cs:code,ds:data,es:edata '告诉编译程序 data段是数据段ds code段是代码段cs
;    start:
;    代码区
;code ends 代码段结束
;end start 整个程序结束
.486
.model flat, stdcall

option casemap:none

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\gdi32.lib
includelib \masm32\lib\msvcrt.lib
includelib \masm32\lib\masm32.lib


include \masm32\include\kernel32.inc
include \masm32\include\user32.inc
include \masm32\include\gdi32.inc
include \masm32\include\windows.inc
include \masm32\include\msvcrt.inc
include \masm32\include\masm32.inc
include \masm32\macros\macros.asm

.data
    n dd 0
    a dd 0
    b dd 1
    i dd 1
    t dd 0
.code
start:
    mov eax, sval(input("enter a number : "))
    mov n,eax
    print chr$("fibonacci number")
    print str$(1)
    print chr$(" is ")
    print str$(b)
    print chr$(" ",13,10)
    mov ecx,n
    mov i,ecx
    dec i
    .while i
        mov eax,b
        mov t,eax
        mov eax,b
        add eax,a
        mov b,eax
        print chr$("fibonacci number")
        mov ecx,n
        sub ecx,i
        inc ecx
        print str$(ecx)
        print chr$(" is ")
        print str$(b)
        print chr$(" ",13,10)
        mov eax,t
        mov a,eax
        dec i
    .endw
    ret
end start