#Exit on error
set -o errexit

virtualenv install

python manage.py collectstatic --no-input
python manage.py migrate