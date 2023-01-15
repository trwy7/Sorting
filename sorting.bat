@echo off
:: sets the title
title A simple sorting app
:: sets starting variables
set loc=%appdata%\treyapps\sort\sorting
set desktop=%userprofile%\Documents\sorting
set iconoptionblue=%appdata%\treyapps\sort\settings\icon\blue.s
set iconoptiondefault=%appdata%\treyapps\sort\settings\icon\default.s
set iconoptionpurple=%appdata%\treyapps\sort\settings\icon\purple.s
set iconoptiongrey=%appdata%\treyapps\sort\settings\icon\greyscale.s
:: for updating
set currentver=1.1.1
set ver=00101010
set theValue=
for /f "delims=" %%a in ('curl -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/debug/currentStableVersion') do @set theValue=%%a
if %ver% GTR %theValue% echo you are running a beta version
if %ver% LSS %theValue% goto askforautoupdate
if %ver% == %theValue% echo you are up to date
:: sets timeout for checking version number (if not connected to internet it will throw an error message)
timeout 2 > NUL
:start
cls
color 0f 
echo welcome to a sorting app
echo [o  ]
timeout 1 > NUL
cls
echo welcome to a sorting app
echo [oo ]
timeout 1 > NUL
cls
echo welcome to a sorting app
echo [ooo]
timeout 1 > NUL
cls
goto sort
:askforautoupdate
echo You are out of date
echo Would you like to update
echo 1) Yes
echo 2) No
set/p "cho=>"
if %cho%==1 goto update
if %cho%==2 goto start
:crash
cls
color fc
echo huh, well this is awkward.
echo it looks like it crashed
pause
echo you can close the app now or press a key to try again
pause
goto sort
:open
start %SystemRoot%\explorer.exe %appdata%\treyapps\sort\sorting
exit
:Custom
color fc
cls
set/p "loc=location>"
color 0f
goto startsort
:exit
exit
:sort
cls
echo please choose an number
echo 1) cancel
echo 2) Sort now
echo 3) open sorting folder for later
echo 4) More options
set/p "cho=>"
if %cho%==1 goto exit
if %cho%==2 goto sort1
if %cho%==3 goto open
if %cho%==4 goto menu
if %cho%==69420 echo entering debug mode
if %cho%==69420 echo i am not responsible for what happens here
if %cho%==69420 cmd.exe
goto sort
:sort1
cls
echo the ending files will go to
echo %desktop%
pause
title sorting
cls
:sort2
echo creating folders
if EXIST "%desktop%\images" (
echo Images already exist, Skipping!
) else (
    md %desktop%\images
)
if EXIST "%desktop%\apps" (
echo Apps already exist, Skipping!
) else (
    md %desktop%\apps
)
if EXIST "%desktop%\music" (
echo Music already exist, Skipping!
) else (
    md %desktop%\music
)
if EXIST "%desktop%\screensavers" (
echo Screensavers already exist, Skipping!
) else (
    md %desktop%\screensavers
)
if EXIST "%desktop%\videos" (
echo Videos already exist, Skipping!
) else (
    md %desktop%\videos
)
if EXIST "%desktop%\installers" (
echo Installers already exist, Skipping!
) else (
    md %desktop%\installers
)
cd %loc%
::images
title sorting photos
echo sorting photos
move *.jpg* %desktop%\images
move *.jpeg* %desktop%\images
move *.jfif* %desktop%\images
move *.gif* %desktop%\images
move *.png* %desktop%\images
move *.jpg* %desktop%\images
::apps
title sorting apps
echo sorting apps
move *setup* %desktop%\installers
move *installer* %desktop%\installers
move *.bat* %desktop%\apps
move *.cmd* %desktop%\apps
move *.py* %desktop%\apps
move *.exe* %desktop%\apps
move *.com* %desktop%\apps
move *.scr* %desktop%\screensavers
move *.msi* %desktop%\installers
move *.msix* %desktop%\installers
::music
title sorting music
echo sorting music
move *.mp3* %desktop%\music
move *.m4a* %desktop%\music
move *.wav* %desktop%\music
::videos
title sorting videos
echo sorting videos
move *.mp4* %desktop%\videos
::work
title sorting work
echo sorting work
move *.pptx* %desktop%\work\presentations
move *.docx* %desktop%\work\Documents
move *.xlsx* %desktop%\work\spreadsheets
title finishing up
attrib -S -H %desktop%\desktop.ini
del %desktop%\desktop.ini
cls
IF EXIST %appdata%\treyapps\sort\settings\icon\default.s copy %appdata%\treyapps\sort\icon1.txt %desktop%\desktop.ini
IF EXIST %appdata%\treyapps\sort\settings\icon\blue.s copy %appdata%\treyapps\sort\icon2.txt %desktop%\desktop.ini
IF EXIST %appdata%\treyapps\sort\settings\icon\purple.s copy %appdata%\treyapps\sort\icon3.txt %desktop%\desktop.ini
IF EXIST %appdata%\treyapps\sort\settings\icon\greyscale.s copy %appdata%\treyapps\sort\icon4.txt %desktop%\desktop.ini
IF EXIST %appdata%\treyapps\sort\settings\icon\secret.s copy %appdata%\treyapps\sort\iconSecret.txt %desktop%\desktop.ini
pause
attrib +S +H %desktop%\desktop.ini
del %desktop%\readme.txt
echo This folder has your sortable files >%desktop%\readme.txt
color fc
title sorting complete
cls
echo Everything that is a sortable file type
echo has been put in your documents
echo This folder has your sortable files >%desktop%\readme.txt
pause
start explorer.exe %desktop%
exit
:menu
cls
echo please choose an number
echo 1) Feedback
echo 2) uninstall
echo 3) change icon
echo 4) check for updates
echo 5) Back
set/p "cho=>"
if %cho%==1 goto forms
if %cho%==2 goto uninstall
if %cho%==3 goto iconchange
if %cho%==4 goto update
if %cho%==5 goto sort
goto menu
:update
set num=%random%
set temploc=%temp%\%num%
md %temploc%
cd /d %temploc%
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/CurrentVersion.txt
cls
SETLOCAL DisableDelayedExpansion
FOR /F "usebackq delims=" %%a in (`"findstr /n ^^ CurrentVersion.txt"`) do (
    set "var=%%a"
    SETLOCAL EnableDelayedExpansion
    set "var=!var:*:=!"
    echo(!var!
    ENDLOCAL
)
echo Your current version: %currentver%
echo.
echo please choose an option
echo 1) install latest beta
echo 2) cancel
set/p "cho=>"
if %cho%==1 curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/onlineinstaller.bat
if %cho%==1 onlineinstaller.bat
if %cho%==2 goto sort
:iconchange
cd /d C:\treyapps\sort\shortcuts
echo please choose an icon
echo 1) Default (blue and green)
echo 2) Blue (just shades of blue)
echo 3) Purple (purple and pink)
echo 4) greyscale (black and white)
set/p "icon=>"
if %icon%==1 copy "greenblue.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
if %icon%==2 copy "blue.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
if %icon%==3 copy "purple.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
if %icon%==4 copy "greyscale.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
IF EXIST %appdata%\treyapps\sort\settings\icon\default.s DEL /F %appdata%\treyapps\sort\settings\icon\default.s
IF EXIST %appdata%\treyapps\sort\settings\icon\blue.s DEL /F %appdata%\treyapps\sort\settings\icon\blue.s
IF EXIST %appdata%\treyapps\sort\settings\icon\purple.s DEL /F %appdata%\treyapps\sort\settings\icon\purple.s
IF EXIST %appdata%\treyapps\sort\settings\icon\greyscale.s DEL /F %appdata%\treyapps\sort\settings\icon\greyscale.s
IF EXIST %appdata%\treyapps\sort\settings\icon\secret.s DEL /F %appdata%\treyapps\sort\settings\icon\secret.s
if %icon%==1 echo this is a file used for settings > %appdata%\treyapps\sort\settings\icon\default.s
if %icon%==2 echo this is a file used for settings > %appdata%\treyapps\sort\settings\icon\blue.s
if %icon%==3 echo this is a file used for settings > %appdata%\treyapps\sort\settings\icon\purple.s
if %icon%==4 echo this is a file used for settings > %appdata%\treyapps\sort\settings\icon\greyscale.s
attrib -S -H %desktop%\desktop.ini
del %desktop%\desktop.ini
goto sort
:forms
cls
echo please choose an number
echo 1) google forms
echo 2) github
echo 3) Back
set/p "cho=>"
if %cho%==1 start https://docs.google.com/forms/d/e/1FAIpQLSeDDv3icxblmAuFTGyq1MAOR8_L6lxtBTPHJB_cWXxuuxIYBw/viewform?usp=sf_link
if %cho%==2 start https://github.com/trey7658/Sorting/issues/new/choose
if %cho%==3 goto menu
exit
:uninstall
echo sorry to see you go!
timeout 2 > NUL
%appdata%\treyapps\sort\uninstall.bat
