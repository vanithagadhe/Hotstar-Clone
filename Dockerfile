# Use Node.js Alpine base image
FROM node:alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for caching npm install)
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of your codebase
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start your app
CMD ["npm", "start"]
