@echo off

git clone https://github.com/keshavsoft/FileCrud
git clone -c core.longpaths=true https://github.com/keshavsoft/CrudFrontEndInGulp

cd FileCrud
call npm i

cd ..\CrudFrontEndInGulp
call npm i

cd ..\FileCrud

call npm run start
