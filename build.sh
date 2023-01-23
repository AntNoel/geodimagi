#!/usr/bin/env bash
#Exit on error
set -o errexit

sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update
sudo apt-get update
sudo apt-get install gdal-bin
sudo apt-get install libgdal-dev
export CPLUS_INCLUDE_PATH=/usr/include/gdal
export C_INCLUDE_PATH=/usr/include/gdal
pip install GDAL

# pip install gdal-bin libgdal-dev
# pip aptitude install python3-gdalinstall python3-gdal
# pip aptitude install binutils libproj-dev

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate