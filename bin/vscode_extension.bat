@REM Install Visual studio Code extensions.
@REM OS: WINDOWS
@cd %~dp0 && cd ..
@call RefreshEnv.cmd
@for /F "tokens=*" %%A in (vscode\extensions.txt) DO code --install-extension %%A --force