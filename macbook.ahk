#MaxHotkeysPerInterval 2000

; Reverse mouse scroll direction.
WheelUp::Send {WheelDown}
WheelDown::Send {WheelUp}
WheelLeft::Send {WheelRight}
WheelRight::Send {WheelLeft}

; Edit commands.
#c::Send ^{Insert} ; Right-hand key for cygwin compatible.
#v::Send +{Insert} ; Right-hand key for cygwin compatible.
#x::Send ^x
#a::Send ^a
#z::Send ^z
#y::Send ^y

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

^`::	; Next Window
  WinGetClass, CurrentActive, A
  WinGet, Instances, Count, ahk_class %CurrentActive%
  If Instances > 1
    WinSet, Bottom,, A
  WinActivate, ahk_class %CurrentActive%
return
