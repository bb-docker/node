FROM bananabb/ubuntu:20.10
MAINTAINER BananaBb

# File setting
COPY ./create-express.sh /create-express.sh
COPY ./nodesource_setup.sh /nodesource_setup.sh

# Start the Services
RUN chmod +x \
    /create-express.sh \
    /nodesource_setup.sh

# Setup NodeSource
RUN /nodesource_setup.sh

# Install NPM & Node.js
RUN apt-get update -y \
 && apt-get install -y \
    nodejs \
    build-essential

# Install library for Node.js
RUN npm install -g \
    npm \
    pm2 \
    sass \
    express-generator \
    create-react-library

# Remove Node Source Script
RUN rm /nodesource_setup.sh

RUN mkdir -p /var/www
WORKDIR /var/www
EXPOSE 3000
CMD ["/bin/bash"]