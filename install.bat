@echo off
:start
color 3
echo please choose an number
echo 1) Install app
echo 2) Cancel install
set/p "cho=>"
if %cho%==1 goto install
if %cho%==2 goto exit
cls
color fc
echo please choose a valid option
pause
cls
goto start
:install
md C:\treyapps\sort\
md %appdata%\treyapps\sort\sorting
copy *.* %appdata%\treyapps\sort\
copy "opensort.bat" C:\treyapps\sort
copy "Icon.ico" C:\treyapps\sort
del %appdata%\treyapps\sort\opensort.bat
del %appdata%\treyapps\sort\Icon.ico
md %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\"
copy "Sort your files.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
copy "SORTYO~1.LNK" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
copy "UNINST~1.BAT" %appdata%\treyapps\sort\uninstall.bat
cls
echo please choose an number
echo 1) Exit
echo 2) Sort now
set/p "cho=>"
if %cho%==1 goto exit
if %cho%==2 %appdata%\treyapps\sort\sorting.bat
goto exit
:exit
exit