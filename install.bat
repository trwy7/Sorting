@echo off
:start
color 3
echo please choose an number
echo 1) Install app
echo 2) Cancel install
set/p "cho=>"
if %cho%==1 goto iconselector
if %cho%==2 goto exit
cls
color fc
echo please choose a valid option
pause
cls
goto start
:iconselector
cls
echo                       ;;;;;;;;:::                                   +++                           
echo                      ;;;;;;;;;::::                                 ;;;++                          
echo                      ;;;;;;;;;::::                               ;;;;+++++                        
echo                      ;;;;;;;;;::::                             ;;:;;;;;;;;++                      
echo                       ;;;;;;;;:::                               ;;;;;;;;;;+                       
echo.                                                                                                     
echo                                               ;;;;;::                                              
echo                                             ;;;;;;;::::                                            
echo                                            +;;;;;;;;::::                                           
echo                                             ;;;;;;;;:::                                            
echo                                               ;;;;;:;                                              
echo.                                                                                                     
echo                  ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,                 
echo                 ,::::::::::::,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,                
echo                 :::::::::::::::::::::::::::,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,                
echo                   ::::;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;::::::::::::::::::,,,,                  
echo                       ++++++++++++++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;                      
echo                       ?+++++++++++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;;                      
echo                        +++++++++++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;;                       
echo                            +++++++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;                           
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;           Choose an icon                 
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;               1) blue and green                   
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                2) just blue                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                 3) Purple and pink                   
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                  4) black and white (greyscale)                   
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;                                      
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;        
echo.                                   
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
echo %icon% > %appdata%\treyapps\sort\iconcolor.txt
if %icon%==1 copy "greenblue.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
if %icon%==2 copy "blue.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
if %icon%==3 copy "purple.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
if %icon%==4 copy "greyscale.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
IF EXIST %appdata%\treyapps\sort\settings\icon\default.s DEL /F %appdata%\treyapps\sort\settings\icon\default.s
IF EXIST %appdata%\treyapps\sort\settings\icon\blue.s DEL /F %appdata%\treyapps\sort\settings\icon\blue.s
IF EXIST %appdata%\treyapps\sort\settings\icon\purple.s DEL /F %appdata%\treyapps\sort\settings\icon\purple.s
IF EXIST %appdata%\treyapps\sort\settings\icon\greyscale.s DEL /F %appdata%\treyapps\sort\settings\icon\greyscale.s
if %icon%==1 echo this is a file used for settings > %appdata%\treyapps\sort\settings\icon\default.s
if %icon%==2 echo this is a file used for settings > %appdata%\treyapps\sort\settings\icon\blue.s
if %icon%==3 echo this is a file used for settings > %appdata%\treyapps\sort\settings\icon\purple.s
if %icon%==4 echo this is a file used for settings > %appdata%\treyapps\sort\settings\icon\greyscale.s
copy "greenblue.lnk" C:\treyapps\sort\shortcuts
copy "blue.lnk" C:\treyapps\sort\shortcuts
copy "purple.lnk" C:\treyapps\sort\shortcuts
copy "greyscale.lnk" C:\treyapps\sort\shortcuts
cls
echo Done installing
echo 1) Exit
echo 2) Sort now
set/p "cho=>"
if %cho%==1 goto exit
if %cho%==2 %appdata%\treyapps\sort\sorting.bat
goto exit
:exit
exit