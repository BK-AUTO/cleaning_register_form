# Use an official nginx image as a parent image
FROM nginx:alpine

# Copy the HTML file into the default nginx public directory
COPY public/test.html /usr/share/nginx/html/index.html

# Expose port 80 (nginx default) - we will map this to 2005 on the host
EXPOSE 80

# Command to run nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]