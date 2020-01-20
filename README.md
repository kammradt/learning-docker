<h1 align="center">Welcome to my notes about Docker 👋</h1>
<p>
  <a href="https://twitter.com/kammzinho" target="_blank">
    <img alt="Twitter: kammzinho" src="https://img.shields.io/twitter/follow/kammzinho.svg?style=social" />
  </a>
</p>

> I hope this can help people that are learning Docker as I am 😊

## Author

👤 **Vinícius Kammradt**

* Twitter: [@kammzinho](https://twitter.com/kammzinho)
* Github: [@kammradt](https://github.com/kammradt)
* LinkedIn: [@vinicius-kammradt](https://linkedin.com/in/vinicius-kammradt)


## Notes 📝

### **Basic commands 👨‍💻**

| Command 	                              | Result                                    	|
|-     	                                  |-                                          	|
| *Images*                                                                              |
|  `docker images -a`  	                  | List all docker images                     	|
|  `docker images -f "condition"`         | Filter listed images based on condition     |
|  `docker pull {name}`          	        | Get the image of `name`                 	  |
|  `docker rmi {id}`                      | Delete a image by `id`                    	|
| *Containers*    	                                                         	          |
|  `docker ps`                  	        | List all running containers                 |
|  `docker run {name}`          	        | Run a image by `name` (pull if necessary)   |
|  `docker run -it {name}`       	        | Run the image and have a terminal to use    |
|  `docker stop {name}`       	          | Stop a container by `name`                  |
|  `docker kill {name}`       	          | Kill a container by `name`                  |
|  `docker attach {name}`       	        | Open a shell related to the container       |
|  `docker stats`                	        | Verify memory usage                         |
|  `docker system df`            	        | Verify disk usage                           |
|  `docker system prune`         	        | Remove unused data                          |
|  `docker system prune -a`     	        | Remove unused data and images               |
|                                                                                       |

| Command 	                              | Result                                    	|
|-     	                                  |-                                          	|
|*Useful commands together* |
|                                                                                       |
|  Run an image with terminal available and a custom name to it      	                  |
|  `docker run --name nameWanted -it imagename bash`     	                              |
|                                                                                       |
|  Creating an container with name and also using a simple directly storage for it      |
|  `docker run --name myJenkins1 -p 8080:8080 -p 50000:50000 -v /home/kammradt:/var/jenkins_home jenkins` |

### **Definitions 👨‍🎓**
An `image` is a file that works as a template for creating a `Container`.  
A `Container` is an instance of an `image`.  

### **Using a Dockerfile**

| Command 	                              | Result                                    	|
|-     	                                  |-                                          	|
| `docker build -t mynewimage DockerfilePath:1.0`|Creates an image from Dockerfile      |

1. Create a file literally named `Dockerfile`
2. Add necessary instructions such as:
```dockerfile
# A base image to start
FROM ubuntu  

# An identification
LABEL Kammradt <vinicius.kammradt1@gmail.com>

# During the process of building the image
RUN apt-get update

# Will be executed when creating a container
CMD [ "echo", "Hi ;)" ]
```
  
### Useful [link](https://github.com/wsargent/docker-cheat-sheet#dockerfile) with a cheat sheet


### **Docker compose**
**What is?**  
Is a tool to create and manipulate multiple containers in a better and easy way  
**How?**
1. Create a file named docker-compose.yml
2. Add necessary instructions such as:
```yml
version: '3'
services:
    web:
        image: nginx
        ports:
        - 9090:80
    database:
        image: redis
```
3. Check validity of created file: `docker-compose config`
4. Run the .yml file (detached): `docker-compose up -d`  
4.1. You can simply scale it to multiple instances by using: `docker-compose up -d --scale database=4 `
5. Stop running containers: `docker-compose down`
## Show your support

Give a ⭐️ if this project helped you!

***
