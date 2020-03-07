+ masm32下载 http://www.masm32.com/download.htm
+ 添加环境变量 D:\masm32\include;D:\masm32\lib;D:\masm32\bin;

1. 汇编 生成obj文件
> ml /c /coff test.asm
2. 链接 生成exe文件 命令行程序使用console 窗口程序使用windows
> link /subsystem:console test.obj
> test.exe