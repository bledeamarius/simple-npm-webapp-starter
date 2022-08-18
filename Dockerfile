FROM node:16

# Create app directory
WORKDIR /usr/src/app

COPY . .

# ARG PORT_TO_EXPOSE=8081

# EXPOSE ${PORT_TO_EXPOSE}

CMD [ "npm", "start" ]