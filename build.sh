#Exit on error
set -o errexit

install binutils libproj-dev gdal-bin

# pip install gdal-bin libgdal-dev
# pip aptitude install python3-gdalinstall python3-gdal
# pip aptitude install binutils libproj-dev

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate