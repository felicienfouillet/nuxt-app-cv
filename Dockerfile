FROM node:10

ENV HOST 0.0.0.0
EXPOSE 8080 8080

# Create app directory
WORKDIR /app
ADD . /app/

RUN npm install

CMD [ "npm", "run", "dev"]