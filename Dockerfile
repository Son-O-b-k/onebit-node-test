FROM node:20-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application
COPY . .

# Set PORT environment variable to 3000
ENV PORT=3000

# Expose port from the container
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
