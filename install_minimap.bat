@echo off
setlocal EnableExtensions EnableDelayedExpansion

rem Configure paths here
set "STEAM_BIN=C:\Program Files (x86)\Steam\steamapps\common\SnowRunner\Sources\Bin"
set "EPIC_BIN=C:\Program Files\Epic Games\SnowRunner\Sources\Bin"

rem 1 = delete source folder after move, 0 = keep
set "DELETE_SOURCE=1"

set "SRC=%~dp0"
for %%I in ("%SRC%.") do set "SRC=%%~fI"

echo Select platform:
echo 1) Steam
echo 2) Epic Games
choice /C 12 /N /M "Choice: "
if errorlevel 2 set "TARGET=%EPIC_BIN%"
if errorlevel 1 set "TARGET=%STEAM_BIN%"

rem If target is game root, try appending Sources\Bin
if not exist "%TARGET%" (
  if exist "%TARGET%\Sources\Bin" set "TARGET=%TARGET%\Sources\Bin"
)

if not exist "%TARGET%" (
  echo Target folder not found:
  echo "%TARGET%"
  pause
  exit /b 1
)

if /I "%TARGET%"=="%SRC%" (
  echo Target folder is the same as source. Aborting.
  pause
  exit /b 1
)

echo Moving files to:
echo "%TARGET%"

set "MOVED_ANY=0"

for %%F in ("%SRC%\*.asi") do (
  if exist "%%~fF" (
    move /Y "%%~fF" "%TARGET%\" >nul
    set "MOVED_ANY=1"
  )
)

for %%F in ("%SRC%\*.dll") do (
  if exist "%%~fF" (
    move /Y "%%~fF" "%TARGET%\" >nul
    set "MOVED_ANY=1"
  )
)

if exist "%SRC%\SnowMap\" (
  robocopy "%SRC%\SnowMap" "%TARGET%\SnowMap" /E /MOVE >nul
  if errorlevel 8 (
    echo Robocopy reported an error.
    pause
    exit /b 1
  )
  set "MOVED_ANY=1"
)

if "%MOVED_ANY%"=="0" (
  echo No files found to move.
  pause
  exit /b 1
)

echo Done.

if "%DELETE_SOURCE%"=="1" (
  echo Deleting source folder in 3 seconds...
  call :ScheduleDelete "%SRC%"
)

exit /b 0

:ScheduleDelete
set "DELROOT=%~1"
set "TEMP_CMD=%TEMP%\delete_minimap_%RANDOM%.cmd"
> "%TEMP_CMD%" (
  echo @echo off
  echo cd /d "%TEMP%"
  echo ping 127.0.0.1 -n 3 ^> nul
  echo rmdir /s /q "%DELROOT%"
  echo del /f /q "%TEMP_CMD%"
)
start "" cmd /c "%TEMP_CMD%"
exit /b 0
