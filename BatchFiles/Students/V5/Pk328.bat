
@echo off

git clone https://github.com/keshavsoft/CrudBackEndWithMail
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForClients
git clone -c core.longpaths=true https://github.com/keshavsoft/CrudFrontEndGulp

cd CrudBackEndWithMail
call npm i
echo PORT=7328> .env
echo DataPk=328>> .env
node KCode/ForBatV8/Backend.js
node KCode/ForBatV8/Database.js
call npm run home

cd ..\CrudFrontEndGulp
call npm i

cd ..\FrontEndForClients
call npm i

cd ..\CrudBackEndWithMail
call .\BatchFiles\Students328\V1\ForUI.bat


npm run Students
