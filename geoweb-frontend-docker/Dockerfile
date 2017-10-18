FROM node:6.11.4
# The base node image sets a very verbose log level.
ENV NPM_CONFIG_LOGLEVEL warn
WORKDIR /frontend
ADD  https://github.com/KNMI/GeoWeb-FrontEnd/archive/master.tar.gz geoweb-frontend.tar.gz
RUN tar xvf geoweb-frontend.tar.gz
RUN mv GeoWeb-FrontEnd-master geoweb-frontend
WORKDIR /frontend/geoweb-frontend

RUN npm install --silent
RUN cp -- "node_modules/react-switch-button/lib/react-switch-button.js" "node_modules/react-switch-button/dist/react-switch-button.min.js"
RUN npm run clean 
RUN npm run deploy:prod
# Install `serve` to run the application.
RUN npm install -g serve
# Set the command to start the node server.
CMD echo "const config = {};config.BACKEND_SERVER_URL = '${GEOWEBBACKENDURL}';" > /frontend/geoweb-frontend/src/static/config.js && serve -s dist
EXPOSE 5000

#docker build -t geoweb-frontend .
#docker run -e GEOWEBBACKENDURL="http://127.0.0.1:8080/" -p 8081:5000 -it geoweb-frontend 

