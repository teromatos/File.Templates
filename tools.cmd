@echo off

call setdrive.bat
if ERRORLEVEL 1 goto end

:Execute
cd %DRIVE%\OneDrive\Tools
if /I "%*" NEQ "" cd %*

:End