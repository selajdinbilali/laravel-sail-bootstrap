#!/bin/bash

cd example-app

./vendor/bin/sail npm install

./vendor/bin/sail npm install -D bootstrap

./vendor/bin/sail npm install -D @popperjs/core

./vendor/bin/sail npm install -D sass

cd ..

cp vite.config.js ./example-app/vite.config.js

mkdir ./example-app/resources/sass
cp app.scss ./example-app/resources/sass/app.scss
cp app.js ./example-app/resources/js/app.js
cp welcome.blade.php ./example-app/resources/views/welcome.blade.php

cd ./example-app
vendor/bin/sail npm run dev