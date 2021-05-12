FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page267/yooga.zip
RUN apt install unzip -y
RUN unzip yooga.zip
RUN rm -rf yooga.zip
RUN mv free-yoga-website-template/* /usr/local/apache2/htdocs
CMD httpd-foreground
