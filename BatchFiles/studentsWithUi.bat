@echo off

git clone https://github.com/keshavsoft/CrudGenV1
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForClients

cd crudFrontEnd
call npm i

echo StartUrl="binV4"> .env
echo TableName="StudentNames">> .env


cd ..\FrontEndForClients
call npm i


cd ..\CrudGenV1
call npm i

echo PORT=7020> .env
echo DataPk=327>> .env

call node KCode/ForBat/Backend.js
call node KCode/ForBat/Database.js
call npm run home
call .\BatchFiles\ForStudents\ForUI.bat

npm run start
