git clone https://github.com/keshavsoft/CrudGenV1
git clone -c core.longpaths=true https://github.com/keshavsoft/crudFrontEnd

cd crudFrontEnd
npm i

cd ../CrudGenV1
npm i

echo PORT=7020> .env
echo DataPk=327>> .env

node KCode/ForBat/Backend.js
node KCode/ForBat/Database.js
npm run home
