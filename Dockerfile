FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies

COPY package*.json ./

RUN npm install

# Copy the rest of the app
COPY app/ dist/ node_modules/ ./

# ARG PORT_TO_EXPOSE=8081

# EXPOSE ${PORT_TO_EXPOSE}

CMD [ "npm", "start" ]