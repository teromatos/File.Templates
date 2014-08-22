@echo off

set DRIVE=
if /I "%USERDOMAIN%" EQU "codemonkey" set DRIVE=E:&goto DriveCheck
if /I "%USERDOMAIN%" EQU "gpp"        set DRIVE=I:&goto DriveCheck
echo Invalid user domain - %USERDOMAIN%
goto end

:DriveCheck
if not exist %DRIVE%\nul echo Invalid drive letter - %DRIVE%&EXIT /B 1

:Execute
pushd .
%DRIVE%
EXIT /B 0

:End