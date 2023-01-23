:: BOOSTRAP FOR WINDOWS

:: Checks for admin permission
@net session >nul 2>&1 &
@if NOT %errorLevel% == 0 (
    @echo ERROR: File should be executed with administrator right!
    @pause > nul
    GOTO :EOF
)

:: Changes current directory to original local of .bat
@cd %~dp0 &

:: INSTALL CHOCOLATEY 
@cmd /c bin\choco_install && @call RefreshEnv.cmd
@cmd /c bin\choco_package && @call RefreshEnv.cmd
@cmd /c bin\choco_upgrade && @call RefreshEnv.cmd

:: VSCODE EXTENSIONS & SETTINGS
@cmd /c bin\vscode_settings
@cmd /c bin\vscode_extension

@pause