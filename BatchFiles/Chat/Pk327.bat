
@echo off

git clone https://github.com/keshavsoft/CrudGenV3
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForClients

cd CrudGenV3
call npm i
echo PORT=7327> .env
echo DataPk=327>> .env
node KCode/ForBatV7/Backend.js
node KCode/ForBatV7/Database.js
call npm run home

cd ..\crudFrontEnd
call npm i

cd ..\FrontEndForClients
call npm i

cd ..\CrudGenV3
call .\BatchFiles\ForStudents\ForUI.bat


npm run Students
