@echo off
timeout 1 > nul
set num=%random%
set loc=%temp%\%num%
md %loc%
cd /d %loc%
:: skip TOS (it was removed)
goto startdownload
curl -O -S -s %loc%\TOS.txt https://raw.githubusercontent.com/trey7658/Sorting/main/TOS.txt
cls
@echo off
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
echo downloading required files
timeout 1 > NUL
:: downloads files used for installation
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/IconPurple.ico
if %errorlevel%==9009 echo curl is required but not installed for some reason
if %errorlevel%==9009 echo.
if %errorlevel%==9009 echo you can install with the manual installer found at the github repository
if %errorlevel%==9009 pause
if %errorlevel%==9009 start https://github.com/trey7658/Sorting/wiki/Install#manual-install
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Error, usually caused by no network connection or github is blocked on your network
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 1 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [#            ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                                           
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/uninstall.bat
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 2 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [##           ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                                           
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/purple.lnk
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 3 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [###          ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                                    
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/greyscale.lnk
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 4 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [####         ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                                  
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/greenblue.lnk
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 5 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [#####        ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                                  
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/blue.lnk
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 6 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [######       ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                              
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/sorting.bat
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 7 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [#######      ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                                   
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/opensort.bat
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 8 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [########     ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                              
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/install.bat
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
curl -O https://raw.githubusercontent.com/trey7658/Sorting/main/icon.txt
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 10 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [##########    ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                               
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/IconBlue.ico
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 11 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [###########   ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                         
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/IconBlackAndWhite.ico
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 12 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [############  ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                                           
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/Icon.ico
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. Please try again later
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    exit
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                            
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                               
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+                                
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                  
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;                                   
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;                                    
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;                                     
echo                                         ;;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          ;;;;;;;;;;;;;;;;;;;                                       
echo                                          +;;;;;;;;;;;;;;;;;:                                       
echo                                          ;;;;;;;;;;;;;;;;;;      file 13 of 13                                  
echo                                          ;;;;;;;;;;;;;;;;;;    [############# ]                                  
echo                                           ;;;;;;;;;;;;;;;;;                                        
echo                                            ;;;;;;;;;;;;;;;                                         
echo                                             ;;;;;;;;;;;;;                                           
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       Choose an icon
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;           1) blue and green
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;            2) just blue
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;             3) Purple and pink
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;              4) black and white (greyscale)
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
set/p "icon=Choose a numbered option and then press ENTER: "
if %icon%==1 goto install
if %icon%==2 goto install
if %icon%==3 goto install
if %icon%==4 goto install 
if %icon%==no goto secretinstall
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
IF EXIST %appdata%\treyapps\sort\IconSecret.ico DEL /F %appdata%\treyapps\sort\IconSecret.ico
md %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\"
md %appdata%\treyapps\sort\settings\icon\
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
if %cho%==1 exit
if %cho%==2 %appdata%\treyapps\sort\sorting.bat
exit
:secretinstall
cls
echo haha very funny.
timeout 2 > NUL
cls
echo Downloading extra files
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/secret/IconSecret.ico
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. You can try again with a normal icon option
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    goto iconselector
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;
echo                                         ;;;;;;;;;;;;;;;;;;;;
echo                                          ;;;;;;;;;;;;;;;;;;;
echo                                          ;;;;;;;;;;;;;;;;;;;
echo                                          +;;;;;;;;;;;;;;;;;:
echo                                          ;;;;;;;;;;;;;;;;;;      file 1 of 3
echo                                          ;;;;;;;;;;;;;;;;;;         [#  ]
echo                                           ;;;;;;;;;;;;;;;;;
echo                                            ;;;;;;;;;;;;;;;
echo                                             ;;;;;;;;;;;;;
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/secret/secret.lnk
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. You can try again with a normal icon option
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    goto iconselector
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;
echo                                         ;;;;;;;;;;;;;;;;;;;;
echo                                          ;;;;;;;;;;;;;;;;;;;
echo                                          ;;;;;;;;;;;;;;;;;;;
echo                                          +;;;;;;;;;;;;;;;;;:
echo                                          ;;;;;;;;;;;;;;;;;;      file 2 of 3
echo                                          ;;;;;;;;;;;;;;;;;;         [## ]
echo                                           ;;;;;;;;;;;;;;;;;
echo                                            ;;;;;;;;;;;;;;;
echo                                             ;;;;;;;;;;;;;
curl -O -S -s https://raw.githubusercontent.com/trey7658/Sorting/main/secret/iconSecret.txt
if NOT %errorlevel%==0 (
    cls
)
if NOT %errorlevel%==0 (
    echo Your connection was interupted during installation. You can try again with a normal icon option
)
if NOT %errorlevel%==0 (
    pause
)
if NOT %errorlevel%==0 (
    goto iconselector
)
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
echo                              +;+++++++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                 +;+++;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                  ;+;+;;;;;;;;;;;;;;;;;;;;;;;;;;;:;+
echo                                    +;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                     ++;;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                      +;;;;;;;;;;;;;;;;;;;;;;;;;
echo                                        ;;;;;;;;;;;;;;;;;;;;;;;
echo                                         ;;;;;;;;;;;;;;;;;;;;
echo                                          ;;;;;;;;;;;;;;;;;;;
echo                                          ;;;;;;;;;;;;;;;;;;;
echo                                          +;;;;;;;;;;;;;;;;;:
echo                                          ;;;;;;;;;;;;;;;;;;      file 3 of 3
echo                                          ;;;;;;;;;;;;;;;;;;         [###]
echo                                           ;;;;;;;;;;;;;;;;;
echo                                            ;;;;;;;;;;;;;;;
echo                                             ;;;;;;;;;;;;;
cls
timeout 1 > NUL
echo this is a file used for settings > %appdata%\treyapps\sort\settings\icon\secret.s
copy "IconSecret.ico" C:\treyapps\sort\icons
copy "secret.lnk" %appdata%"\Microsoft\Windows\Start Menu\Programs\treyapps\Sort\Sort your files.lnk"
goto install