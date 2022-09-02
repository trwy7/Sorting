@echo off
:start
color 3
echo please choose an number
echo 1) Install app
echo 2) Use sort without installing
echo 3) Cancel install
set/p "cho=>"
if %cho%==1 goto install
if %cho%==2 goto app
if %cho%==3 goto exit
cls
color fc
echo please choose a valid option
pause
cls
goto start
:install
md "C:\treyapps\Sort"
md "C:\treyapps\Sort\sorting"
copy *.* "C:\treyapps\Sort"
md %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\"
copy "C:\treyapps\Sort\Sort your files.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
cls
echo please choose an number
echo 1) Exit
echo 2) Sort now
set/p "cho=>"
if %cho%==1 goto exit
if %cho%==2 "C:\treyapps\Sort\sorting.bat" install
goto exit
:exit
exit
:app
cls
timeout 1
tempsort.bat
