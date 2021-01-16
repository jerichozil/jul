# README

Ruby version: 
ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]

Database:
sqlite3

Dependencies:
"will_paginate" > 3.3.0

Deployment instuctions:
1. >git remote add origin https://github.com/jerichozil/jul (master branch - default)
2. >git clone https://github.com/jerichozil/jul
3. >cd jul
4. >yarn install
5. >rails db:migrate
6. >rails db:seed
7. >rails s


* Sqlite3 is not supported on heroku, need to change the project to posgresql to do so.
* Pagination is included
* I didn't use test units for this project as there are no inputs and there is only server side rendering.
* Enclosed screen capture showing this actualy works.