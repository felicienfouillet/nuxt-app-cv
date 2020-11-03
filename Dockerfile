FROM node:10

EXPOSE 8080 8080

# Create app directory
WORKDIR /app
ADD . /app/

RUN npm install

CMD [ "npm", "run", "dev"]