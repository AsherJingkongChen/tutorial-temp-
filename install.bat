echo [INSTALLER] Was Node v16.11.0 installed successfully before executing install.bat?
echo [INSTALLER] Current Node version:
call node --version
echo [INSTALLER] Trying to get node_modules...
cd /d "%~dp0"
call npm i mineflayer
call npm i minecraft-data
call npm i readline
call npm i silly-datetime
call npm i mineflayer-pathfinder
call npm i math
echo [INSTALLER] launch the bot with launcher.bat
pause