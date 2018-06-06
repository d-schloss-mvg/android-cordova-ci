##############   Docker image for building android/cordova apps   ##############
################################################################################
## META
## Version: 1.2
## Date: 2018-06-06

# Build on helloagain/android-gradle-ci with matching versions.
FROM helloagain/android-gradle-ci:v1.1
LABEL maintainer="d-schloss-mvg"
LABEL version="1.2"

RUN apt-get update && \
    # Install nodejs
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get update && \
    apt-get install -y --no-install-recommends nodejs ruby && \
    # Cleanup
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g cordova@8.0.0 && \
    gem install bundler
