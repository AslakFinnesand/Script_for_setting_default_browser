# Set Default Browser on Startup (Windows Automation)

This small automation script is designed to set your preferred browser as the **default browser** automatically every time you log into Windows. It can be especially helpful in environments where the default browser setting may reset or be changed (e.g., after certain Windows updates or in managed environments).

## Contents

### `delayed_startup.bat`

This batch file introduces a delay before launching the browser-setting script.

- Located in the **Startup folder** (`C:\Users\<YourUsername>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`), it ensures that all other startup applications finish loading before attempting to change the default browser.
- Waits for 40 seconds using the `timeout` command.
- Then launches the `set_browser_as_default.vbs` script using `cscript`.

### `set_browser_as_default.vbs`

A VBScript that automates setting your preferred browser as default.

- Opens the **Windows Settings > Default Apps** screen.
- Simulates keyboard input to search for and set the desired browser.
- Works with browsers like:
  - Google Chrome
  - Microsoft Edge
  - Firefox / Firefox Developer Edition
  - Brave

> 💡 The script relies on sending simulated keystrokes. Because of this, timing (`WScript.Sleep`) is critical and may need to be adjusted depending on your system's performance and responsiveness.

## Setup Instructions

1. **Place the scripts:**
   - Put `set_browser_as_default.vbs` somewhere safe, e.g., `C:\Users\<YourUsername>\Documents\Scripts\`.
   - Update the path in `delayed_startup.bat` to point to this `.vbs` file.

2. **Move the `.bat` file to the Startup folder:**
   - Press `Win + R`, type `shell:startup`, and press Enter.
   - Move `delayed_startup.bat` into this folder.

3. **Choose your preferred browser:**
   - In `set_browser_as_default.vbs`, uncomment the line that sends the name of your preferred browser (and comment out the others).

   ```vbscript
   ' WshShell.SendKeys "Google Chrome"
   WshShell.SendKeys "Firefox Developer Edition"
   ```
