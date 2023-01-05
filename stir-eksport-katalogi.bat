@echo off
REM Skrypt odpowiedzialny za przygotowanie folder¢w z odpowiedni¥ dat¥ dla plik¢w STIR EKSPORT
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

mkdir S:\eksport\%year%\%month_control%\%day%.%month%.%year%
copy S:\eksport\*.XML S:\eksport\%year%\%month_control%\%day%.%month%.%year%\
copy S:\eksport\*.SEM S:\eksport\%year%\%month_control%\%day%.%month%.%year%\
copy S:\eksport\*.LOG S:\eksport\%year%\%month_control%\%day%.%month%.%year%\
copy S:\eksport\*.TXT S:\eksport\%year%\%month_control%\%day%.%month%.%year%\