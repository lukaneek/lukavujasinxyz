1. Create a github repository with the name {nameOfProject} without a readme.

2. In the c:\\code directory, git clone the newly created github repository. 

3. In the c:\\code directory, type 'npm create vite@latest {nameOfProject} -- --template react' to create a vite/react project. Vite essentially acts as a development web server, primarily used to serve you application files during development, enabling fast refresh and hot reloading.

4. Open the new project in VS Code and a new terminal window terminal to check in the initial react project, type 'add .', 'commit -m "first commit"', 'git push'.

5. Follow this document to help configure vite: https://thedkpatel.medium.com/dockerizing-react-application-built-with-vite-a-simple-guide-4c41eb09defa

6. npm run dev -> is the command to run the app in its code state.
7. npm run build -> is the command to build the react app in a .js file and move it to the /dist folder.
8. npm run preview -> is the command to run the .js file in the /dist folder.
9. serve -s dist -> is the command to use serve to serve up the .js file in the /dist folder. 

10. To prepare for docker, a docker image needs to be created.  Type the following command 'docker build -t {nameOfProject} .'.  

11. To run the docker image in docker desktop, run the following command: 'docker run -p 5000:3000 {nameOfProject}'

12. To run the docker image using the docker-compose.yml, run the following command: 'docker-compose up'.  Using the .yml file, there's no need to run the previous step.  

13. Follow the readme file starting at step 8 in the cicd-pipeline project to configure the projects EC2 instance, github CI and CD builds, etc.



