docker kill mymongo 2>/dev/null
docker rm mymongo 2>/dev/null

docker run --name mymongo -d mongo
docker exec -it mongo mongo
