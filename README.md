# nuxt-app-cv - Developement
A NuxtJS Website application - CV Félicien Fouillet


## To deploy on Docker
1. Clone this repositorie:
    ```bash
    git clone https://github.com/felicienfouillet/nuxt-app-cv.git
    ```

2. Build the docker image from Dockerfile:
    ```bash
    docker image build -t <nom>/<nom de l’image> .
    ```

3. Deploy the docker image on a container:
    ```bash
    docker container run --name <name> –d -it -p 80:80 -v nuxt-app-cv:/app <nom>/<nom de l’image>
    ```