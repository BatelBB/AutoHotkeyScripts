#If (WinActive("ahk_exe ApplicationFrameHost.exe") or WinActive("ahk_exe msedge.exe"))

{
	MButton:: 
	{
		if ! GetKeyState("MButton","P")   ;only do anything if physical button pressed
			return 
			
		KeyWait,MButton   ;wait for button to be released
		KeyWait,MButton,T0.2 D   ;wait 0.2s for button to be pressed
		if ! ErrorLevel  ;if button pressed again, reload the page
			Send,^R
		else   ;if button not pressed again, do normal middle click
			Send,{MButton}
		return
	}
} #if
