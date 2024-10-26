
@echo off

git clone https://github.com/keshavsoft/CrudGenV2
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd

cd CrudGenV2
call npm i
echo PORT=7327> .env
echo DataPk=327>> .env
node KCode/ForBatV5/Backend.js
node KCode/ForBatV5/Database.js
call npm run home

cd ..\crudFrontEnd
call npm i

cd ..\CrudGenV2
call .\BatchFiles\ForStudents\ForUI.bat

npm run Students
