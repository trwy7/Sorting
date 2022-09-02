@echo off
set loc="C:\treyapps\Sort\sorting"
set desktop=%userprofile%\Documents\sorting
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

echo Welcome to the sorter.
echo this version does not have as many features as the installed version
echo 1) cancel
echo 2) Sort now
echo 3) Install
set/p "cho=>"
if %cho%==1 goto exit
if %cho%==2 goto startsort
if %cho%==3 install.bat
exit
:startsort
echo creating sorting folder.
md "C:\treyapps\Sort\sorting"
cls
echo press any key to open sorting folder.
pause > NUL
start %SystemRoot%\explorer.exe "C:\treyapps\Sort\sorting"
cls
echo starting Sort at
echo %loc%
echo to folder
echo %desktop%
echo exit the app now if anything looks wrong
color fc
pause
cls
echo if the app starts showing errors this is beacause there is nothing with that file type.
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
@echo on
echo testing
@echo off
::images
cls
echo sorting photos
move *.jpg* %desktop%\images
move *.jpeg* %desktop%\images
move *.jfif* %desktop%\images
move *.gif* %desktop%\images
move *.png* %desktop%\images
move *.jpg* %desktop%\images
timeout 4
::apps
cls
echo sorting apps
move *.bat* %desktop%\apps
move *.cmd* %desktop%\apps
move *.py* %desktop%\apps
move *.exe* %desktop%\apps
move *.com* %desktop%\apps
move *.scr* %desktop%\screensavers
move *.msi* %desktop%\installers
timeout 4
::music
cls
echo sorting music
move *.mp3* %desktop%\music
move *.m4a* %desktop%\music
move *.wav* %desktop%\music
timeout 4
::videos
cls
echo sorting videos
move *.mp4* %desktop%\videos
timeout 3
::work
cls
echo sorting work
move *.pptx* %desktop%\work\presentations
timeout 2
ECHO [.ShellClassInfo] >%desktop%\desktop.ini
ECHO IconResource=C:\treyapps\Sort\Icon.ico,0 >>%desktop%\desktop.ini
move %desktop%\desktop.in %desktop%\desktop.ini
attrib +S +H %desktop%\desktop.ini
attrib +R %desktop%
timeout 2
del %desktop%\readme.txt
timeout 3
echo This folder has your sortable files >%desktop%\readme.txt
echo Thanks for using treys file sorter >>%desktop%\readme.txt
color fc
echo Everything that is a sortable file type
echo has been put in your documents
echo This folder has your sortable files >%desktop%\readme.txt
echo Thanks for using treys file sorter >>%desktop%\readme.txt
echo If you want you can install the sorter for more features and file types >>%desktop%\readme.txt
echo Here are the files that didnt get sorted: >%desktop%\notsorted.txt
dir/b >>%desktop%\notsorted.txt
pause