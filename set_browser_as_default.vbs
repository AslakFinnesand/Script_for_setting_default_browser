Set WshShell = WScript.CreateObject("WScript.Shell")

' Open the "Default apps" settings page
WshShell.Run "ms-settings:defaultapps"

' Wait for the settings page to load
' (Adjust the sleep time based on your system's responsiveness for better reliability)
WScript.Sleep 1200

' Send keystrokes to navigate to the search box
' (The number of TAB presses may vary depending on system layout)
WshShell.SendKeys "{TAB}{TAB}{TAB}{TAB}"

' Wait for the search box to become active
' (Adjust the sleep time based on your system's responsiveness)
WScript.Sleep 170

' Type's the name of the desired browser:
' Uncomment the line for the browser you want to set as default

' WshShell.SendKeys "Google Chrome"
' WshShell.SendKeys "Microsoft Edge"
' WshShell.SendKeys "Firefox Developer Edition"
' WshShell.SendKeys "Firefox"
' WshShell.SendKeys "Brave"

' Wait for the browser suggestions to appear
' (Adjust the sleep time based on your system's responsiveness)
WScript.Sleep 90

' Navigate to the first suggestion in the list
WshShell.SendKeys "{TAB}"

' Wait before selecting the suggestion
' (Adjust the sleep time based on your system's responsiveness)
WScript.Sleep 90

' Press ENTER to select the browser from the list
WshShell.SendKeys "{ENTER}"

' Wait before confirming the browser as default
' (Adjust the sleep time based on your system's responsiveness)
WScript.Sleep 50

' Press ENTER to set the selected browser as the default
WshShell.SendKeys "{ENTER}"

' Wait for the change to take effect
' (Adjust the sleep time based on your system's responsiveness)
WScript.Sleep 50

' Close the Settings window
WshShell.SendKeys "%{F4}"
