#Requires AutoHotkey v2.0-a

;;;;;; Hotkey to exit script (ctrl 5) ;;;;;;
^5::{ ; CTRL+5
ExitApp
}

CoordMode "Pixel", "Screen"

Loop{
try
{
	sleep(5000)
	taskWindowOpen := false
	taskIconX := 0
	taskIconY := 0
	
	; Find coordinates of task icon in the client
	if ImageSearch(&FoundX, &FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*25 TasksIcon.bmp") {
		;MsgBox "The task icon was found at " FoundX "x" FoundY
		taskIconX := FoundX
		taskIconY := FoundY
		}
	else {
		MsgBox "The task icon was not found on screen"
	}
	CoordMode "Mouse", "Screen"
	; Check if task window is open, if not open it.
	if ImageSearch(&FoundX, &FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*25 TaskWindow.bmp") {
		taskWindowOpen := true
		}
	else {
		;MouseClick "left", taskIconX, taskIconY
		taskIconCoords := "x" taskIconX " y" taskIconY
		Click taskIconX, taskIconY, "left"
		;MsgBox "Click sent to: " taskIconCoords
	}
	
	; Check if task is finished, if so click "Finish"
	if ImageSearch(&FoundX, &FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*25 Finish.bmp") {
		;MsgBox "The Finish mage was found at " FoundX "x" FoundY
		MouseClick "left", FoundX, FoundY
		Sleep(2000)
		}
		
	; Check if task is startable, if so click "Start"
	if ImageSearch(&FoundX, &FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, "*25 Start.bmp") {
		;MsgBox "The Finish mage was found at " FoundX "x" FoundY
		MouseClick "left", FoundX, FoundY
		}
}
catch as exc
    MsgBox "Could not conduct the search due to the following error:`n" exc.Message
}
