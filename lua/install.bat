@echo off
:: Get the directory of the batch file (the folder containing the batch file, in this case "lua")
set "SCRIPT_DIR=%~dp0"

:: Remove trailing backslash from SCRIPT_DIR, if any
set "SCRIPT_DIR=%SCRIPT_DIR:~0,-1%"



:: Copy the folder to C:\
xcopy /E /I /H /R "%SCRIPT_DIR%" "C:\lua"

echo Folder copied successfully.

:: Now delete the batch file from the destination (C:\lua)
del "C:\lua\install.bat"


:: Add the folder to the system PATH
setx PATH "C:\lua;%PATH%"
echo Path has been set.

echo Operation complete.
pause
