@REM Copy vscode settings: keybindings.json and settings.json
@REM OS: WINDOWS
@set caminho_code=%appdata%\Code\User
copy vscode\keybindings.json %caminho_code%\keybindings.json
copy vscode\settings.json %caminho_code%\settings.json