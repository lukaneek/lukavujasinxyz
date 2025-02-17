# Instruction of how to build the docker image.
# Use the latest LTS version of Node.js
FROM node
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json
COPY package*.json ./
 
# Install dependencies in the package.json
RUN npm install

# Copy the rest of your application files
COPY . .

# Then we install serve. It helps you serve a static site, single page application or just a static file.
RUN npm i -g serve

# Finally, we ran npm run build to create a production build of our application. This places the application .js file in the dist directory to be served up by the serve library.  
RUN npm run build
 
# Define the command to run your app. -s flag ensures the app is served as a single page application (SPA). By default serve will make the app accessible at http://localhost:5000. To change the port use -p.
CMD [ "serve", "-s", "dist", "-p", "3000" ]
