REM Skrypt uruchamiający odbiór STIR
@echo off
echo.
set dt=%DATE%
set dt=%dt:-=_%
"C:\STIR-SKRYPTY\stir_import.bat" > "S:\import\LOGI\%dt:-=_%.txt"
exit
REM DEBUG MODE
REM pause > nul