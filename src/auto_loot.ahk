#Persistent
toggle := false ; Variável para controlar o loop
SetTimer, ClickNinePositions, Off ; Inicia após 0.66 segundos

Del:: ; Hotkey para ligar/desligar o loop
toggle := !toggle ; Alterna entre verdadeiro e falso
if (toggle) {
    SetTimer, ClickNinePositions, 66 ; Ativa o timer (0.66 seg)
    Tooltip, Loot ligado!  ; Exibe uma notificação temporária
} else {
    SetTimer, ClickNinePositions, Off ; Desativa o timer
    Tooltip, Loot desligado!  ; Exibe uma notificação temporária
}
SetTimer, RemoveTooltip, -1000  ; Remove o Tooltip após 1 segundo
Return

RemoveTooltip:
    Tooltip  ; Remove o Tooltip da tela
return

ClickNinePositions:
    SetMouseDelay, 66 ; Intervalo de 66 ms entre os cliques

    ; Clique nas 9 posições com o botão direito (modifique as coordenadas conforme necessário)
    Click, 907 377, , , Right
    Click, 963 377, , , Right
    Click, 1020 377, , , Right
    Click, 907 439, , , Right
    Click, 963 439, , , Right
    Click, 1020 439, , , Right
    Click, 907 508, , , Right
    Click, 963 508, , , Right
    Click, 1020 508, , , Right

    return
