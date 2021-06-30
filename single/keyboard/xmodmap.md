clear lock
clear control
add Lock = Control_R
add Control = Control_L
以下足够
clear lock
keycode 66 = Mode_switch Caps_Lock
keysym h = h H Left
keysym l = l L Right
keysym j = j J Down
keysym k = k K Up
keysym u = u U Prior
keysym i = i I Home
keysym o = o O End
keysym p = p P Next
keysym m = m M Return
keysym t = t T Tab
keysym apostrophe = apostrophe quotedbl equal
keysym semicolon = semicolon colon BackSpace
keysym comma = comma less Delete
keysym bracketleft = bracketleft bracketleft Escape


https://wiki.linuxquestions.org/wiki/List_of_Keysyms_Recognised_by_Xmodmap

以下是ahk参考 
https://www.autohotkey.com/docs/Hotkeys.htm
^	Ctrl
+	Shift

CapsLock & [:: Send, {Esc} 
CapsLock & ':: Send, = 
CapsLock & f:: Send, ^{Right}                                       
CapsLock & b:: Send, ^{Left}  
CapsLock & w:: Send, +{Home}{Del}                                   
CapsLock & d:: Send, +{End}{Del}  
