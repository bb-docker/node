# node
This repository contains Dockerfile of node in ubuntu

## Getting Started
These instructions will get you to build node in your docker. See Installation for notes on how to build your node on your are live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download the sources from public [Docker Hub](https://hub.docker.com/r/bananabb/node/) or run Usage tag provided.
3. Run Create Project tag in `/var/www` to build your project

### Usage
```
docker run -itd --name node -v {your directory}:/var/www -p 3000:3000 bananabb/node
docker exec -it node /bin/bash
node -v
npm --version
```

### Create Express Project
```
/create-express.sh
npm start
```

### Create React Project
```
/create-react.sh
cd $YourProject
npm start
```

### Create React Library
```
npx create-react-library your-app-name
cd your-app-name
npm start
cd example
npm start
```

Open `http://localhost:3000/` in your browser of choice
Now you can enjoy your coding in your container.

## License
MIT © [BananaBb](https://github.com/BananaBb)