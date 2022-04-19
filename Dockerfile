FROM sonarsource/sonar-scanner-cli
RUN apk add --update docker openrc
RUN rc-update add docker boot
