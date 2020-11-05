# nuxt-app-cv - Developement
A NuxtJS Website application - CV Félicien Fouillet


## To deploy on Docker
1. Clone this repositorie:
    ```bash
    git clone https://github.com/felicienfouillet/nuxt-app-cv.git
    ```

2. Stop docker containers:
    ```bash
    docker container stop nuxt_cv
    ```

2. Remove previous docker containers, images and volumes from docker:
    ```bash
    docker container rm nuxt_cv
    ```
    ```bash
    docker image rm ffouillet/nuxt-app-cv
    ```
    ```bash
    docker volume rm nuxt-app-cv
    ```

2. Build the docker image from Dockerfile:
    ```bash
    docker image build -t ffouillet/nuxt-app-cv .
    ```

3. Deploy the docker image on a container:
    ```bash
    docker container run --name nuxt_cv -d -it -p 80:8080 -v nuxt-app-cv:/app ffouillet/nuxt-app-cv
    ```