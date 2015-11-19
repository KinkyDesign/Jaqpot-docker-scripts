FROM opencpu/base
MAINTAINER Charalampos Chomenidis <hampos@me.com>
RUN apt-get -y install libxml2-dev libcurl4-openssl-dev

ADD ./scripts/install_devtools.R /scripts/install_devtools.R 
RUN R CMD BATCH /scripts/install_devtools.R /dev/stdout

ADD ./scripts/install_GODependencies.R /scripts/install_GODependencies.R
RUN R CMD BATCH /scripts/install_GODependencies.R /dev/stdout 
ADD ./scripts/server.conf /etc/opencpu/server.conf
ADD ./packages /packages/
#RUN R CMD check /packages/GOdescrCalculus_1.0.tar.gz
RUN R CMD INSTALL /packages/GOdescrCalculus_1.0.tar.gz --library=/usr/local/lib/R/site-library
RUN R CMD INSTALL /packages/PLMplusPMMLpkg_1.0.tar.gz --library=/usr/local/lib/R/site-library

ADD ./scripts/install_GLMNETDependencies.R /scripts/install_GLMNETDependencies.R
RUN R CMD BATCH /scripts/install_GLMNETDependencies.R /dev/stdout
RUN R CMD INSTALL /packages/glmNETpkg_1.0.tar.gz --library=/usr/local/lib/R/site-library

ADD ./scripts/install_ClusteringDependencies.R /scripts/install_ClusteringDependencies.R
RUN R CMD BATCH /scripts/install_ClusteringDependencies.R /dev/stdout
RUN R CMD INSTALL /packages/clusteringPkg_1.0.tar.gz --library=/usr/local/lib/R/site-library

CMD service opencpu restart && tail -F /var/log/opencpu/apache_access.log
