REM Skrypt uruchamiający wysyłkę STIR
@echo off
echo.
set dt=%DATE%
set dt=%dt:-=_%
"C:\STIR-SKRYPTY\stir-eksport.bat" > "S:\eksport\LOGI\%dt:-=_%.txt"
exit
REM DEBUG MODE
REM pause > nul