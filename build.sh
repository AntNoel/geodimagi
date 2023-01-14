#Exit on error
set -o errexit

install gdal-bin libgdal-dev
install python3-gdal
install binutils libproj-dev

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate