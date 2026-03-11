FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY agus-2.jpg /usr/share/nginx/html/agus-2.jpg
COPY nginx.conf /etc/nginx/conf.d/default.conf
