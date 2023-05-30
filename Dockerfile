FROM node:18.16.0

# Create app directory
WORKDIR /usr/src/app

# Copy package.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy app source code
COPY . .

# Expose port 8080 and redirect to 80
EXPOSE 8080

# Run app
CMD [ "npm", "start" ]
