# node3 (db)
cd ~/DKN/Practices/Section2/Stage1/db
sudo docker build ./ -t db
sudo docker run -d -p 5432:5432 --name db -e POSTGRES_PASSWORD='Test1234@' db

