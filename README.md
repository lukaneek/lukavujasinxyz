1. create github repository with the name <nameOfProject> without a readme.

2. in the code directory, type 'npm create vite@latest <nameOfProject> -- --template react' to create a vite project.

3. open vs code and terminal and 'type add .', 'commit -m "first commit"', 'git push'.

4. The following steps: follow this document https://thedkpatel.medium.com/dockerizing-react-application-built-with-vite-a-simple-guide-4c41eb09defa
    npm run dev: is the command to run the app in its code state.  
    npm run build: is the command to build the react app in a .js file and move to the /dist folder.  
    npm run preview: is the command to run the js file in the /disc folder.

5. To prepare for docker, a docker image needs to be created.  Type the following command 'docker build -t <nameOfProject> .'.  

6. to run the docker image in docker desktop, run the following command: 'docker run -p 5000:3000 <nameOfProject>'

7. to run the docker image using the docker compose.yml, run the following command: 'docker-compose up'.  Using the yml file, there's no need to run step 6.  

8. 



