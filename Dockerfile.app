# Dockerfile.app
FROM nginx:alpine

# Copia sua build estática
COPY build/ /usr/share/nginx/html

# Repasse opcional do IP real
RUN sed -i 's|proxy_set_header X-Real-IP.*|proxy_set_header X-Real-IP $remote_addr;|' /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
