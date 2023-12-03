docker network create tulip-net || true
docker build -t angular-app-image .
docker rm -f test-angular || true
docker run --name test-angular --net tulip-net -d -p 80:80  angular-app-image
