@echo off
SET NAME=SingleCore Database Server
TITLE %NAME%
set mainfolder=%CD%

:start_database
copy /Y "%mainfolder%\tools\Update.bat" ..
cls
if not exist "%mainfolder%\Database\bin\mysqld.exe" goto install_database
copy "%mainfolder%\tools\connection.cnf" "%mainfolder%\Database"
start import_updates.bat
cd "%mainfolder%\Database"
bin\mysqld.exe --defaults-file=my-large.ini --console --standalone
exit

:install_database
cls
echo Installing database server...
echo.
cd "%mainfolder%"
"%mainfolder%\Tools\7za.exe" e -y -spf "%mainfolder%\Tools\Database.7z"
goto start_database