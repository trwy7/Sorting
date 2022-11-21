@echo off
cd /d %appdata%\treyapps\sort
cls
color fc
echo Press any key to uninstall sorting
pause > NUL
del /q %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
rd %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\"
msg * done
del /q *.*