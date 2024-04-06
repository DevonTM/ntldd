@echo off
cl.exe /c /O2 /W4 /DWINVER=0x0A00 /D_WIN32_WINNT=0x0A00 libntldd.c /Fo:libntldd.obj
lib libntldd.obj /OUT:ntldd.lib
cl.exe /O2 /W4 ntldd.c ntldd.lib imagehlp.lib /Fe:ntldd.exe
