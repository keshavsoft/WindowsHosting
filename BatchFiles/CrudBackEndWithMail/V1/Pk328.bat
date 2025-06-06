


@echo off

git clone https://github.com/keshavsoft/CrudBackEndWithMail
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForClients
git clone -c core.longpaths=true https://github.com/keshavsoft/CrudFrontEndGulp

cd CrudBackEndWithMail
call npm i
echo PORT=7328> .env
echo DataPk=328>> .env

cd ..\CrudFrontEndGulp
call npm i

cd ..\FrontEndForClients
call npm i

cd ..\CrudBackEndWithMail
call .\BatchFiles\Students328\V1\forBackEndAndData.bat

call .\BatchFiles\Students328\V1\forWebsite.bat

call .\BatchFiles\Students328\V1\ForUI.bat

call .\BatchFiles\Students328\V1\WAUi.bat
call .\BatchFiles\Students328\V1\WithChat.bat

call npm run start
