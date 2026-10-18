
FROM nginx:alpine
RUN apk upgrade --no-cache

WORKDIR /usr/share/nginx/html

COPY index.html .
COPY style.css .
COPY script.js .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
