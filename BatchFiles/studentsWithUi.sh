git clone https://github.com/keshavsoft/CrudGenV1
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd
git clone -c core.longpaths=true https://github.com/keshavsoft/FrontEndForClients

cd crudFrontEnd
npm i

cd ../FrontEndForClients
npm i

cd ../CrudGenV1
call npm i

echo PORT=7020> .env
echo DataPk=327>> .env

node KCode/ForBat/Backend.js
node KCode/ForBat/Database.js
npm run home

