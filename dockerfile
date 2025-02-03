FROM ubuntu
RUN apt-get update -y && apt-get install -y apache2 unzip
WORKDIR /var/www/html/
RUN rm -rf /index.html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip .
RUN unzip oxer.zip
RUN cp -rvf oxer-html/*
RUN rm -rf oxer.zip
RUN rm -rf oxer-html
CMD ["apache2", "-D", "FOREGROUND"]
EXPOSE 80