FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Install app dependecies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where avaiable (npm@5+)
COPY package*.json ./

RUN npm install

# If you are building your code for production
# RUN npm install --only=production

# Bundle app source

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
