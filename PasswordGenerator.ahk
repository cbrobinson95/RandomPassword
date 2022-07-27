#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Password Generator
Clipboard =
vowelsarray := ["a","o","u"]
consonantsarray := ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
Random, consonant, 1, 21
Random, consonant2, 1, 21
Random, vowel, 1, 3
Random, number, 10000, 99999
first := consonantsarray[consonant]
second := vowelsarray[vowel]
third := consonantsarray[consonant2]
StringUpper, first, first
Clipboard := first . second . third . number
VarClip := Clipboard
TrayTip Password generated and copied to the clipboard, %VarClip%
Sleep 5000
HideTrayTip() {
    TrayTip
}
return
