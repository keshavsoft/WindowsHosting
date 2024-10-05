@echo off

git clone https://github.com/keshavsoft/CrudGenV1
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFrontEnd
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForUsers
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndMazerVite
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd

cd CrudGenV1
call npm i
echo PORT=7019> .env
echo DataPk=318>> .env
node KCode/ForBat/Backend.js
node KCode/ForBat/Database.js
call npm run home

cd ..\LaundryFrontEnd
call npm i
call npm run WashtexBranch
call npm run BranchToday
call npm run TodayReports
call npm run Masters
call npm run ToFactory
call npm run NewOrders
call npm run CustomersToOrders
call npm run Main
call npm run BranchAll
call npm run AllReports
call npm run Today-QrCodes
call npm run Today-Orders
call npm run AdminToday-QrCodes
call npm run AdminToday-Orders
xcopy .\publicDir ..\CrudGenV1\public\Laundry /h /i /c /k /e /r /y

cd ..\FrontEndForUsers
call npm i
call npm run Users
xcopy .\publicDir\LoginUsers ..\CrudGenV1\public\LoginUsers /h /i /c /k /e /r /y

cd ..\FrontEndMazerVite
call npm i
call npm run FromBranchVoucher
call npm run FromBranchQrCodes
call npm run FromEntryVoucher
call npm run FromEntryQrCodes
xcopy .\publicDir ..\CrudGenV1\public\Factory /h /i /c /k /e /r /y

cd ..\crudFrontEnd
call npm i
call npm run Dashboard
xcopy .\publicDir ..\CrudGenV1\public\crudFrontEnd /h /i /c /k /e /r /y
