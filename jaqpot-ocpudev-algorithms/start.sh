docker stop jaqpot-ocpu
docker rm jaqpot-ocpu
docker build -t jaqpot-ocpudev-algorithms .
docker run -it -d -p 8004:8004 --name jaqpot-ocpu jaqpot-ocpudev-algorithms
