@REM Install chocolatey packages.
@REM OS: WINDOWS
@cd %~dp0 && cd ..
@for /F "tokens=*" %%A in (.\packages\choco_packages.txt) DO @choco install %%A -Y && @call RefreshEnv.cmd 
