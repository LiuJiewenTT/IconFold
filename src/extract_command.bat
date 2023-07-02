mkdir res_ico
@set para_0th=%0
@echo Pass the path of the folder that is going to be extracted from.
@echo You may want a clean res_ico directory. Do this yourself.
@if "%1" == "" @(
    echo No input. Exit.
    call:exit_p1
    goto:eof
)

for /f "delims=" %%i in ('dir "%1" /A:A /b') do @( echo %%i & xcopy /H /R /K "%1\%%i" res_ico\ ) 

:exit_p1
@if /I "%para_0th:~-4,-1%" == ".exe" @(
    pause
)
@goto:eof

