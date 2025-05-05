# Use nginx image to serve HTML
FROM nginx:alpine

# Copy your HTML files to the nginx html directory
COPY . /usr/share/nginx/html
