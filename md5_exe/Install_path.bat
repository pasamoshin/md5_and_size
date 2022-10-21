@echo off
set path_exe=%~dp0MD5.exe
set path_del_bat=%~dp0del_md5.bat
xcopy %path_exe% %SYSTEMDRIVE%\Progra~1\get_md5\ /i /y
xcopy %path_del_bat% %SYSTEMDRIVE%\Progra~1\get_md5\ /i /y
reg add HKCR\*\shell\md5 /d "Посчитать MD5"
reg add HKCR\*\shell\md5 /v icon /t REG_SZ /d "%SYSTEMDRIVE%\Progra~1\get_md5\MD5.exe"
reg add HKCR\*\shell\md5\command /d "\"%SYSTEMDRIVE%\Program Files\get_md5\MD5.exe\" \"%%1\""
pause
