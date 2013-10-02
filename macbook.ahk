#MaxHotkeysPerInterval 2000

; Reverse mouse scroll direction.
WheelUp::Send {WheelDown}
WheelDown::Send {WheelUp}

; Edit commands.
#c::Send ^{Insert} ; Right-hand key for cygwin compatible.
#v::Send +{Insert} ; Right-hand key for cygwin compatible.
#x::Send ^x
#a::Send ^a
#z::Send ^z
#y::Send ^y

; Window commands.
#`::Send ^{Tab}
#w::Send !{F4}
LWin & Tab::SendInput, !{Tab}

; Browser commands.
#t::Send ^t
#r::Send ^r
#l::Send ^l
#f::Send ^f
#+]::Send ^{Tab}
#+[::Send ^+{Tab}
; (Cmd+W should only close tab on IE and Chrome)
#IfWinActive ahk_class IEFrame
#w::Send ^w
#IfWinActive ahk_class Chrome_WidgetWin_1
#w::Send ^w
#IfWinActive
