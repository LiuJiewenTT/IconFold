@if "%1" == "/?" (
	@echo This program is used to operate all .ico files and the desktop.ini file in the directory to cancel the apply result of the feature in place.
	@echo Pass directory's path as the first parameter.

	@echo Author: LiuJiewenTT [on Github.com]	
	@echo License: MIT.

	@echo Have fun!
	@goto:eof
)

@if not exist "%1" (
	@echo Directory not found.
	@goto:eof
)

attrib -R "%1"
attrib -S -H -R "%1\desktop.ini"
attrib -S -H -R "%1\*.ico"
@REM @for /f "tokens=*" %%i in ('dir /b /a-d "%1"') do (
@REM 	@echo Processing %%i...
@REM 	@call :apply_inplace "%%i"
@REM )

@echo All files processed.
@goto:eof

:apply_inplace
	attrib -S -H -R "%1"
goto:eof


