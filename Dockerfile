# Instruction of how to build the docker image.
# Use the latest LTS version of Node.js
FROM node as builder
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json
COPY package*.json ./
 
# Install dependencies in the package.json
RUN npm install

# Copy the rest of your application files
COPY . .

# Run npm run build to create a production build of our application. This places the application .js file in the dist directory to be served up by the serve library.  
RUN npm run build

#Stage two serve the html and javascript file with nginx.  
FROM nginx

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "deamon off;"]

# Then we install serve. It helps you serve a static site, single page application or just a static file.
#RUN npm install -g serve

# This is just meta data. Serve's default port is 3000.
#EXPOSE 3000
 
# Define the command to run your app. -s flag ensures the app is served as a single page application (SPA).
#CMD [ "npx", "serve", "-s", "dist" ]
