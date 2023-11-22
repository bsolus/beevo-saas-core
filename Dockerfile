FROM node:20

WORKDIR /usr/src/app

COPY ./package.json ./

RUN npm install

COPY . .

COPY ./docker-entrypoint.sh /root/docker-entrypoint.sh

RUN chmod +x /root/docker-entrypoint.sh

ENTRYPOINT ["/root/docker-entrypoint.sh"]
