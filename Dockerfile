FROM bananabb/ubuntu:20.10
MAINTAINER BananaBb

# Install NPM & Node.js
RUN apt-get update -y \
 && apt-get install -y \
    nodejs \
    npm \
    build-essential

# Install library for Node.js
RUN npm install -g \
    pm2 \
    sass \
    express-generator \
    create-react-library

# File setting
COPY ./create-express.sh /create-express.sh

# Start the Services
RUN chmod +x /create-express.sh

RUN mkdir -p /var/www
WORKDIR /var/www
EXPOSE 3000
CMD ["/bin/bash"]