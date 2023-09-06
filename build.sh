# !/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

python manage.py collectstatic --noinput
python manage.py migrate


# Renderにdeployしたが、再デプロイの為にコメントアウト
#python manage.py createsuperuser --username admin --email admin@test.com --noinput