@echo   + ========================= +
@echo      BOOSTRAP: VictorDalosto
@echo   + ========================= +


@REM ###############################
@net session >nul 2>&1 & :: Checks for admin permission
@if NOT %errorLevel% == 0 (
    @echo ERROR: File should be executed with administrator right!
    @pause > nul
    GOTO :EOF
)
@cd %~dp0 & :: Changes current directory to original local of .bat


@REM ###############################
@echo  ## INSTALL CHOCOLATEY 
@REM ###############################
cmd /c bin\choco_install


@REM ###############################
@echo ## INSTALL CHOCO PACKAGES 
@REM ###############################
for /F "tokens=*" %%A in (packages\choco_packages.txt) DO cmd /c bin\choco_install_package %%A
cmd /c bin\choco_upgrade


@REM ###############################
@echo ## UPDATING VSCODE EXTENSIONS
@REM ###############################
for /F "tokens=*" %%A in (extensions\vscode.txt) DO cmd /c bin\vscode_extension %%A

@pause