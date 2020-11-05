# nuxt-app-cv - Developement
A NuxtJS Website application - CV Félicien Fouillet


## To deploy on Docker
1. Just copy and execute this script:
    ```bash
    # A deployement script for Nuxtjs app on Docker

    APP_DIR=/homes/www/nuxt-app-cv

    image_id=$(docker inspect ffouillet/nuxt-app-cv --format "{{.Id}}")

    echo "Stop current container..."
    docker container stop nuxt_cv
    echo "Current container successfully stopped"                                                                           
    echo "Removing current container..."
    docker container rm nuxt_cv
    echo "Current container successfully removed"

    echo "Current image: $image_id"
    echo "Removing current image..."
    docker image rm $image_id
    echo "Current image successfully removed"

    echo "Change current directory -> $APP_DIR"
    cd nuxt-app-cv

    git pull

    echo "Build new Docker image..."
    docker image build -t ffouillet/nuxt-app-cv .

    echo "Run new container..."
    docker container run --name nuxt_cv -d -it -p 80:8080 ffouillet/nuxt-app-cv
    echo "New container successfully created"

    HOST=$(docker container inspect nuxt_cv -f '{{.NetworkSettings.IPAddress}}')
    PORTS=$(docker container inspect nuxt_cv -f '{{.NetworkSettings.Ports}}')

    echo "Container running at Host: https://$HOST, Ports: $PORTS"
    ```