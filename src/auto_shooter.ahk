#Persistent
SetTimer, ShootMagic, Off  ; Inicialmente, o timer está desligado
toggle := false  ; Estado do script (ligado/desligado)

teclas := ["F1", "F2", "F3", "F4", "F5"]  ; Array de teclas para pressionar

index := 1  ; Variável para armazenar a posição atual da tecla

; Hotkey para ligar/desligar o script (Ins)
Ins::
    toggle := !toggle  ; Alterna o estado entre ligado/desligado
    if (toggle)
    {
        SetTimer, ShootMagic, 300 ; Liga o timer
        Tooltip, Shooter ligado!  ; Exibe uma notificação temporária
    }
    else
    {
        SetTimer, ShootMagic, Off  ; Desliga o timer
        Tooltip, Shooter desligado!  ; Exibe uma notificação temporária
    }
    SetTimer, RemoveTooltip, -1000  ; Remove o Tooltip após 1 segundo
return



ShootMagic:

PixelGetColor, color, 30, 112, RGB
    if (color = 0x454545) {
        return
    }

    if (index > teclas.MaxIndex())  ; Reseta a sequência se todas as teclas forem usadas
    {
        index := 1
    }

    ; Simula o pressionamento da tecla atual usando DllCall
    tecla := teclas[index]
    DllCall("keybd_event", "UInt", GetKeyCode(tecla), "UInt", 0, "UInt", 0, "UInt", 0)  ; Pressiona a tecla
    Sleep, 50  ; Pequeno atraso para evitar problemas
    DllCall("keybd_event", "UInt", GetKeyCode(tecla), "UInt", 0, "UInt", 2, "UInt", 0)  ; Solta a tecla

    index++  ; Avança para a próxima tecla
return

RemoveTooltip:
    Tooltip  ; Remove o Tooltip da tela
return

GetKeyCode(tecla)
{
    static keyCodes := {"F1": 0x70, "F2": 0x71, "F3": 0x72, "F4": 0x73, "F5": 0x74}
    return keyCodes[tecla]
}
