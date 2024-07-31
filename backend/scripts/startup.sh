#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT jay_kumar_sablaniya_48913.wsgi:application
