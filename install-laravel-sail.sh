#!/bin/bash

DIR=example-app
if [ -d "$DIR" ];
then
    echo "$DIR directory exists."
else
	echo "$DIR directory does not exist."
    curl -s https://laravel.build/example-app | bash
fi

cd example-app && ./vendor/bin/sail up -d