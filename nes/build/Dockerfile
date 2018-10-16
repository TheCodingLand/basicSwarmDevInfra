FROM node:8
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# RUN git clone https://github.com/koenkivits/nesnes .
ADD . .
WORKDIR /usr/src/app/jsnes-web
RUN npm i
#RUN make
#WORKDIR /data
#CMD node /usr/src/app/bin/nesnes-server.js '0.0.0.0' '8080'
CMD npm run start

