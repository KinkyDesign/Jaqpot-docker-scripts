cd packages/Jaqpot
git pull
mvn install -P JaqpotQuattroProduction -D skipTests=true
cd ../../ 
docker build -t jaqpot-java-core .
docker stop jaqpot
docker rm jaqpot
docker run -it -d -p 8080:8080 -p 9990:9990 -h app.jaqpot --volumes-from javamelody --restart=unless-stopped --name jaqpot jaqpot-java-core
