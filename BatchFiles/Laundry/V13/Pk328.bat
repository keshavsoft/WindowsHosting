@echo off

git clone https://github.com/keshavsoft/LaundryBackEndV1
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFrontEndForAdmin
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFrontEndForBranch
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFrontEndForFactory

git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForUsers
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndMazerVite
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd
git clone -c core.longpaths=true https://github.com/keshavsoft/VoltUI
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndCustomers

git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryUI
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryUIAdminMasters

cd LaundryBackEndV1
call npm i
echo PORT=7318> .env
echo DataPk=318>> .env
node KCode/ForBatV7/Backend.js
node KCode/ForBatV7/Database.js
call npm run Laundry

cd ..\LaundryFrontEndForAdmin
call npm i

cd ..\LaundryFrontEndForBranch
call npm i

cd..\LaundryFrontEndForFactory
call npm i

cd ..\FrontEndForUsers
call npm i

cd ..\FrontEndMazerVite
call npm i

cd ..\crudFrontEnd
call npm i

cd ..\VoltUI
call npm i

cd ..\FrontEndCustomers
call npm i

cd ..\LaundryUI
call npm i

cd ..\LaundryUIAdminMasters
call npm i

cd ..\LaundryBackEndV1
call .\BatchFiles\ForLaundry\crudFrontEnd.bat
call .\BatchFiles\ForLaundry\FrontEndForUsers.bat
call .\BatchFiles\ForLaundry\FrontEndMazerVite.bat

call .\BatchFiles\ForLaundry\LaundryFrontEndForBranch.bat
call .\BatchFiles\ForLaundry\LaundryFrontEndForFactory.bat

call .\BatchFiles\ForLaundry\forVoltUi.bat

call .\BatchFiles\ForLaundry\V1\ForAdmin.bat
call .\BatchFiles\ForLaundry\V1\AdminMasters.bat
call .\BatchFiles\ForLaundry\V1\FrontEndCustomers.bat

call .\BatchFiles\ForLaundry\LaundryUI.bat
