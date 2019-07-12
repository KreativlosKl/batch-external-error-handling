:init
@echo off
title crashreport from %1
Prompt $_
REM extern error handling
REM creator hr13

:handler
if "%1" == "" (
set errorcode= #100 
goto :selfcrash
)
if "%2" == "" (goto :selfcrash)
if "%3" == "" (goto :selfcrash)
echo Oh no! The programm %1 crashed! Errorcode is %2.Find any more information on %3!


Pause
exit
:selfcrash
title selfcrash          
echo you got it you have crashed the error handling programm! 
echo The errorcode is %errorcode%.(1xx:dev error 2xx:your mistake)


Pause