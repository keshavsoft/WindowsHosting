@echo off

git clone https://github.com/keshavsoft/LaundryBEBranchV1
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFEBranchV1

git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForUsers

cd LaundryBEBranchV1
call npm i
echo PORT=7318> .env
echo DataPk=318>> .env
node KCode/ForBatV11/Backend.js
call npm run Laundry

cd ..\LaundryFEBranchV1
call npm i

cd ..\FrontEndForUsers
call npm i

cd ..\LaundryBEBranchV1
call .\BatchFiles\ForLaundry\V1\ForLogin.bat
call .\BatchFiles\ForLaundry\V1\ForBranchV1.bat
