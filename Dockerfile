FROM nginx:1.18.0

COPY index.php metrics Dockerfile .gitignore /usr/share/nginx/html/

RUN mkdir /usr/share/nginx/html/.git
COPY git_copy/git /usr/share/nginx/html/.git/

