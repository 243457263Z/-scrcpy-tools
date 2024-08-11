@ECHO OFF

TITLE Scrcpy Tools 

:MENU
CLS
ECHO.
ECHO.             Scrcpy Tools
ECHO.***********************************************
ECHO.               MENU£º
ECHO.
ECHO.              1.START
ECHO.
ECHO.              2.EXIT
ECHO.
ECHO.
ECHO.***********************************************
ECHO.
set choice=
set /p choice=choice£º
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto DEVICE_ID
if /i "%choice%"=="2" EXIT
ECHO.
ECHO.error...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU

:DEVICE_ID
CLS
ECHO.
ECHO.               Scrcpy Tools
ECHO.*********************************************** 
ECHO.
ECHO.                 
ECHO.             Searching Devices...
ECHO.             
ECHO.
ECHO.***********************************************
ECHO.
adb devices
set DEVICE_ID=
set /p DEVICE_ID=Please enter the  device_id£º
echo.

ECHO.
ECHO.              Scrcpy Tools
ECHO.***********************************************
ECHO.            Selection operation£º
ECHO.
ECHO.            1.Screen Audio
ECHO.
ECHO.            2.Screen Audio Keybord
ECHO.
ECHO.            3.Screen Audio Keybord Mouse
ECHO.
ECHO.
ECHO.***********************************************
ECHO.
set choice=
set /p choice=Please enter the number and press enter£º
if not "%choice%"=="" set choice=%choice:~0,1%
if /i "%choice%"=="1" goto S_A
if /i "%choice%"=="2" goto S_A_K
if /i "%choice%"=="3" goto S_A_K_M
ECHO.
ECHO.Error...
timeout /t 2 /nobreak >NUL
ECHO.
goto DEVICE_ID


:S_A
CLS
ECHO.
ECHO.              Scrcpy Tools
ECHO.***********************************************
ECHO.
ECHO.
ECHO.                 Working...
ECHO.
ECHO.
ECHO.***********************************************
ECHO.
ECHO.            £¨Ctrl+C To Stop£©
ECHO.
timeout /t 2 /nobreak >NUL
scrcpy.exe -S -w -s %DEVICE_ID%
goto MENU

:S_A_K
CLS
ECHO.
ECHO.              Scrcpy Tools
ECHO.***********************************************
ECHO.
ECHO.
ECHO.                 Working...
ECHO.
ECHO.
ECHO.***********************************************
ECHO.
ECHO.            £¨Ctrl+C to Stop£©
ECHO.
timeout /t 2 /nobreak >NUL
scrcpy.exe -S -K -w -s %DEVICE_ID%
goto MENU

:S_A_K_M
CLS
ECHO.
ECHO.              Scrcpy Tools
ECHO.***********************************************
ECHO.
ECHO.
ECHO.                 Working...
ECHO.
ECHO.
ECHO.***********************************************
ECHO.
ECHO.            £¨Ctrl+C to Stop£©
ECHO.
timeout /t 2 /nobreak >NUL
scrcpy.exe -S -K -M -w -s %DEVICE_ID%
goto MENU