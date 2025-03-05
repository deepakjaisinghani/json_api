# Use an official Node.js runtime as a parent image
FROM node:22.14.0-alpine

# Install curl (and any other dependencies you may need)
RUN apk update && apk add --no-cache curl

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app will run on
EXPOSE 31010

# Define the command to run your app
CMD ["node", "server.js"]

