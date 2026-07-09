@echo off
chcp 65001 > nul
echo Запуск Roblox и отправка клавиш...

:: 1. Создаем временный скрипт генерации нажатий
set "vbs=%temp%\roblox_keys.vbs"
echo Set wsh = CreateObject("WScript.Shell") > "%vbs%"
echo WScript.Sleep 6000 >> "%vbs%"
echo wsh.AppActivate "Roblox" >> "%vbs%"
echo WScript.Sleep 500 >> "%vbs%"
echo wsh.SendKeys "1" >> "%vbs%"
echo WScript.Sleep 300 >> "%vbs%"
echo wsh.SendKeys "x" >> "%vbs%"
echo WScript.Sleep 300 >> "%vbs%"
echo wsh.SendKeys "e" >> "%vbs%"
echo WScript.Sleep 300 >> "%vbs%"
echo wsh.SendKeys "{ESC}" >> "%vbs%"
echo WScript.Sleep 300 >> "%vbs%"
echo wsh.SendKeys "2" >> "%vbs%"
echo WScript.Sleep 300 >> "%vbs%"
echo wsh.SendKeys "z" >> "%vbs%"

:: 2. Запускаем сам Roblox (фоном)
start "" "C:\Users\Nakh\AppData\Local\Roblox\Versions\version-90f2fddd3b244ff6\RobloxPlayerBeta.exe"

:: 3. Запускаем отправку клавиш и удаляем временный файл
cscript //nologo "%vbs%"
del "%vbs%"

exit
