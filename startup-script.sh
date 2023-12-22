#!/bin/bash
sudo apt-get update
sudo apt-get install -y docker.io
sudo docker pull nginx
sudo docker run --name nginx-server -p 3000:80 -d nginx
echo "<html>Eliott GERMAIN</html>" | sudo tee /usr/share/nginx/html/index.html
sudo docker exec nginx-server nginx -s reload
