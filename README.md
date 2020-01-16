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
|*Useful commands together* |
|                                                                                       |
|  Run an image with terminal available and a  custom name to it      	                |
|  `docker run --name nameWanted -it imagename bash`     	                              |
|                                                                                       |


### **Definitions 👨‍🎓**
An `image` is a file that works as a template for creating a `Container`.  
A `Container` is an instance of an `image`.  


## Show your support

Give a ⭐️ if this project helped you!

***
