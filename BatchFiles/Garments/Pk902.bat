@echo off

git clone https://github.com/keshavsoft/CrudGenV2
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForClients

cd CrudGenV2
call npm i
echo PORT=7902> .env
echo DataPk=902>> .env
node KCode/ForBatV5/Backend.js
node KCode/ForBatV5/Database.js
call npm run home

cd ..\FrontEndForClients
xcopy .\publicStatic\Garments ..\CrudGenV2\public\Garments /h /i /c /k /e /r /y
