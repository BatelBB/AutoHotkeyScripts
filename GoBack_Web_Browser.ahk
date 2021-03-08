#If (WinActive("ahk_exe ApplicationFrameHost.exe") or WinActive("ahk_exe msedge.exe"))

{
	RButton:: 
	{
		if ! GetKeyState("RButton","P")   ;only do anything if physical button pressed
			return 
			
		KeyWait,RButton   ;wait for button to be released
		KeyWait,Rbutton,T0.2 D   ;wait 0.2s for button to be pressed
		if ! ErrorLevel  ;if button pressed again, go back a page
			Send,{Browser_Back}
		else   ;if button not pressed again, do normal right click
			Click,Right
		
		return
	}
} #if