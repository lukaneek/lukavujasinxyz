# Use the latest LTS version of Node.js
FROM node
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json
COPY package*.json ./
 
# Install dependencies
RUN npm install

# Then we install serve. It helps you serve a static site, single page application or just a static file.
RUN npm i -g serve
 
# Copy the rest of your application files
COPY . .

# Finally, we ran npm run build to create a production build of our application. This places the application .js file in the dist directory to be served up by the serve library.  
RUN npm run build
 
# Define the command to run your app
CMD [ "serve", "-s", "dist" ]
