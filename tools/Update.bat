@echo off
SET NAME=Single Player Project - NexusForever Updater
TITLE %NAME%
set mainfolder=%CD%
set installpath=SPP-Sapphire

:install
if exist "%mainfolder%\%installpath%\2_AuthServer.bat" goto update_process
cls
echo Downloading the base files for the repack...
echo.
"%mainfolder%\git\cmd\git.exe" clone --depth=1 https://github.com/conan513/SPP-Sapphire.git %installpath%
goto update_process

:update_process
cls
echo.
echo Create local git config file...
echo.
cd "%mainfolder%\%installpath%"
..\git\cmd\git.exe config user.name "SPP User"
..\git\cmd\git.exe config user.email sppuser@spp.com
echo.
echo Downloading the latest update...
echo.
..\git\cmd\git.exe pull https://github.com/conan513/SPP-Sapphire.git
echo.
echo Downloading git submodules...
echo.
..\git\cmd\git.exe submodule update --init --recursive
..\git\cmd\git.exe submodule update --recursive --remote
echo.
pause