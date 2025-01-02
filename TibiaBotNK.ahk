#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Rodando os scripts
Run, auto_loot.ahk, src, Min
Run, auto_potion.ahk, src, Min
Run, auto_haste.ahk, src, Min
Run, auto_shooter.ahk, src, Min
Run, auto_food.ahk, src, Min
Run, auto_utito.ahk, src, Min
Run, auto_target.ahk, src, Min


; Definindo a hotkey Page Down para desligar todos os scripts e o próprio script
F12::
    ; Matando os processos dos scripts
    Process, Close, auto_loot.ahk
    Process, Close, auto_hp.ahk
    Process, Close, auto_potion.ahk
    Process, Close, auto_haste.ahk
    Process, Close, magic_shooter.ahk
    ; Matando o próprio script principal
    OnExit
    return

OnExit("ExitFunc")

ExitFunc()
{
    Run,%ComSpec% /c Taskkill -f -im autohotkey.exe,%A_ScriptDir%,Hide
}

#include src/min_win_tray.ahk

return
