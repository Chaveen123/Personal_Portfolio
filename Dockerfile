FROM httpd:2.4-alpine

RUN apk update && \
    apk add --no-cache wget unzip

RUN rm -rf /usr/local/apache2/htdocs/*

RUN wget https://github.com/Chaveen123/Personal_Portfolio/archive/refs/heads/main.zip && \
    unzip main.zip && \
    mv Personal_Portfolio-main/* /usr/local/apache2/htdocs/ && \
    rm -rf main.zip Personal_Portfolio-main

EXPOSE 8080

CMD ["httpd-foreground"]