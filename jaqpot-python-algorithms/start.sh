docker stop python-algorithms
docker rm python-algorithms
docker build -t python-algorithms .
docker run -it -d -p 8089:5000 --name python-algorithms  python-algorithms
