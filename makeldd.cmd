@echo off
gcc -fno-common -g -O3 -Wall -D__USE_MINGW_ANSI_STDIO=1 -DWINVER=0x0A00 -D_WIN32_WINNT=0x0A00 -c libntldd.c -o libntldd.o
ar rs libntldd.a libntldd.o
gcc -fno-common -g -O3 -Wall -D__USE_MINGW_ANSI_STDIO=1 ntldd.c -L. -lntldd -limagehlp -o ntldd.exe
