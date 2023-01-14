#Exit on error
set -o errexit

sudo aptitude install gdal-bin libgdal-dev
sudo aptitude install python3-gdalinstall python3-gdal
sudo aptitude install binutils libproj-dev

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate