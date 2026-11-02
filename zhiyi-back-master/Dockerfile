#!/bin/bash
FROM --platform=linux/amd64 nginx

COPY ./dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
