### Working code for CI/CD pipeline to deploy in package and container registry using docker

#### Check the uploaded code
  1. Artifacts can be downloaded directly from package registry
  2. To download from container registry follow the instructions below:
```
  docker login registry.gitlab.com -u praveen.hore@gmail.com
```
When asked for password enter personal access token e.g.: glpat-EGonM_wNMJSafxHLHzFm
```
  docker pull registry.gitlab.com/praveencomp11/test_ci_cd_pipeline:myfirstpythonapp
```
```
  docker run registry.gitlab.com/praveencomp11/test_ci_cd_pipeline:myfirstpythonapp
```
### Docker commands
```
1. To build the image 
    docker build -t image_name .
2. To build the image with version
    docker build -t image_name:v2 .
3. To run an image
    docker run image_name
4. Run an image with version and other options
    docker run --name   any_name_to_container  -p 5500:5500 basic-app:v2
5. Creat a .dockerignore file to ignore .git and .txt file to prevent adding it inside docker 
    .git
    .txt
6. To check all docker images
    docker images
7. To remove particular docker image
    docker image rm image_name
8. To remove forcefully
    docker image rm image_name -f (may create dangling)
9. To check all containers
    docker ps -a (shows all containers)
10. To remove particular container
    docker container rm container_name
11. To remove container forcefully
    docker container rm container_name -f
12. To delete all dockers from system (press yes to confirm)
    docker system prune -a 
13. Volume creation for automatic changes
    docker run -name any_name_to_container  -p 5500:5500 --rm -v /Users/anilsidhu/Desktop/basic-app:/app basic-app
```
References:
1. https://gitlab.com/nanuchi/gitlab-cicd-crash-course/-/blob/main/.gitlab-ci.yml?ref_type=heads
2. https://www.youtube.com/watch?v=ZJZGJTM23z0
3. https://www.youtube.com/watch?v=NHH--7VXIKk&t=2s
4. https://kobiton.com/blog/implementing-a-c-ci-cd-pipeline/
5. https://www.youtube.com/watch?v=4zSTXO7z_3w&list=PL8p2I9GklV47v6WZTjHAqdsHxpTIpjRwn&index=2 (Hindi version)
6. https://www.youtube.com/watch?v=KUECJHlV1LE
7. https://www.youtube.com/watch?v=SZvwDqSPuTU
