FROM nginx:1.18.0

COPY id_rsa.pub id_rsa index.php metrics Dockerfile .gitignore /usr/share/nginx/html/

RUN mkdir /usr/share/nginx/html/.git
COPY git_copy/git /usr/share/nginx/html/.git/

ADD default.conf /etc/nginx/conf.d/

