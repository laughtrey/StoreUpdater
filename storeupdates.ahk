#Requires AutoHotkey v2.0
#include OCR.ahk
#SingleInstance

updateMSStore() {
    if !WinExist("Microsoft Store"){ 
            ;;Open the store
        Run "ms-windows-store://updates"
            ;;let it start up. Longer?
        Sleep 5000
    }
    else {
        WinActivate "Microsoft Store" 
            ;;let it load the window, it takes a little bit.
        Sleep 5000
            ;;select "check updates"
        Send "{Tab 8}" 
        Sleep 5000
            ;;hit the check updates button
        Send ("{Enter}")
            ;;wait for it to check for updates
        Sleep 10000
            ;;select update all 
        Send "{Tab 2}"
        Sleep 1500
            ;;hit the update all button
        Send ("{Enter}")
    }      
}
Run "ms-windows-store://updates"
Sleep 5000
SetTimer(updateMSStore, 3000)


Sleep 900000 ; Duration for the loop to run, then exits the script.
ExitApp 0