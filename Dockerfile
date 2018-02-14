##############   Docker image for building android/cordova apps   ##############
################################################################################
## META
## Version: 1.1
## Date: 2018-02-14

# Build on helloagain/android-gradle-ci with matching versions.
FROM helloagain/android-gradle-ci:v1.1
MAINTAINER d-schloss-mvg

RUN apt-get update && \
    # Install nodejs
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get update && \
    apt-get install -y --no-install-recommends nodejs && \
    # Cleanup
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g cordova@8.0.0
