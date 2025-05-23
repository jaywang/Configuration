SetCapsLockState "AlwaysOff"

; Vimer's love  Capslock = {ESC}
CapsLock::Send "{Esc}"          
CapsLock & h::Send "{Left}"
CapsLock & j::Send "{Down}"
CapsLock & k::Send "{Up}"
CapsLock & l::Send "{Right}"

; Switch app
CapsLock & 0:: Send  "#0"
CapsLock & 1:: Send  "#1"
CapsLock & 2:: Send  "#2"
CapsLock & 3:: Send  "#3"
CapsLock & 4:: Send  "#4"
CapsLock & 5:: Send  "#5"
CapsLock & 6:: Send  "#6"
CapsLock & 7:: Send  "#7"
CapsLock & 8:: Send  "#8"
CapsLock & 9:: Send  "#9"

;;============================Editor================================
CapsLock & z:: Send "^z"                 ; Z = Cancel
CapsLock & x:: Send "^x"                 ; X = Cut
CapsLock & c:: Send "^c"                 ; C = Copy
CapsLock & v:: Send "^v"                 ; V = Paste
CapsLock & y:: Send "^y"                 ; Y = Redo

;;===========================Controller=============================||
CapsLock & n:: Send "^{Tab}"             ; Switch Tag    N = {Ctr + Tab}
CapsLock & m:: Send "+^{Tab}"            ; Switch Tag    M = {Shift + Ctr + Tab}
CapsLock & q:: Send "!{F4}"              ; Close Window  Q = {Alt + F4}
CapsLock & w:: Send "!^{Tab}"            ; Switch Tag    W = {alt + Ctr + Tab}

CapsLock & UP:: Send "{Volume_Up}"
CapsLock & DOWN:: Send "{Volume_Down}" 
CapsLock & LEFT:: Send "{Media_Play_Pause}" 
CapsLock & RIGHT:: Send "{Media_Next}"

;;=========================Application==============================
CapsLock & s:: Send "^#a"                    ; DisplyFusion Next Screen {Ctrl + Win + W}
CapsLock & d:: Send "{F12}"                  ; Jetbran Go tTo Defined F12
CapsLock & f1:: Send "^+{F1}"                ; snipaste sceen snip 
CapsLock & e:: Send "^!e"                    ; cmder 
CapsLock & f:: Send "+^{Esc}"                ; windos task  {Shift + Ctr + Tab}
CapsLock & t:: Send "+#t"                    ; powertoys ocr
