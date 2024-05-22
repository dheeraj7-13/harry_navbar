# Use the official lightweight Node.js 14 image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the local code to the container
COPY . .

# Build the app
RUN npm run build

# Expose port 3000 to the outside world
EXPOSE 9000

# Command to run the app
CMD ["npm", "start"]
