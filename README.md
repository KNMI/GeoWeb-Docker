# GeoWeb-Docker

Docker for adaguc server, adaguc viewer, GeoWeb-Backend and GeoWeb-FrontEnd

Do docker-compose up in working directory

```
mkdir -p $HOME/data/adaguc-autowms
mkdir -p $HOME/data/adaguc-datasets
docker-compose up 
```
 
* Directories $HOME/data/adaguc-datasets and $HOME/data/adaguc-autowms will be created if they do not exist.
* Copy your NetCDF/GeoJSON/HDF5 to $HOME/data/adaguc-autowms
* Files are are accessible via http://localhost:3380/adaguc-services/wms.cgi?source=testdata.nc&&service=WMS&request=GetCapabilities
* They can be visited in the adaguc-viewer via: http://localhost:3381/adaguc-viewer/ by adding service http://localhost:3380/adaguc-services/wms.cgi?source=testdata.nc via Add data.
* Direct link is: http://localhost:3381/adaguc-viewer/?service=http%3A%2F%2Flocalhost%3A3380%2Fadaguc-services%2Fwms.cgi%3Fsource%3Dtestdata.nc
* Testdata can be found here: http://opendap.knmi.nl/knmi/thredds/catalog/ADAGUC/catalog.html
