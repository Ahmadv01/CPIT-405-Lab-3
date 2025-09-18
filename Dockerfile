FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY index.html style.css logo.png ./

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
