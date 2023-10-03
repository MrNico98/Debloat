@echo off
FOR /F %%j in ('DIR C:\Users ^/b') do ECHO. & ECHO %%j & RD C:\Users\%%j\AppData\Local\Temp /S /Q
ECHO.
ECHO.
ECHO WINDOWS TEMP
RD C:\Windows\Temp /S /Q
ping 127.0.0.1 -n 10 > nul
