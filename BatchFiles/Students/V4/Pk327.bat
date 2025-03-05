
@echo off

git clone https://github.com/keshavsoft/CrudGenV5
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForClients

cd CrudGenV5
call npm i
echo PORT=7327> .env
echo DataPk=327>> .env
node KCode/ForBatV8/Backend.js
node KCode/ForBatV8/Database.js
call npm run home

cd ..\crudFrontEnd
call npm i

cd ..\FrontEndForClients
call npm i

cd ..\CrudGenV5
call .\BatchFiles\ForStudents\ForUI.bat


npm run Students
