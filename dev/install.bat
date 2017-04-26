@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

call :colorEcho a0 "Downloading graphics patch... (test)"
echo.
call :colorEcho 0a "Sometimes you won't get a download ETA or file size, but the download will be completed normally"
echo.
timeout /t 1 > nul
.\aria2c.exe -o tatarigoroshi-graphics.zip --file-allocation=none --continue=true https://gitlab.com/07th-mod/tatarigoroshi-graphics/repository/archive.zip?ref=master
timeout /t 1 > nul

call :colorEcho a0 "Downloading voice patch..."
echo.
timeout /t 1 > nul
.\aria2c.exe --file-allocation=none --continue=true https://github.com/07th-mod/resources/releases/download/Nipah/Tatarigoroshi-Voices.zip
timeout /t 1 > nul

call :colorEcho a0 "Downloading MangaGamer sprites patch..."
echo.
timeout /t 1 > nul
.\aria2c.exe --file-allocation=none --continue=true https://github.com/jwgrlrrajn/higurashi-steam-sprite-mods/releases/download/1.0.1/tatarigoroshi-steam-sprites.zip
timeout /t 1 > nul

call :colorEcho a0 "Downloading patch..."
echo.
timeout /t 1 > nul
.\aria2c.exe --file-allocation=none --continue=true https://github.com/07th-mod/tatarigoroshi/releases/download/v1.7/Tatarigoroshi.Voice.and.Graphics.Patch.v1.7.zip
timeout /t 1 > nul

call :colorEcho a0 "Extracting files..."
echo.
timeout /t 1 > nul
.\7za.exe x tatarigoroshi-steam-sprites.zip
echo D | xcopy /E /Y .\tatarigoroshi-steam-sprites\CGAlt .\CGAlt > nul
rmdir /S /Q .\tatarigoroshi-steam-sprites > nul
.\7za.exe x Tatarigoroshi-Voices.zip
echo S | .\7za.exe x Tatarigoroshi.Voice.and.Graphics.Patch.v1.7.zip
.\7za.exe x tatarigoroshi-graphics.zip
move .\tatarigoroshi-graphics-master* .\tatarigoroshi-graphics > nul
echo D | xcopy /E /Y .\tatarigoroshi-graphics\CGAlt .\CG > nul
rmdir /S /Q .\tatarigoroshi-graphics > nul
timeout /t 1 > nul

call :colorEcho a0 "Moving folders..."
echo.
echo D | xcopy /E /Y .\CGAlt ..\CGAlt > nul
echo D | xcopy /E /Y .\CG ..\CG > nul
echo D | xcopy /E /Y .\SE ..\SE > nul
echo D | xcopy /E /Y .\Update ..\Update > nul

call :colorEcho a0 "Deleting useless files..."
echo.
timeout /t 1 > nul
rmdir /S /Q .\CG > nul
rmdir /S /Q .\CGAlt > nul
rmdir /S /Q .\Update > nul
rmdir /S /Q .\SE > nul
del .\*.zip > nul
timeout /t 1 > nul

call :colorEcho a0 "All done, finishing in three seconds..."
timeout /t 3 > nul

exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i