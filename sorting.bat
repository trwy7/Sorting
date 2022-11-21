@echo off
title A simple sorting app
set loc=%appdata%\treyapps\sort\sorting
set desktop=%userprofile%\Documents\sorting
:start
color 0f 
echo welcome to a sorting app
goto sort
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
exit
:menu
cls
echo please choose an number
echo 1) Feedback
echo 2) uninstall
echo 3) change icon
echo 4) Back
set/p "cho=>"
if %cho%==1 goto forms
if %cho%==2 goto uninstall
if %cho%==3 goto iconchange
if %cho%==4 goto sort
exit
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
:sort1
cls
echo the ending files will go to
echo %desktop%
pause
title sorting
cls
echo sorting to
echo %desktop%
color 0f


:sort2
if EXIST "%desktop%\images" (
echo Images already exist!, Skipping!
) else (
    md %desktop%\images
)
if EXIST "%desktop%\apps" (
echo Apps already exist!, Skipping! 
) else (
    md %desktop%\apps
)
if EXIST "%desktop%\music" (
echo Music already exist!, Skipping! 
) else (
    md %desktop%\music
)
if EXIST "%desktop%\screensavers" (
echo Screensavers already exist!, Skipping! 
) else (
    md %desktop%\screensavers
)
if EXIST "%desktop%\videos" (
echo Videos already exist! 
) else (
    md %desktop%\videos
)
if EXIST "%desktop%\installers" (
echo Installers already exist!, Skipping!
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
ECHO [.ShellClassInfo] >%desktop%\desktop.ini
ECHO IconResource=C:\treyapps\Sort\Icon.ico,0 >>%desktop%\desktop.ini
move %desktop%\desktop.in %desktop%\desktop.ini
attrib +S +H %desktop%\desktop.ini
attrib +R %desktop%
del %desktop%\readme.txt
echo This folder has your sortable files >%desktop%\readme.txt
color fc
title sorting complete
pause
cls
echo Everything that is a sortable file type
echo has been put in your documents
echo This folder has your sortable files >%desktop%\readme.txt
pause
start explorer.exe %desktop%
exit
:uninstall
echo sorry to see you go!
timeout 2 > NUL
%appdata%\treyapps\sort\uninstall.bat