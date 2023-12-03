docker build -t angular-app-image .
docker run --name test-angular --net tulip-net -d -p 80:80  angular-app-image
