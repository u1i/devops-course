docker kill myredis 2>/dev/null
docker rm myredis 2>/dev/null
docker run --name myredis -d redis
docker exec -it myredis redis-cli

