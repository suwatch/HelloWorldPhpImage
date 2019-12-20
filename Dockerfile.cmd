FROM php:7.4-cli
COPY src/ /usr/src/scripts/
WORKDIR /usr/src/scripts
CMD [ "php", "./index.php" ]