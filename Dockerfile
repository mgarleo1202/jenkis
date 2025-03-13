# Usamos la imagen base de Apache
FROM httpd:latest

# Copiamos el archivo index.html desde nuestro directorio local al contenedor
COPY index.html /usr/local/apache2/htdocs/

# Exponemos el puerto 8888
EXPOSE 8888

# Configuramos Apache para escuchar en el puerto 8888
CMD ["httpd", "-D", "FOREGROUND", "-f", "/usr/local/apache2/conf/httpd.conf", "-c", "Listen 8888"]
