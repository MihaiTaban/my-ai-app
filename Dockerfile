FROM nginx:stable-alpine

# Copy our custom HTML file to the Nginx default web root
# This makes our index.html the default page served by Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80, which Nginx listens on by default
EXPOSE 80

# Command to run Nginx (default command for nginx:stable-alpine)
CMD ["nginx", "-g", "daemon off;"]
