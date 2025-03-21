
@echo off

git clone https://github.com/keshavsoft/CrudBackEndWithMailAndWA
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForClients
git clone -c core.longpaths=true https://github.com/keshavsoft/CrudFrontEndGulp

cd CrudBackEndWithMailAndWA
call npm i
echo PORT=7328> .env
echo DataPk=328>> .env
node KCode/ForBatV10/Backend.js
node KCode/ForBatV10/Database.js
call npm run home

cd ..\CrudFrontEndGulp
call npm i

cd ..\FrontEndForClients
call npm i

cd ..\CrudBackEndWithMailAndWA
call npm run home
call .\BatchFiles\Students328\V1\ForUI.bat

call npm run start
