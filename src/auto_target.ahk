toggle := false

End:: ; Tecla End para ativar/desativar o loop
    toggle := !toggle
    if (toggle) {
        SetTimer, VerificarPixel, 500
        Tooltip, Target ligado! ; Exibe uma notificação temporária
    } else {
        SetTimer, VerificarPixel, Off
        Tooltip, Target desligado!  ; Exibe uma notificação temporária
    }
    SetTimer, RemoveTooltip, -1000  ; Remove o Tooltip após 1 segundo
    return

RemoveTooltip:
    Tooltip  ; Remove o Tooltip da tela
return

VerificarPixel:
    PixelGetColor, color, 30, 112, RGB
    if (color = 0x454545) {
        SendInput, {Space}
        Sleep, 50  ; Atraso de 50ms
    }
    return