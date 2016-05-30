;;====================jay's AHK Script=====================;;
;;==================================================================;;
;;=========================CapsLock's Stuff=========================;;
;;==================================================================;;
SetCapsLockState, AlwaysOff


;;=============================Navigator============================||
;===========================;U = PageDown
CapsLock & u::
if getkeystate("alt") = 0
Send, {PgUp}
else
Send, +{PgUp}
return
;===========================;I = Home
CapsLock & i::
if getkeystate("alt") = 0
Send, {Home}
else
Send, +{Home}
return
;===========================;O = End
CapsLock & o::
if getkeystate("alt") = 0
Send, {End}
else
Send, +{End}
return
;===========================;P = PageDown
CapsLock & p::
if getkeystate("alt") = 0
Send, {PgDn}
else
Send, +{PgDn}
return
;===========================;H = Left
CapsLock & h::
if getkeystate("alt") = 0
Send, {Left}
else
Send, +{Left}
return
;===========================;J = Down
CapsLock & j::
if getkeystate("alt") = 0
Send, {Down}
else
Send, +{Down}
return
;===========================;K = UP
CapsLock & k::
if getkeystate("alt") = 0
Send, {Up}
else
Send, +{Up}
return
;===========================;L = Right
CapsLock & l::
if getkeystate("alt") = 0
Send, {Right}
else
Send, +{Right}
return

;;=============================Deletor==============================||
CapsLock & ,:: Send, {Del}              ; , = Del char after
CapsLock & .:: Send, ^{Del}             ; . = Del word after
CapsLock & /:: Send, +{End}{Del}        ; / = Del all  after

CapsLock & m:: Send, {BS}               ; m = Del char before; 
CapsLock & n:: Send, ^{BS}              ; n = Del word before;      
CapsLock & b:: Send, +{Home}{Del}       ; b = Del all  before; 

;;============================Special Char==========================||
CapsLock & ':: Send, =                  ; ' = =
CapsLock & `;:: Send, {Enter}           ; ; = Enter
CapsLock & {:: Send, +9                 ; { = ( 
CapsLock & }:: Send, +0;                ; } = )
CapsLock & `:: Send, +``                ; Shift
CapsLock & 4:: Send, +4
CapsLock & 5:: Send, +5
CapsLock & 6:: Send, +6
CapsLock & 7:: Send, +7
CapsLock & 8:: Send, +8
CapsLock & 9:: Send, +9
CapsLock & 0:: Send, +0
CapsLock & -:: Send, +-
CapsLock & =:: Send, +=
CapsLock & \:: Send, +=

;;============================Editor================================||
CapsLock & z:: Send, ^z                 ; Z = Cancel
CapsLock & x:: Send, ^x                 ; X = Cut
CapsLock & c:: Send, ^c                 ; C = Copy
CapsLock & v:: Send, ^v                 ; V = Paste
CapsLock & a:: Send, ^a                 ; A = Select All
CapsLock & y:: Send, ^y                 ; Y = Redo

;;===========================Controller=============================||
CapsLock & s:: Send, ^{Tab}             ; Switch Tag    S = {Ctr + Tab}
CapsLock & w:: Send, ^w                 ; Close Tag     W = {Ctr + W}
CapsLock & q:: Send, !{F4}              ; Close Window  Q = {Alt + F4}
CapsLock::Send, {ESC}                   ; Vimer's love  Capslock = {ESC}

;;=========================Application==============================||
CapsLock & d:: Send, !d                    ; Dictionary  D = {Alt + D}
CapsLock & f:: Send, !f                    ; Everything  F = {Alt + F}
CapsLock & g:: Send, !g                    ; Reversed     G = {Alt + G}
CapsLock & e:: Run http://www.google.com/  ; Run Explore   E = {Explore}

;;==================================================================;;
;;=========================CapsLock's Stuff=========================;;
;;==================================================================;;