FROM nginx:alpine

# Always upgrade to patch any known vulnerabilities
RUN apk update && apk upgrade --no-cache

RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/
EXPOSE 80
