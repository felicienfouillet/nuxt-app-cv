# nuxt-app-cv - Developement
A NuxtJS Website application - CV Félicien Fouillet


## To deploy on Docker
1. Setup a Dockerfile:
    ```bash
    FROM node:alpine

    EXPOSE 80 8080

    WORKDIR '/'

    CMD [ "git", "clone", "https://github.com/felicienfouillet/nuxt-app-cv.git"]

    COPY ./nuxt-app-cv/package*.json ./

    RUN npm install

    COPY ./nuxt-app-cv/ ./

    CMD [ "npm", "run", "build"]
    CMD [ "npm", "run", "start"]
    ```

2. Build the docker image from Dockerfile:
    ```bash
    docker image build -t <nom>/<nom de l’image> .
    ```

3. Deploy the docker image on a container:
    ```bash
    docker container run –d -it -p 80:8080 <nom>/<nom de l’image>
    ```