try {

    docker stop playgroundclient
    docker rm playgroundclient

    docker stop playgroundapi
    docker rm playgroundapi
    
    docker build -f "C:\developer\repos\PlayGround\Src\PlayGroundClient\Dockerfile" --force-rm -t playgroundclient  --label "com.microsoft.created-by=visual-studio" --label "com.microsoft.visual-studio.project-name=PlayGroundClient" "C:\developer\repos\PlayGround\Src\PlayGroundClient"
    docker build -f "C:\developer\repos\PlayGround\Src\PlayGroundApi\Dockerfile" --force-rm -t playgroundapi  --label "com.microsoft.created-by=visual-studio" --label "com.microsoft.visual-studio.project-name=PlayGroundApi" "C:\developer\repos\PlayGround\Src"

    docker run -d -p 8001:80 --name client playgroundclient;
    docker run -d -p 8002:80 --name healthapi playgroundapi;
}
catch {
    Set-Location C:\developer\repos\PlayGround;
}
