# Base image
FROM node:alpine

# if this dir does not exist in the container, it will be created
WORKDIR /usr/app

# Install dependencies
COPY ./package.json ./
RUN npm install

# Copy files from this path ./ to the fs(path ./) of the temporary container created at this step.
# note: this path is relative to (working/build directory) specified in previous instruction
COPY ./ ./

# Default command to run container startup
CMD ["npm", "start"]
