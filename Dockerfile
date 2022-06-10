FROM jenkins/jenkins:lts-jdk11
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false"
COPY ./plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
COPY ./my_marvin.yml /var/jenkins_home/config/my_marvin.yml
COPY ./job_dsl.groovy /var/jenkins_home/config/job_dsl.groovy 
ENV CASC_JENKINS_CONFIG "/var/jenkins_home/config/my_marvin.yml"
EXPOSE 8080
EXPOSE 50000
