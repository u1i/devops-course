echo Cleanup...
docker kill myredis 2>/dev/null
docker rm myredis 2>/dev/null

echo Starting Redis
docker run --name myredis -d redis

echo Starting Redis Shell
docker exec -it myredis redis-cli
