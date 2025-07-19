@echo off

if [%1%] == [] (goto help) 

set "source=%1%"
set "source_name=%source:~0,-4%"


ml /c /coff /Cp %source% /I lib/Irvine /I lib\masm32\lib

link "%source_name%.obj" "C:\Irvine\Irvine32.lib" /subsystem:console

%source_name%.exe
del %source_name%.exe
goto end

:help
echo USAGE: rog.bat ^<source.asm^>
echo MASM source build and runner script
echo By Justaus3r - gh/justaus3r
goto end


:end

