cd "C:/Users/%USERNAME%/Downloads"
echo :init >ext_err_handler.bat
echo @echo off >>ext_err_handler.bat
echo title crashreport from %%1 >>ext_err_handler.bat
echo Prompt $_ >>ext_err_handler.bat
echo REM extern error handling >>ext_err_handler.bat
echo REM creator hr13 >>ext_err_handler.bat 
echo :handler >>ext_err_handler.bat
echo if "%%1" == "" ( >>ext_err_handler.bat
echo set errorcode= #100 >>ext_err_handler.bat
echo goto :selfcrash >>ext_err_handler.bat
echo )>>ext_err_handler.bat
echo if "%%2" == "" (goto :selfcrash) >>ext_err_handler.bat
echo if "%%3" == "" (goto :selfcrash)>>ext_err_handler.bat
echo echo Oh no! The programm %%1 crashed! Errorcode is %%2.Find any more information on %%3! >>ext_err_handler.bat


echo Pause >>ext_err_handler.bat
echo exit >>ext_err_handler.bat
echo :selfcrash >>ext_err_handler.bat
echo title selfcrash >>ext_err_handler.bat         
echo echo you got it you have crashed the error handling programm! >>ext_err_handler.bat 
echo echo The errorcode is %errorcode%.(echoxx:dev error 2xx:your mistake) >>ext_err_handler.bat


echo Pause >>ext_err_handler.bat
pause