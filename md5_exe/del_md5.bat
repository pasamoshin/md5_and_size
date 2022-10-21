reg delete HKCR\*\shell\md5 /f
del /f/q/s "%SYSTEMDRIVE%\Program Files\get_md5" >nul
rmdir /q/s "%SYSTEMDRIVE%\Program Files\get_md5"