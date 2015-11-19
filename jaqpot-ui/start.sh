docker stop jaqpot-ui
docker rm jaqpot-ui
cd packages/UI
git pull
cd ../../ 
docker build -t jaqpot-ui .
docker run -it -d -p 8000:8000 --name jaqpot-ui jaqpot-ui
