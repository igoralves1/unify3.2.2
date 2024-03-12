# Welcome to Unify – Multipurpose Responsive Template! #

Unify Template by Htmlstream

### Documentation and Getting Started ###

The overall development documentation is available at `documentation/getting-started.html` and Gulp documentation at `documentation/gulp.html`.

Below is quick steps to run Gulp:

- npm install --global gulp-cli
- npm install
- gulp

Yup, that's it.

### Theme Support ###

Have a question? No worries! Unify comes with 6 months of free support. We take seriously every issue that is reported to us, and we aim to resolve each one as quickly as possible. Feel free to “Contact Us” at https://htmlstream.com/contact-us

### Need Unify Template customization? ###

We offer affordable, professional and trendy customized design solutions, solely for your own projects! Unify Template can be easily customized with its cutting-edge components and features. However, if you feel you need any further customization please drop us a message at https://htmlstream.com/hire-us and our dedicated team will assist you with your inquiries.

# Unify in VsCODE - Dev Containers
1 - Create a folder in the root named `.devcontainer`.
2 - Inside this folder create a file named `devcontainer.json`.
3 - Inside this file paste the following content:
```
{
    // The name of the project
	"name": "Node",
	// It is a NodeJs last version image to build the container 
    "image": "mcr.microsoft.com/devcontainers/javascript-node",
    // Or use a Dockerfile or Docker Compose file. More info: https://containers.dev/guide/dockerfile
    "id": "javascript-node",
    "version": "3.1.0",
    "name": "Node.js & JavaScript",
    "description": "Develop Node.js based applications. Includes Node.js, eslint, nvm, and yarn.",
    "documentationURL": "https://github.com/devcontainers/templates/tree/main/src/javascript-node",
    "publisher": "Dev Container Spec Maintainers",
    "licenseURL": "https://github.com/devcontainers/templates/blob/main/LICENSE"
}
```
4 - Install Docker in your local machine
5 - Install [Visual Studio Code Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension in your VSCODE. It will install some other dependencies as well.
6 - Have your github repository ready, commited with the folder and file from step 1 and 2.
7 - In your VSCODE do `shift+alt+p` to open the `commands drop down`
8 - Choose `>Dev Containers: Clone Repository in Container Volume...` this will create a container and clone your github repository into it.
9 - Do a shift+ctrl+` to open the terminal
10 - In the terminal run `whoami` you should have `node` as the answer saying you are in the node container.
11 - Run `ls`. You should see your `Unify3.2.2` files and folders cloned from your GitHub repository.
12 - In the terminal follow the [Quick Setup Instructions](https://htmlstream.com/unify/documentation/gulp.html#quick-setup) 
13 - In the Root run `npm install --global gulp-cli`
14 - Navigate to the `root /unify` directory and run `npm install` or to install our local dependencies listed in package.json.
15 - Run `gulp`.



### References
- [Available Dev Container Templates](https://containers.dev/templates)
- [GitHub devcontainers/templates/javascript-node](https://github.com/devcontainers/templates/tree/main/src/javascript-node)
- [Dev Container metadata reference](https://containers.dev/implementors/json_reference/)
- [How to forward a UDP port from a devcontainer?](https://stackoverflow.com/questions/69002661/how-to-forward-a-udp-port-from-a-devcontainer)
- 