@echo off
:main

cls 

echo Press 1 to run ipconfig 
echo Press 2 to run ipconfig/all 
echo Press 3 to run ipconfig/release
echo Press 4 to run ipconfig/renew
echo Press 5 to fush your DNS cache
echo Press 6 to stop the print spooler
echo Press 7 to start the print spooler
echo Press q to quit


set /p option="Enter the option you want to run"

if "%option%"=="1" goto option1
if "%option%"=="2" goto option2
if "%option%"=="3" goto option3
if "%option%"=="4" goto option4
if "%option%"=="5" goto option5
if "%option%"=="6" goto option6
if "%option%"=="7" goto option7
if "%option%"=="q" goto option8


:option1
cls
ipconfig
pause
goto main

:option2
cls
ipconfig/all
pause
goto main

:option3
cls
ipconfig/release
pause
goto main

:option4
cls
ipconfig/renew
pause
goto main

:option5
cls
ipconfig/flushdns
pause
goto main

:option6
cls
net stop spooler
pause
goto main

:option7
cls
net start spooler
pause
goto main

:option8
cls
exit