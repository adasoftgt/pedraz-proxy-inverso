# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for HTTP traffic
EXPOSE 80

# Expose port 443 for HTTPS traffic
EXPOSE 443

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]