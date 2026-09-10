FROM nginx:alpine
RUN apk add --no-cache apache2-utils \
    && htpasswd -cb /etc/nginx/.htpasswd preview 'xpY9+eBZYcN/DEw3'
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
