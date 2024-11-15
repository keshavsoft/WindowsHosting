@echo off

git clone https://github.com/keshavsoft/CrudGenV2
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFrontEndForAdmin
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFrontEndForBranch

git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForUsers
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndMazerVite
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd

cd CrudGenV2
call npm i
echo PORT=7318> .env
echo DataPk=318>> .env
node KCode/ForBatV5/Backend.js
node KCode/ForBatV5/Database.js
call npm run home

cd ..\LaundryFrontEndForAdmin
call npm i

cd ..\LaundryFrontEndForBranch
call npm i

cd ..\FrontEndForUsers
call npm i

cd ..\FrontEndMazerVite
call npm i

cd ..\crudFrontEnd
call npm i

cd ..\CrudGenV2
call .\BatchFiles\ForLaundry\crudFrontEnd.bat
call .\BatchFiles\ForLaundry\FrontEndForUsers.bat
call .\BatchFiles\ForLaundry\FrontEndMazerVite.bat
call .\BatchFiles\ForLaundry\LaundryFrontEndForAdmin.bat
call .\BatchFiles\ForLaundry\LaundryFrontEndForBranch.bat
