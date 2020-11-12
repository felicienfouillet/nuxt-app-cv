# nuxt-app-cv - Developement
A NuxtJS Website application - CV Félicien Fouillet


## To deploy on Docker
1. Just copy and execute this script:
    ```bash
    # A deployement script for Nuxtjs app on Docker

    APP_DIR=/homes/www/nuxt-app-cv

    CONTAINER=nuxt_cv
    RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER 2> /dev/null)

    if [ $? -eq 1 ]; then
        echo "'$CONTAINER' does not exist."
    else
        echo "\e[91mStop current container...\e[0m"
        docker container stop nuxt_cv
        echo "\e[92mCurrent container successfully stopped\e[0m"
        echo ""
        echo "\e[91mRemoving current container...\e[0m"
        docker container rm -f nuxt_cv
        echo "\e[92mCurrent container successfully removed\e[0m"
        echo ""
    fi

    EXIST=$(docker images -q ffouillet/nuxt-app-cv 2> /dev/null)

    if [ $? -eq 1 ]; then
        echo "'ffouillet.nuxt-app-cv' does not exist."
    else
        IMAGE_ID=$(docker inspect ffouillet/nuxt-app-cv --format "{{.Id}}")
        echo "Current image: $IMAGE_ID"
        echo ""
        echo "\e[91mRemoving current image...\e[0m"
        docker image rm -f $IMAGE_ID
        echo "\e[92mCurrent image successfully removed\e[0m"
        echo ""
    fi

    echo "\e[92mChange current directory -> $APP_DIR\e[0m"
    cd /homes/www/nuxt-app-cv

    git pull

    echo "\e[92mBuild new Docker image...\e[0m"
    docker image build -t ffouillet/nuxt-app-cv .

    echo "\e[92mRun new container...\e[0m"
    docker container run --name nuxt_cv -d -it -p 80:8080 ffouillet/nuxt-app-cv
    echo "\e[92mNew container successfully created\e[0m"


    IMAGE_ID=$(docker inspect ffouillet/nuxt-app-cv --format "{{.Id}}")

    HOST=$(docker container inspect nuxt_cv -f '{{.NetworkSettings.IPAddress}}')
    PORTS=$(docker container inspect nuxt_cv -f '{{.NetworkSettings.Ports}}')

    IN=$PORTS

    space_split=$(echo $IN | tr " " "\n")
    slash_split=$(echo $space_split | tr "/" "\n")
    ports=$(echo $slash_split | tr "[" "\n")

    n=0

    for port in $ports
    do
    if [ $n -eq "4" ]; then
        current_port=$port
    fi

    n=$((n+1))
    done
    echo ""
    echo ""
    echo ""
    echo "\e[36m                               _   _            _                               _____                    "
    echo "\e[36m                              | \ | |          | |        /\                   / ____|                   "
    echo "\e[36m                              |  \| |_   ___  _| |_      /  \   _ __  _ __    | |  __   __               "
    echo "\e[36m                              | .   | | | \ \/ / __|    / /\ \ | '_ \| '_ \   | |  \ \ / /               "
    echo "\e[36m                              | |\  | |_| |>  <| |_    / ____ \| |_) | |_) |  | |___\ V /                "
    echo "\e[36m                              |_| \_|\__,_/_/\_|\__|  /_/    \_\ .__/| .__/    \_____\_/                 "
    echo "\e[36m                                                               | |   | |                                 "
    echo "\e[36m                                                               |_|   |_|                                 "
    echo "\e[0m"
    echo ""
    echo "               \e[100m                                                                                        \e[0m"
    echo "               \e[100m                                      \e[95m\e[47m Nuxt App CV \e[39m\e[100m                                     \e[0m"
    echo "               \e[100m                                                                                        \e[0m"
    echo "               \e[100m    \e[30mStatus: \e[92mOk\e[39m                                                                          \e[0m"
    echo "               \e[100m                                                                                        \e[0m"
    echo "               \e[100m    \e[30mContainer: \e[97mnuxt_cv\e[39m                                                                  \e[0m"
    echo "               \e[100m    \e[30mImage: \e[97m$IMAGE_ID\e[39m      \e[0m"
    echo "               \e[100m                                                                                        \e[0m"
    echo "               \e[100m    \e[30mHost: \e[97m$HOST\e[39m                                                                    \e[0m"
    echo "               \e[100m    \e[30mPort: \e[97m$current_port\e[39m                                                                          \e[0m"
    echo "               \e[100m                                                                                        \e[0m"
    echo "               \e[100m                                                                                        \e[0m"
    echo ""
    echo ""
    echo ""
    ```