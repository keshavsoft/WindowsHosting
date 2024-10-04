@echo off

git clone https://github.com/keshavsoft/CrudGenV1
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd

cd crudFrontEnd
call npm i
call npm run TableShow
call npm run ProtectedTableShow
call npm run CreateStatic

cd ..\CrudGenV1
call npm i

echo PORT=7019> .env
echo DataPk=327>> .env

call node KCode/ForBat/Backend.js
call node KCode/ForBat/Database.js
call npm run home

cd ..\crudFrontEnd

xcopy .\publicDir\TableShow ..\CrudGenV1\public\TableShow /h /i /c /k /e /r /y
xcopy .\publicDir\Protected\Create\Static ..\CrudGenV1\public\Protected\Create\Static /h /i /c /k /e /r /y
xcopy .\publicDir\Protected\Table\Show ..\CrudGenV1\public\Protected\Table\Show /h /i /c /k /e /r /y
