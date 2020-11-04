FROM node:10

EXPOSE 80 8080

# Create app directory
WORKDIR /app
ADD . /app/

RUN npm install

CMD [ "npm", "run", "dev"]