@echo off
title DISCORD.PY INSTALLERS

:agreement
echo DISCORD.PY INSTALLERS
echo Software Version: 1.0
echo BEFORE USING SOFTWARE, PLEASE READ AND AGREE TO THIS LICENSE AGREEMENT
echo -
echo THIS SOFTWARE IS PART OF THE PUBLIC DOMAIN.
echo YOU MAY REDISTRIBUTE THIS SOFTWARE FOR NON-COMMERCIAL PURPOSES. YOU SHOULD NOT REDISTRIBUTE IT FOR
echo COMMERCIAL PURPOSES.
echo -
echo THE CREATORS OF THIS SOFTWARE WILL NOT BE LIABLE FOR ANY DAMAGES CAUSED FROM USING THIS SOFTWARE
echo INCLUDING BUT NOT LIMITED TO: LOSS OF PROFIT, DEVICE DAMAGE, ETC
echo -
echo Press any key to accept the license agreement.
pause
goto menu

:menu
cls
echo DISCORD.PY INSTALLERS
echo Software Version: 1.0
echo Provided by: Matthew Discord Development.
echo -
echo This batch file will install the discord.py packages on your computer.
echo To get started, select the OS you are using by typing in the number for the choice.
echo -
echo 1 = Windows
echo 2 = Mac/Linux
echo -
set /p menu=
if %menu%==1 goto windows
if %menu%==2 goto maclinux
goto menu

:windows
echo What do you want to do?
echo -
echo 0 = Go back to the Menu
echo 1 = Install discord.py packages
echo 2 = Install discord.py packages with Voice support
echo -
set /p menu=
if %menu%==0 goto menu
if %menu%==1 goto windowspy
if %menu%==2 goto windowspyvoice

:windowspy
py -3 -m pip install -U discord.py[voice]
pause
goto menu

:windowspyvoice
py -3 -m pip install -U discord.py[voice]
pause
goto menu

:maclinux
echo What do you want to do?
echo -
echo 0 = Go back to the Menu
echo 1 = Install discord.py packages
echo 2 = Install discord.py packages with Voice support
echo -
set /p menu=
if %menu%==0 goto menu
if %menu%==1 goto windowspy
if %menu%==2 goto windowspyvoice

:maclinuxpy
python3 -m pip install -U discord.py
pause
goto menu

:maclinuxpyvoice
python3 -m pip install -U "discord.py[voice]
pause
goto menu