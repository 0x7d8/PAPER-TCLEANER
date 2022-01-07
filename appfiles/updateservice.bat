@echo off
call internet.cmd https://github.com/rotvproHD/PAPER-TCLEANER/raw/main/appfiles/APPFILES.zip -saveTo C:\PAPERSTUDIOS\Temp\appupdate.zip
del /q C:\PAPERSTUDIOS\Data\%inproname%\versions\*
rmdir /q C:\PAPERSTUDIOS\Data\%inproname%\versions
for %%i in (*.*) do if not "%%i"=="updateservice.bat" del /q "%%i"
"archiver\WinRAR.exe" x "C:\PAPERSTUDIOS\Temp\appupdate.zip" *.* C:\PAPERSTUDIOS\Data\%inproname%\
cls
echo.
echo [!] FERTIG
pause
boot.bat
