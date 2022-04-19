FROM jenkins/ssh-slave
# Install selected extensions and other stuff
RUN apt-get update \
   && apt-get -y install go \
   && apt-get -y --no-install-recommends install \
   && apt-get clean
