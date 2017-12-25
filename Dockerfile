# get node image
FROM node:latest
RUN mkdir -p /UserManager

#set working directory as UserManager
WORKDIR /UserManager
COPY package.json /UserManager/

RUN npm install
COPY . /UserManager
EXPOSE 3000
CMD [ "npm", "start" ]