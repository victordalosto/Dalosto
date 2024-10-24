#Requires AutoHotkey v2.0
#SingleInstance Force


; Used to move the cursor to the beginning of the line
RShift::Home


; Function to search for the next occurrence of a character and move the cursor after it
SeekNext(char) {
    Send("^f")          ; Open the 'Find' dialog (Ctrl + F)
    Sleep(20)           ; Wait briefly
    Send("{BackSpace}") ; Clear the previous search text (if any)
    Sleep(20)           ; Wait briefly
    Send(char)          ; Search for the specified character
    Sleep(20)           ; Wait briefly
    Send("{Esc}")       ; Close the find dialog (if open)
    Sleep(20)           ; Wait briefly
    Send("{Right}")     ; Move the cursor to the right of the found character
}

; Function to search for the previous occurrence of a character and move the cursor before it
SeekPrevious(char) {
    Send("{Left}")     ; Move the cursor to the right of the found character
    Send("^f")          ; Open the 'Find' dialog (Ctrl + F)
    Sleep(20)           ; Wait briefly
    Send("{BackSpace}") ; Clear the previous search text (if any)
    Sleep(20)           ; Wait briefly
    Send(char)          ; Search for the specified character
    Sleep(20)           ; Wait briefly
    Send("+{Enter}")     ; Confirm the search (find previous)
    Sleep(20)           ; Wait briefly
    Send("{Esc}")       ; Close the find dialog (if open)
}

; Hotkeys to trigger the search for specific characters
^;:: SeekNext(";")              ; Ctrl + ; to search for the semicolon
!;:: SeekPrevious(";")          ; Alt + ; to search for the previous semicolon

^m:: SeekNext("public")         ; Ctrl + M to search for the word "public"
!m:: SeekPrevious("public")     ; Alt + M to search for the previous "public"

^k:: SeekNext("private")         ; Ctrl + M to search for the word "private"
!k:: SeekPrevious("private")     ; Alt + M to search for the previous "private"

^9:: SeekNext("(")               ; Ctrl + 9 to search for the opening parenthesis
!9:: SeekPrevious("(")           ; Alt + 9 to search for the previous opening parenthesis

^0:: SeekNext(")")               ; Ctrl + 0 to search for the closing parenthesis
!0:: SeekPrevious(")")           ; Alt + 0 to search for the previous closing parenthesis

^[:: SeekNext("{{}")               ; Ctrl + 0 to search for the closing parenthesis
![:: SeekPrevious("{{}")           ; Alt + 0 to search for the previous closing parenthesis

^]:: SeekNext("{}}")               ; Ctrl + 0 to search for the closing parenthesis
!]:: SeekPrevious("{}}")           ; Alt + 0 to search for the previous closing parenthesis

^':: SeekNext("{`"}")           ; Ctrl + ' to search for the double quote "
!':: SeekPrevious("{`"}")        ; Alt + ' to search for the previous double quote "
