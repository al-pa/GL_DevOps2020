# node1 (web1)
cd ~/DKN/Practices/Section2/Stage1/web
sudo docker build ./ -f Dockerfile-fix -t webapp
sudo docker run -d -p 8081:80 --name web1 --add-host="db:192.168.57.13" -e DBPASS='Test1234@' webapp
sudo docker run -d -p 8082:80 --name web2 --add-host="db:192.168.57.13" -e DBPASS='Test1234@' webapp

# proxy setup
cd ~/DKN/Practices/Section2/Stage2/proxy
sudo cp /vagrant/provision/nginx.conf .
sudo docker build ./ -t proxy
sudo docker run -d -p 80:80 --add-host="web1:192.168.57.11" --add-host="web2:192.168.57.12" --name proxy1 proxy
