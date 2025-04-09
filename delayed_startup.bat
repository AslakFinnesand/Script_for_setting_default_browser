@echo off

@REM This batch file introduces a delay before executing the set_browser_as_default.vbs script.
@REM Useful if there are many startup programs located in:
@REM C:\Users\<name>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
@REM The delay ensures that the system has had time to finish launching all startup applications.

timeout /t 40

@REM Replace <path> below with the actual path where you saved the set_browser_as_default.vbs file.
cscript //nologo C:\Users\<path>\set_browser_as_default.vbs
