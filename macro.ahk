#Requires AutoHotkey v2.0 
#SingleInstance Force

global macro
macro := 0
setvar(num, msg){
    global macro
    macro := num
    MsgBox(msg,,"T0.5")
}
^Numpad0::{
    setvar(0,"Normal Autoclicker")
}
^Numpad1::{
    setvar(1,"Refinery Caves 2 Pickaxe")
}
^Numpad2::{
    setvar(2,"/e dance2")
}
^Numpad3::{
    setvar(3,"/e laugh")
}

Media_Prev::{
    global macro
    switch macro {
        case "0":
            While GetKeyState(A_ThisHotkey) {
                DllCall("mouse_event", "UInt", 0x02)
                DllCall("mouse_event", "UInt", 0x04)
                Sleep 6       
            }
        case "1":
            While GetKeyState(A_ThisHotkey) {
                Click
                Sleep 797
                Click
                Sleep 900
            }
        case "2":
            Send ("//e dance2")
            Sleep 1
            Send ("{enter}")
        case "3":
            Send ("//e laugh")
            Sleep 1
            Send ("{enter}")
        }
}
