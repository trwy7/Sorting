@echo off
title A simple sorting app
set loc="C:\treyapps\Sort\sorting"
set desktop=%userprofile%\Documents\sorting
:start
color 0f 
echo welcome to a sorting app that trey made
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
start %SystemRoot%\explorer.exe "C:\treyapps\Sort\sorting"
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
echo 4) Custom sorting folder (make sure to use quotes)
echo 5) Request new file type
echo 6) uninstall
set/p "cho=>"
if %cho%==1 goto exit
if %cho%==2 goto startsort
if %cho%==3 goto open
if %cho%==4 goto Custom
if %cho%==5 start https://docs.google.com/forms/d/e/1FAIpQLSeDDv3icxblmAuFTGyq1MAOR8_L6lxtBTPHJB_cWXxuuxIYBw/viewform?usp=sf_link
if %cho%==5 start explorer.exe "C:\treyapps\Sort"
exit
:startsort
cls
echo the ending files will go to
echo %desktop%
color fc
echo if the app shows errors it is fine
title confirm sort
pause
title sorting
cls
color 0f
:: icon isnt working for first install hovever i found a better solution
::md %desktop%
::copy icon.txt %desktop%
::rename %desktop%\icon.txt desktop.ini
::attrib %desktop%\desktop.ini +s +h +r
::del icon.txt
md %desktop%\images
md %desktop%\apps
md %desktop%\music
md %desktop%\screensavers
md %desktop%\videos
md %desktop%\installers
cd %loc%
::images
cls
title sorting photos
echo sorting photos
move *.jpg* %desktop%\images
move *.jpeg* %desktop%\images
move *.jfif* %desktop%\images
move *.gif* %desktop%\images
move *.png* %desktop%\images
move *.jpg* %desktop%\images
timeout 1
::apps
cls
title sorting apps
echo sorting apps
move *.bat* %desktop%\apps
move *.cmd* %desktop%\apps
move *.py* %desktop%\apps
move *.exe* %desktop%\apps
move *.com* %desktop%\apps
move *.scr* %desktop%\screensavers
move *.msi* %desktop%\installers
timeout 1
::music
title sorting music
cls
echo sorting music
move *.mp3* %desktop%\music
move *.m4a* %desktop%\music
move *.wav* %desktop%\music
timeout 1
::videos
cls
title sorting videos
echo sorting videos
move *.mp4* %desktop%\videos
timeout 1
::work
cls
title sorting work
echo sorting work
move *.pptx* %desktop%\work\presentations
move *.docx* %desktop%\work\Documents
move *.xlsx* %desktop%\work\spreadsheets
timeout 1
title finishing up
cls
ECHO [.ShellClassInfo] >%desktop%\desktop.ini
ECHO IconResource=C:\treyapps\Sort\Icon.ico,0 >>%desktop%\desktop.ini
move %desktop%\desktop.in %desktop%\desktop.ini
attrib +S +H %desktop%\desktop.ini
attrib +R %desktop%
timeout 1
del %desktop%\readme.txt
timeout 1
echo This folder has your sortable files >%desktop%\readme.txt
echo Thanks for using treys file sorter >>%desktop%\readme.txt
color fc
title sorting complete
echo Everything that is a sortable file type
echo has been put in your documents
echo This folder has your sortable files >%desktop%\readme.txt
echo Thanks for using treys file sorter >>%desktop%\readme.txt
start explorer.exe %desktop%
pause
exit
:uninstall
echo sorry to se you go!
timeout 4 > NUL
"C:\treyapps\Sort\uninstall.bat"