@echo off
call internet.cmd https://github.com/rotvproHD/PAPER-TCLEANER/raw/main/appfiles/APPFILES.zip -saveTo C:\PAPERSTUDIOS\Temp\appupdate.zip
for %%i in (*.*) do if not "%%i"=="updateservice.bat" del /q "%%i"
del /q C:\PAPERSTUDIOS\Data\%inproname%\version\*
rmdir /q C:\PAPERSTUDIOS\Data\%inproname%\version
"archiver\WinRAR.exe" x "C:\PAPERSTUDIOS\Temp\appupdate.zip" *.* C:\PAPERSTUDIOS\Data\%inproname%\
cls
echo.
echo [!] FERTIG
pause
boot.bat
