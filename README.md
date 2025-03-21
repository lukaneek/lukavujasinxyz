1. Create a github repository with the name {nameOfProject} without a readme.

2. In the c:\\code directory, git clone the newly created github repository. 

3. In the c:\\code directory, type 'npm create vite@latest {nameOfProject} -- --template react' to create a vite/react project. Vite essentially acts as a development web server, primarily used to serve you application files during development, enabling fast refresh and hot reloading.

4. Open the new project in VS Code and a new terminal window terminal to check in the initial react project, type 'add .', 'commit -m "first commit"', 'git push'.

5. Follow this document to help configure vite: https://thedkpatel.medium.com/dockerizing-react-application-built-with-vite-a-simple-guide-4c41eb09defa

6. npm run dev -> is the command to use Vite to run the app in its code state during development.
7. npm run build -> is the command to use Vite to build the react app in a .js file and move it to the /dist folder during development.
8. npm run preview -> is the command to use Vite to run the .js file in the /dist folder during development.
9. npx serve -s dist -> is the command to use Serve to serve up the .js file in the /dist folder. Must install serve if you want to use this.  

10. To prepare for docker, a docker image needs to be created.  Type the following command 'docker build -t {nameOfProject} .'.  

11. To run the docker image in docker desktop, run the following command: 'docker run -p 5000:3000 {nameOfProject}'

12. To build and run the docker image using the docker-compose.yml, run the following command: 'docker-compose up'.  Using the .yml file, there's no need to run the previous 2 steps.  

13. Follow the readme file starting at step 8 in the cicd-pipeline project to configure the projects EC2 instance, github CI and CD builds, etc.

14. You do not need to manually install and configure nginx on the EC2 instance. nginx is installed and configured in the docker container by the docker image.



