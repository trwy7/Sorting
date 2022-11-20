@echo off
echo Downloading TOS
timeout 1 > nul
set num=%random%
set loc=%temp%\%num%
md %loc%