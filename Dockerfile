# Use an official Node runtime as the parent image
FROM node:latest

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json /app
COPY package-lock.json /app

# Install the dependencies in the container
RUN npm install

# Copy the current directory contents (i.e., your React Native app) into the container at /app
COPY . /app

# Make port 19000 available to the world outside this container,
# which is the default port used by Expo
EXPOSE 19000

# Run the app when the container launches
CMD ["npm", "start"]

