FROM nginx:1.19.9-alpine

RUN apk add --no-cache --update \
      apache2-utils nginx-mod-http-geoip nginx-mod-http-js

COPY nginx.d/ /etc/nginx/