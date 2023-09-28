# Use the official Nginx image as the base image
FROM nginx:latest

# Copy your custom index.html file to the Nginx default HTML directory
COPY ./index.html /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
