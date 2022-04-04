# This Dockerfile is used for a youtube tutorial
# base image - nginx with tag "latest"
FROM nginx:latest

# Adding custom index.html hosted on Github Gist
ADD https://gist.github.com/sundar0428/4d17796a53436261c410ce2e2bf09d2f/index.html /usr/share/nginx/html/

# Adding read permissions to custom index.html
RUN chmod +r /usr/share/nginx/html/index.html

# 'nginx -g daemon off" will run as default command when any container is run that uses the image that was built using this Dockerfile"
CMD ["nginx", "-g", "daemon off;"]