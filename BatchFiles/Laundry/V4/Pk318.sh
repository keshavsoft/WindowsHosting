git clone https://github.com/keshavsoft/CrudGenV3
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFrontEndForAdmin
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFrontEndForBranch
git clone -c core.longpaths=true https://github.com/keshavsoft/LaundryFrontEndForFactory

git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForUsers
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndMazerVite
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd

cd CrudGenV3
npm i
echo PORT=7318> .env
echo DataPk=318>> .env
node KCode/ForBatV7/Backend.js
node KCode/ForBatV7/Database.js
npm run home

cd ../LaundryFrontEndForAdmin
npm i

cd ../LaundryFrontEndForBranch
npm i

cd../LaundryFrontEndForFactory
npm i

cd ../FrontEndForUsers
npm i

cd ../FrontEndMazerVite
npm i

cd ../crudFrontEnd
npm i

cd ../CrudGenV3
chmod +x ./BatchFiles/ForLaundry/LaundryFrontEndForAdmin.sh
./BatchFiles/ForLaundry/LaundryFrontEndForAdmin.sh

chmod +x ./BatchFiles/ForLaundry/LaundryFrontEndForBranch.sh
./BatchFiles/ForLaundry/LaundryFrontEndForBranch.sh

chmod +x ./BatchFiles/ForLaundry/LaundryFrontEndForFactory.sh
./BatchFiles/ForLaundry/LaundryFrontEndForFactory.sh
