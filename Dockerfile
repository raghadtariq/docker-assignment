# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Copy the static website content to the web root directory
COPY index.html /usr/share/nginx/html/
