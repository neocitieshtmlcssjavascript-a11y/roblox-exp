@echo off
chcp 65001 > nul
echo [Windows 11] Запуск Roblox и отправка клавиш...

:: 1. Создаем скрипт нажатия клавиш во временной папке Windows 11
set "vbs=%temp%\roblox_keys.vbs"
echo Set wsh = CreateObject("WScript.Shell") > "%vbs%"
echo WScript.Sleep 7000 >> "%vbs%"
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

:: 2. Запуск клиента игры
start "" "C:\Users\Nakh\AppData\Local\Roblox\Versions\version-90f2fddd3b244ff6\RobloxPlayerBeta.exe"

:: 3. Выполнение макроса командной строкой Windows 11 и очистка
cscript //nologo "%vbs%"
del "%vbs%"

exit
