@echo off
chcp 65001 > nul
setlocal
title BackupScript by Caioba

::-----------------------------------------------------------------------

echo.
echo ========================  BACKUP SCRIPT (v1.0)  ========================  by Caioba
echo.
echo.
echo.
echo     O script fará backup das pastas: Downloads, Documentos e Imagens
echo.
echo.
echo.
echo.
pause

::-----------------------------------------------------------------------

cls
echo.
echo Pasta Downloads encontrada, copiando...
echo.
timeout /t 5 /nobreak

md "%CD%\Backup Downloads"

xcopy "%USERPROFILE%\Downloads\*" "%CD%\Backup Downloads" /E /I

::-----------------------------------------------------------------------

echo.
echo.
echo.

md "%CD%\Backup Documentos"

dir /b "%USERPROFILE%\Documents" 2>nul | findstr . >nul
if ERRORLEVEL 1 (
	echo.
	echo Pasta Documentos encontrada, copiando...
	echo.
	echo.
	echo.
	timeout /t 5 /nobreak
	xcopy "%USERPROFILE%\Documentos\*" "%CD%\Backup Documentos" /E /I
) else (
	echo.
	echo Pasta Documents encontrada, copiando...
	echo.
	echo.
	echo.
	timeout /t 5 /nobreak
	xcopy "%USERPROFILE%\Documents\*" "%CD%\Backup Documentos" /E /I
)

::-----------------------------------------------------------------------

echo.
echo.
echo.

md "%CD%\Backup Imagens"

dir /b "%USERPROFILE%\Pictures" 2>nul | findstr . >nul
if ERRORLEVEL 1 (
	echo.
	echo Pasta Imagens encontrada, copiando...
	echo.
	echo.
	echo.
	timeout /t 5 /nobreak
	xcopy "%USERPROFILE%\Imagens\*" "%CD%\Backup Imagens" /E /I
) else (
	echo.
	echo Pasta Pictures encontrada, copiando...
	echo.
	echo.
	echo.
	timeout /t 5 /nobreak
	xcopy "%USERPROFILE%\Pictures\*" "%CD%\Backup Imagens" /E /I
)

::-----------------------------------------------------------------------

echo.
echo.
echo.
color 0A
echo Backup concluído
echo.
echo.
echo.

pause
exit