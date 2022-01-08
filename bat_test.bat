@echo off
set /p full="Input the url path: "
set "shortcut=%full%"
for %%i in ("%full%") do (
 set "name=%%~ni"
)
(
echo [InternetShortcut]
echo url="file:///%shortcut%"
echo IconFile="%full%"
echo IconIndex=0
)>"%name%.url"
exit /b