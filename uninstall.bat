@echo off
cd /d "C:\treyapps\Sort"
rd %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\"
del /q %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
msg * done
del /q *.*