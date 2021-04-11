# Start with a base image containing Nginx runtime
FROM nginx:1.19.9-alpine

# Maintainer info
LABEL maintainer="Mohammed Amine BOUTOUIL <boutouilmohammedamine@gmail.com>"

RUN apk add --no-cache --update \
      apache2-utils inotify-tools nginx-mod-http-geoip nginx-mod-http-js

COPY nginx.d/ /etc/nginx/
COPY scripts/ /usr/local/bin/

RUN chmod +x /usr/local/bin/entrypoint.sh \
    && chmod +x /usr/local/bin/reload.sh

ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;"]