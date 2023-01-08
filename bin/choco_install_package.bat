@REM Install chocolatey packages.
@REM OS: WINDOWS
@cd %~dp0 && cd ..
@call RefreshEnv.cmd
@for /F "tokens=*" %%A in (.\packages\choco_packages.txt) DO @choco install %%A -Y && @call RefreshEnv.cmd 