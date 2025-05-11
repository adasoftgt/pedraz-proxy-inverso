FROM nginx:alpine

# Elimina la configuración default
RUN rm /etc/nginx/conf.d/default.conf

# Copia nuestra configuración personalizada
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponer el puerto 80
EXPOSE 80


# Iniciar Nginx en modo foreground
CMD ["nginx", "-g", "daemon off;"]
