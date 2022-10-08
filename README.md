# GUIDE

* Nexus3: http://home-server.silk-cat.software:9701/
* Private NPM Registry: http://home-server.silk-cat.software:9701/repository/npm-hosted/


### 1. Login npm as Common User

username = commonuser \
password = 123123123 \
Use the above credentials and run the bellow command
```
npm adduser --registry http://home-server.silk-cat.software:9701/repository/npm-hosted/
```

### 2. Pull vy's private lib
Create a new directory
```
mkdir nexus3
cd nexus3
npm init
npm --registry http://home-server.silk-cat.software:9701/repository/npm-hosted/ install yourname
```

Then create new file named `main.js` (or arbitary name you want), with this content:
```
let {yourname} = require('yourname');

// execute function
yourname();
```

And run: `node main.js`

### 3. Push private repo (config the private registry in package.json)
npm publish


### Jenkins

1. Write Jenkins file in source code
2. Setup jenkins
3. Config jenkins to build and publish package to nexus3
    New item --> pipeline --> 