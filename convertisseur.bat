@echo off

call config.cmd

echo        *********************************
echo        *        Super convertor        *
echo        *            By Marty           *
echo        *                               *
echo        *********************************
echo.
echo Parametres actuels :

echo - Nombre de canaux : %ac%
echo - Echantillonage : %ar%
echo - Debit : %ab%
echo - Format : %codec%
echo.
echo Traitement...

for %%i in (%dossier_in%/*) do echo - %%i && ffmpeg -v 0 -i "%dossier_in%/%%i" -y -ar %ar% -ac %ac% -ab %ab% -f %codec% "%dossier_out%/%%i.%codec%"

echo.
echo Fini !
pause