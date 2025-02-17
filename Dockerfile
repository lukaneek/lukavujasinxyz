# Stage-1 Build process
FROM node as builder

# Create a working directory for the build project
RUN mkdir /usr/src/app

# Navigate to the created directory
WORKDIR /usr/src/app

# Create an enviroment variable for the node_modules
ENV PATH /usr/src/app/node_modules/.bin:$PATH
 
# Copy package.json and package-lock.json
COPY package*.json ./
 
# Install dependencies in the package.json
RUN npm install

# Copy the rest of your application files
COPY . /usr/src/app

# Run npm run build to create a production build of our application. This places the application .js file in the dist directory to be served up by the serve library.  
RUN npm run build

# Stage-2 Production Environment
#Stage two serve the html and javascript file with nginx.  
FROM nginx

# Copy the tagged files from the build to the production environmnet of the nginx server
COPY --from=builder /usr/src/app/build /usr/share/nginx/html

# Copy nginx configuration 
COPY --from=builder /usr/src/app/default.conf /etc/nginx/conf.d/ 


EXPOSE 80

CMD ["nginx", "-g", "deamon off;"]

# Then we install serve. It helps you serve a static site, single page application or just a static file.
#RUN npm install -g serve

# This is just meta data. Serve's default port is 3000.
#EXPOSE 3000
 
# Define the command to run your app. -s flag ensures the app is served as a single page application (SPA).
#CMD [ "npx", "serve", "-s", "dist" ]
