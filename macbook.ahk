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
