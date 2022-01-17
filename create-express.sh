#!/bin/bash
## Use express-generator build the project
express --view=hbs -f /var/www && cd /var/www
npm install
echo "\`npm audit fix\` is running now"
npm audit fix --force

## Setup Folder Structure
mkdir \
  controllers \
  util \
  services \
  models \
  test