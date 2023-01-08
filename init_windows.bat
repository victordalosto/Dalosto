@echo BOOSTRAP FOR WINDOWS

@net session >nul 2>&1 & :: Checks for admin permission
@if NOT %errorLevel% == 0 (
    @echo ERROR: File should be executed with administrator right!
    @pause > nul
    GOTO :EOF
)
@cd %~dp0 & :: Changes current directory to original local of .bat

@echo  ## INSTALL CHOCOLATEY 
@cmd /c bin\choco_install
@cmd /c bin\choco_install_package
@cmd /c bin\choco_upgrade

@echo ## VSCODE EXTENSIONS & SETTINGS
@cmd /c bin\vscode_extension
@cmd /c bin\vscode_settings

@pause