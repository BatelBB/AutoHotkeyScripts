# AutoHotkey Scripts

Little scripts to make life easier



## Setup

* To use these scripts first download the AutoHotkey application from [this website](https://www.autohotkey.com/).

* After installation, you can just download the script file and run it by double-clicking on it.

* To schedule the script to start with Windows use [this guide](https://www.maketecheasier.com/schedule-autohotkey-startup-windows/).
* To edit these scripts, right-click on them, and click edit with Notepad++ (or Open With Notepad), don't forget to save.

* To remove the icon from the icon tray, add this line: ``` #NoTrayIcon ``` to the first line of the script.



## Example of Use

### GoBack_Web_Browser.ahk

Using the right mouse click to go back a page in a web browser or file explorer in Windows 10, double-clicking it, runs the script.

* To change the button, replace the ```RButton```with the desired button, you can learn about the AutoHotkey button [here](https://www.autohotkey.com/docs/KeyList.htm)

* The ```Send,{Browser_Back}``` is what you want the button to do once it's clicked, change the ```Browser_back``` to the action you need. [Here](https://www.autohotkey.com/docs/commands/Send.htm) you can learn more about it.



### ID.ahk

Using ctrl+j to paste text (or id number in my case) to any text editor. 

* ```^``` means ctrl. [Here](https://www.autohotkey.com/docs/commands/Send.htm) are more details.

* ```j``` is the desired key that I chose.

* ```Send, ENTER_HERE_TEXT``` Just like the GoBack script, here you can put any text that frustrates you every time you need to type it.



### Reload_Page_Web_Browser.ahk

Similar to the GoBack script, here for double-clicking the middle mouse button, the web page will reload.

* To change the button, replace the ```MButton```with the desired button, you can learn about AutoHotkey button [here](https://www.autohotkey.com/docs/KeyList.htm)

* ```Send,^R``` the short key for reloading a web page is ctrl+R, so as before ```^``` is ctrl, in this case, you can change this short key for any other use. 

* When you use the double-click scripts, it is important to deal with the option of regular click, one-click, in this case, with ```if-else``` statement, counting the number of strokes, if the key was clicked once the ```Send,{MButton}``` will make sure it will do the regular key work.
