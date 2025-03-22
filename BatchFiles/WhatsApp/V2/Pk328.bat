
@echo off

git clone https://github.com/keshavsoft/CrudBackEndWithMailAndWA
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForClients
git clone -c core.longpaths=true https://github.com/keshavsoft/CrudFrontEndGulp

cd CrudBackEndWithMailAndWA
call npm i
echo PORT=7328> .env
echo DataPk=328>> .env

mkdir Data
echo '{"posts":[]}'> Data/inwards.json

node KCode/ForBatV10/Backend.js
node KCode/ForBatV10/Database.js
call npm run home
call npm run WA

xcopy .\publicDir\WA .\public\WA /h /i /c /k /e /r /y

cd ..\CrudFrontEndGulp
call npm i

cd ..\FrontEndForClients
call npm i

cd ..\CrudBackEndWithMailAndWA
call npm run home
call .\BatchFiles\Students328\V1\ForUI.bat

call npm run start
