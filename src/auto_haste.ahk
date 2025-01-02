#Persistent ; Garante que o script fique rodando
toggle := false ; Variável para controlar o loop
SetTimer, PressKey, Off ; Inicialmente o loop está desativado

PgDn:: ; Hotkey para ligar/desligar o loop
toggle := !toggle ; Alterna entre verdadeiro e falso
if (toggle) {
    SetTimer, PressKey, 3000 ; Ativa o timer (3 seg)
    Tooltip, Haste ligado!  ; Exibe uma notificação temporária
} else {
    SetTimer, PressKey, Off ; Desativa o timer
    Tooltip, Haste desligado!  ; Exibe uma notificação temporária
}
SetTimer, RemoveTooltip, -1000  ; Remove o Tooltip após 1 segundo
Return

RemoveTooltip:
    Tooltip  ; Remove o Tooltip da tela
return

PressKey:
Send, 9
Return
