@echo off
REM Skrypt odpowiedzialny za przygotowanie folder¢w z odpowiedni¥ dat¥ dla plik¢w STIR IMPORT  
REM
set day=%Date:~8,2%
set month=%Date:~5,2%
set year=%Date:~0,4%

IF %month%==01 (
set month_control=Styczeä
goto doit
)
IF %month%==02 (
set month_control=Luty
goto doit
)
IF %month%==03 (
set month_control=Marzec
goto doit
)
IF %month%==04 (
set month_control=Kwiecieä
goto doit
)
IF %month%==05 (
set month_control=Maj
goto doit
)
IF %month%==06 (
set month_control=Czerwiec
goto doit
)
IF %month%==07 (
set month_control=Lipiec
goto doit
)
IF %month%==08 (
month_control=Sierpieä
goto doit
)
IF %month%==09 (
set month_control=Wrzesieä
goto doit
)
IF %month%==10 (
set month_control=Pa«dziernik
goto doit
)
IF %month%==11 (
set month_control=Listopad
goto doit
)
IF %month%==12 (
set month_control=Grudzieä
goto doit
)

:doit

for /F "skip=1" %%I in ('wmic path win32_localtime get dayofweek') do (set /a nr_d=%%I 2>NUL)

if %nr_d% equ 1 set /a "day=%day%-3"
if %nr_d% equ 2 set /a "day=%day%-1"
if %nr_d% equ 3 set /a "day=%day%-1"
if %nr_d% equ 4 set /a "day=%day%-1"
if %nr_d% equ 5 set /a "day=%day%-1"

mkdir S:\import\%year%\%month_control%\%day%.%month%.%year%
mkdir S:\import\odczytane\%year%\%month_control%\%day%.%month%.%year%
mkdir S:\import\odczytane\%year%\%month_control%\%day%.%month%.%year%_ocena_ryzyka
mkdir "S:\ocena ryzyka odbi¢r plik¢w\%year%\%month_control%\%day%.%month%.%year%"
copy S:\import\*.XML S:\import\%year%\%month_control%\%day%.%month%.%year%\
copy S:\import\*.SEM S:\import\%year%\%month_control%\%day%.%month%.%year%\
copy S:\import\*.TXT S:\import\%year%\%month_control%\%day%.%month%.%year%\
copy "S:\ocena ryzyka odbi¢r plik¢w\*.XML" "S:\ocena ryzyka odbi¢r plik¢w\%year%\%month_control%\%day%.%month%.%year%"
copy "S:\ocena ryzyka odbi¢r plik¢w\*.SEM" "S:\ocena ryzyka odbi¢r plik¢w\%year%\%month_control%\%day%.%month%.%year%"