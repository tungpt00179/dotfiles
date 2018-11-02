yum install epel-release
yum install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
yum update
yum install -y rh-postgresql10-postgresql-devel gcc make wget libxml2-devel geos-devel gdal-devel

cd
mkdir proj4
cd proj4
wget http://download.osgeo.org/proj/proj-4.9.1.tar.gz
tar -xvzf proj-4.9.1.tar.gz
cd proj-4.9.1
./configure
make
make check
make install


cd
wget https://download.osgeo.org/postgis/source/postgis-2.4.5.tar.gz
tar -xvzf postgis-2.4.5.tar.gz
cd postgis-2.4.5
./configure
make
make install
