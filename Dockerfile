FROM node:8-slim

LABEL IT_TEAM <it@itopplus.com>

RUN echo "Asia/Bangkok" > /etc/timezone
RUN echo "Asia/Bangkok" > /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata

ENV INSTALL_PATH /project 
ENV NODE_ENV production
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH 

ADD . $INSTALL_PATH

COPY package.json .

RUN yarn install
RUN yarn add nodemon -g
RUN yarn add mocha -g

COPY . $INSTALL_PATH
RUN ls -lR *

EXPOSE 3425

CMD ["./startscript.sh"]


