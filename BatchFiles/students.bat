@echo off

git clone https://github.com/keshavsoft/CrudGenV1
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd

cd crudFrontEnd
call npm i

cd ..\CrudGenV1
call npm i

echo PORT=7019> .env
echo DataPk=327>> .env

call node KCode/ForBat/Backend.js
call node KCode/ForBat/Database.js
call npm run home
