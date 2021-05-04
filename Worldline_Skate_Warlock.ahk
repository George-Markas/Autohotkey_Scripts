#KeyHistory 0
#InstallKeybdHook
#InstallMouseHook

WinActivate, Destiny 2

*g::

if GetKeyState("g", "P"){
click right
sleep 160
Send {space}+f
}
