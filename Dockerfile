# Use an official Node.js image with recent GLIBC
FROM node:20-bullseye

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the application code
COPY .env .env
COPY server.js server.js
COPY database database

# Expose the port your app runs on (change if needed)
EXPOSE 3000

# Command to run your app
CMD ["node", "server.js"]
