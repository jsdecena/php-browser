FROM cimg/php:8.0-browsers

LABEL Maintainer="Jeff Simons Decena <jeff.decena@yahoo.com>" \
      Description="Browser test base image"

USER root

RUN  apt-get update && \
     apt-get install -y software-properties-common sqlite3 libsqlite3-dev libpng-dev libzip-dev php-zip php-gd php-sqlite3 pdftk && \
     composer self-update

# "Install Google Chrome"
RUN  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
     apt install ./google-chrome-stable_current_amd64.deb

# "Install wkhtmltopdf"
RUN  wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb && \
     apt install ./wkhtmltox_0.12.6-1.focal_amd64.deb