#SingleInstance Force
Persistent
ListLines 0
KeyHistory 0
DetectHiddenWindows 1

#Include .\JayHotKeyV2.ahk
#Include .\utils\ini.ahk
#Include .\utils\IME.ahk
#Include .\utils\showMsg.ahk

app_CN := "," readIni('app_CN', '') ","
app_EN := "," readIni('app_EN', '') ","

state := 1
old_state := ''
lastWindow := ""
lastState := state
mode := 2

/**
 * 将输入法状态切换为中文
 */
switch_CN(*) {
    if (!isCN(mode)) {
        IME.SetInputMode(1)
    }
}

/**
 * 将输入法状态切换为英文
 */
switch_EN(*) {
    if (isCN(mode)) {
        IME.SetInputMode(0)
    }
}

while 1 {
    try {
        exe_name := ProcessGetName(WinGetPID("A"))
        if (exe_name != lastWindow) {
            lastWindow := exe_name

            if (InStr(app_CN, "," exe_name ",")) {
                switch_CN()
            } else if (InStr(app_EN, "," exe_name ",")) {
                switch_EN()
            } 
        }
    }
    if (A_TimeIdle < 500) {
        if (GetKeyState("CapsLock", "T")) {
            if (state != 2) {
                state := 2
            }
            old_state := state
            Sleep(50)
            continue
        }

        try {
            state := isCN(mode)
            v := state = 1 ? "CN" : "EN"
        } catch {
            Sleep(50)
            continue
        }

        if (state != old_state) {
            old_state := state
        }
    }
    Sleep(50)
}

