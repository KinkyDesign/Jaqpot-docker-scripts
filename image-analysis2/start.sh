docker stop image-analysis2
docker rm image-analysis2
cd packages/imageAnalysis
git pull
mvn install  -D skipTests=true
cd ../../ 
docker build -t image-analysis2 .
docker run -it -d -p 8880:8880 --restart=unless-stopped --name image-analysis2 image-analysis2
