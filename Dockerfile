# Use official Node.js image as base image
FROM node:24-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the entire project files into the container
COPY . .

# Expose the port that Medusa app will run on
EXPOSE 9000

# Run the Medusa backend
CMD ["npm", "run", "start"]
