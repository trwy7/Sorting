@echo off
echo Downloading TOS
timeout 1 > nul
set num=%random%
set loc=%temp%\%num%
md %loc%
curl -o %loc%\TOS.txt https://raw.githubusercontent.com/trey7658/Sorting/main/TOS.txt
cls
@echo off
cd /d %loc%
SETLOCAL DisableDelayedExpansion
FOR /F "usebackq delims=" %%a in (`"findstr /n ^^ TOS.txt"`) do (
    set "var=%%a"
    SETLOCAL EnableDelayedExpansion
    set "var=!var:*:=!"
    echo(!var!
    ENDLOCAL
)
del TOS.txt
pause > NUL
:ask
cls
echo please choose an number
echo 1) I accept the terms and conditions
echo 2) I dont accept the terms and conditions
set/p "cho=>"
if %cho%==1 goto startdownload
if %cho%==2 goto deniedtos
goto ask
:deniedtos
cls
color fc
echo you must accept the TOS to continue
pause > NUL
exit
:startdownload
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/IconPurple.ico
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/uninstall.bat
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/purple.lnk
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/greyscale.lnk
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/greenblue.lnk
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/blue.lnk
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/sorting.bat
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/opensort.bat
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/install.bat
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/icon.txt
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/IconBlue.ico
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/IconBlackAndWhite.ico
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/Icon.ico
:iconselector
cls
echo please choose an icon
echo 1) Default (blue and green)
echo 2) Blue (just shades of blue)
echo 3) Purple (purple and pink)
echo 4) greyscale (black and white)
set/p "icon=>"
if %icon%==1 goto install
if %icon%==2 goto install
if %icon%==3 goto install
if %icon%==4 goto install 
goto iconselector
:install
md C:\treyapps\sort\icons
md C:\treyapps\sort\shortcuts
md %appdata%\treyapps\sort\sorting
copy *.* %appdata%\treyapps\sort\
copy "opensort.bat" C:\treyapps\sort
copy "Icon.ico" C:\treyapps\sort\icons
copy "IconBlackAndWhite.ico" C:\treyapps\sort\icons
copy "IconBlue.ico" C:\treyapps\sort\icons
copy "IconPurple.ico" C:\treyapps\sort\icons
del %appdata%\treyapps\sort\opensort.bat
del %appdata%\treyapps\sort\Icon.ico
del %appdata%\treyapps\sort\IconBlackAndWhite.ico
del %appdata%\treyapps\sort\IconBlue.ico
del %appdata%\treyapps\sort\IconPurple.ico
md %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\"
if %icon%==1 copy "greenblue.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
if %icon%==2 copy "blue.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
if %icon%==3 copy "purple.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
if %icon%==4 copy "greyscale.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
copy "greenblue.lnk" C:\treyapps\sort\shortcuts
copy "blue.lnk" C:\treyapps\sort\shortcuts
copy "purple.lnk" C:\treyapps\sort\shortcuts
copy "greyscale.lnk" C:\treyapps\sort\shortcuts
cls
del /Q *.*
echo Done installing
echo 1) Exit
echo 2) Sort now
set/p "cho=>"
if %cho%==1 exit
if %cho%==2 %appdata%\treyapps\sort\sorting.bat