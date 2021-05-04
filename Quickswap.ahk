; Menu, Tray, Icon, shotgun_slug.ico 

#SingleInstance Force
#KeyHistory 0
#InstallKeybdHook
#InstallMouseHook
SendMode Input
SetBatchLines -1

WinActivate, Destiny 2

*NumLock:: ; 🡸 Adjust this along with the first parameter in the GetKeyState conditions to change keybind.


if GetKeyState("NumLock", "P"){ ; 🡸 Keeps aiming down the sights.
Send, {click down right}
}
else{
Send, {click up right}
return
}

loop{
  if GetKeyState("NumLock", "P"){ ; 🡸 Shoot, Animation Cancel / Swap, Shoot loop.
    Sleep, 500
    Click
    Send, {~}
    Send, {Lshift down}
    Send, {w down}
    Sleep, 60
    Send, {w up}
    Send, {Lshift up}
  }
  else{
  break
  }
}
Sleep, 500
Click, right
return
