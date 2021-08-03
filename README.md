This is a simple Hello World project that utilizes Terraform, Ansible, Jenkins, Docker.

Terraform is used to launch two EC2 instances, one to be used as a Jenkins server and one to be used as a web server.

Ansible is used to install Jenkins on one instance, and to install Docker on the other instance.

Docker image was built locally and pushed to Docker Hub repository.

Jenkins was used to deploy the image on the web server.