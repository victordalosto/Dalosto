@REM Copy vscode settings: keybindings.json and settings.json
@REM OS: WINDOWS
@cd %~dp0 && cd ..
copy .\vscode\settings.json %appdata%\Code\User\settings.json
copy .\vscode\keybindings.json %appdata%\Code\User\keybindings.json