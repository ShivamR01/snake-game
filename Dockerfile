# Dockerfile for Snake Game using Nginx
FROM nginx:latest

# Remove the default nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy all site files into nginx's default web root
COPY . /usr/share/nginx/html

# Expose port 80 (because Nginx listens on port 80)
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

