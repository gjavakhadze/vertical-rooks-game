FROM nginx:alpine

# Copy all project files to nginx document root
COPY index.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/
COPY assets/ /usr/share/nginx/html/assets/

# Expose port 80
EXPOSE 80

# nginx starts automatically with the base image CMD
