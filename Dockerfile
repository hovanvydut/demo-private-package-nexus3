FROM node:slim

WORKDIR /home/build

RUN echo "//home-server.silk-cat.software:9701/repository/npm-hosted/:_authToken=NpmToken.ef6398bf-10b1-3d36-91c3-fe0d956406502" > ~/.npmrc
CMD ["npm", "publish"]