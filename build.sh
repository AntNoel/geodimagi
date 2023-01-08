#Exit on error
set -o errexit

virtualenv install
python -m venv myvenv
source myvenv/bin/activate
install requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate