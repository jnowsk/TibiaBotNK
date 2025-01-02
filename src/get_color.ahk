^!c:: ; Atalho Ctrl + Alt + C para capturar a posição e cor
    MouseGetPos, xpos, ypos ; Pega a posição atual do mouse
    PixelGetColor, color, %xpos%, %ypos%, RGB ; Pega a cor do pixel na posição do mouse
    MsgBox, A cor do pixel na posição (%xpos%, %ypos%) é %color%.
return

^!v:: ; Atalho Ctrl + Alt + V para capturar a cor
    PixelGetColor, color, 30, 112, RGB ; Pega a cor do pixel na posição do mouse
    MsgBox, A cor do pixel na posição é %color%.
return
