docker rm -f fanpagesapi
docker volume rm 
docker volume rm node_modules_fanpagesapi
docker rmi -f fanpagesapi
docker build -t fanpagesapi .
