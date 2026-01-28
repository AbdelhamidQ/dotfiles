; Alt + 1 → Zen (if installed) else Brave
!1:: {
    if WinExist("ahk_class MozillaWindowClass") {
        WinActivate()
    } else {
        ; Check if Zen is installed
        zenPath := "C:\Program Files\Zen Browser\zen.exe"
        bravePath := "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"

        if FileExist(zenPath) {
            Run(zenPath)
        } else if FileExist(bravePath) {
            if WinExist("ahk_exe brave.exe")
                WinActivate()
            else
                Run(bravePath)
        } else {
            MsgBox("Neither Zen Browser nor Brave Browser was found.")
        }
    }
}

; Alt + 2 → Terminal
!2:: {
    if WinExist("ahk_exe WindowsTerminal.exe")
        WinActivate()
    else
        Run("wt.exe")
}

; Alt + 3 → VS Code
!3:: {
    if WinExist("ahk_exe Code.exe")
        WinActivate()
    else
        Run("C:\Program Files\Microsoft VS Code\Code.exe")
}

; Alt + C → Chrome
!c:: {
    if WinExist("ahk_exe chrome.exe")
        WinActivate()
    else
        Run("chrome.exe")
}

; Alt + N → Notepad
!n:: {
    if WinExist("ahk_exe Notepad.exe")
        WinActivate()
    else
        Run("notepad.exe")
}

; Alt + D → Discord (dynamic path)
!d:: {
    if WinExist("ahk_exe Discord.exe")
        WinActivate()
    else {
        Run(A_AppData "\..\Local\Discord\Update.exe --processStart Discord.exe")
    }
}

; Alt + O → Obsidian
!o:: {
    if WinExist("ahk_exe Obsidian.exe")
        WinActivate()
    else {
        Run("C:\Program Files\Obsidian\Obsidian.exe")
    }
}

; Alt + Q → Close active window
!q:: {
    WinClose("A")
}

; Alt + E → File Explorer
!e:: {
    if WinExist("ahk_class CabinetWClass")
        WinActivate()
    else
        Run("explorer.exe")
}
; Alt + T → To Do
!t:: {
    if WinExist("ahk_exe ApplicationFrameHost.exe")
        WinActivate()
    else
        Run("C:\Program Files\WindowsApps\Microsoft.Todos_2.148.3611.0_x64__8wekyb3d8bbwe")
}
