FROM node:10

EXPOSE 80 80

# Create app directory
WORKDIR /app
ADD . /app/

RUN npm install

CMD [ "npm", "run", "dev"]