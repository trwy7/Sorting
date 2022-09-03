@echo off
cd /d "C:\treyapps\Sort"
echo Press any key to uninstall sorting
pause > NUL
rd %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\"
del /q %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
msg * done
del /q *.*