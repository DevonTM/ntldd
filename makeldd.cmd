cl.exe /nologo /c /O2 /GL /W4 /DWINVER=0x0A00 /D_WIN32_WINNT=0x0A00 libntldd.c /Fo:libntldd.obj
lib.exe /NOLOGO libntldd.obj /OUT:ntldd.lib
cl.exe /nologo /c /O2 /GL /W4 ntldd.c /Fo:ntldd.obj
link.exe /NOLOGO /LTCG /SUBSYSTEM:CONSOLE ntldd.obj ntldd.lib imagehlp.lib /OUT:ntldd.exe
