FROM nginx:alpine

# Borra cualquier configuración previa
RUN rm /etc/nginx/conf.d/*

# Copia tu configuración personalizada
COPY default.conf /etc/nginx/conf.d/default.conf

# Copia tus archivos del frontend
COPY . /usr/share/nginx/html

EXPOSE 80
