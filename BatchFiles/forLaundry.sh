git clone https://github.com/keshavsoft/CrudGenV1
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFrontEnd
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForUsers
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndMazerVite
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd

cd CrudGenV1
npm i
echo PORT=7019> .env
echo DataPk=336>> .env
node KCode/ForBat/Backend.js
node KCode/ForBat/Database.js
npm run home

cd ../LaundryFrontEnd
npm i
npm run WashtexBranch
npm run BranchToday
npm run TodayReports
npm run Masters
npm run ToFactory
npm run NewOrders
npm run CustomersToOrders
npm run Main
npm run BranchAll
npm run AllReports
npm run Today-QrCodes
npm run Today-Orders
npm run AdminToday-QrCodes
npm run AdminToday-Orders
cp -arf ./publicDir ../CrudGenV1/public/Laundry

cd ../FrontEndForUsers
npm i
npm run Users
cp -arf ./publicDir/LoginUsers ../CrudGenV1/public/LoginUsers

cd ../FrontEndMazerVite
npm i
npm run FromBranchVoucher
npm run FromBranchQrCodes
npm run FromEntryVoucher
npm run FromEntryQrCodes
cp -arf ./publicDir ../CrudGenV1/public/Factory

cd ../crudFrontEnd
npm i
npm run Dashboard
cp -arf ./publicDir ../CrudGenV1/public/crudFrontEnd
