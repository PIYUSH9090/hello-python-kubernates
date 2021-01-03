we will see how to run the 'hello from python' in flask then we will deploy it in kubernates with the dhelp of docker.

PREREQUISITES

    A Kubernetes service - I'm using Docker CLI and minikube-kubectl. but you can use one of the others. See Getting Started for a full listing.
    Python 3.7 installed
    Git installed



First clone my repo : https://github.com/PIYUSH9090/hello-python-kubernates

Then you will get set all the folder and path.

```
cd hello-python/app
```
First run it locally
```
pip install -r requirements.txt
python main.py
```

Create an image

At your command line or shell, in the hello-python/app directory, build the image with the following command:
```
docker build -f Dockerfile -t hello-python:latest .
```

This will make the image file so if want to check that out you use this command:
```
docker image ls
```
You will get image created before a moment.

Running in Docker 

Now if we want to run this in docker 
```
docker run -p 5001:5000 hello-python
```

Now navigate to http://localhost:5001, and you should see the “Hello form Python!” message.

After then we have to push this docker image to docker hub with this command, we can push docker with 2 command 

```
docker image tag hello-python piyush9090/hello-python:latest
```
it means :- docker image tag <docker image name> <dockerhub username/docker image name:latest>
    
Secound command is 
```
docker push piyush9090/hello-python:latest
```
Now you will get this image intop your docker hub account. You can pull from there also whenever you want.


Running in Kubernetes

```
kubectl version
```
If you don’t see a reply with a Client and Server version, you’ll need to install and configure it.


Now you are working with Kubernetes! You can see the node by typing:
```
kubectl get nodes
```
Now go to the kubernates directory with this command 

```
cd ../
```
```
cd kubernates
```
Then you have added already yaml file so run this command

```
kubectl apply -f deployment.yaml
```
You can see the pods are running if you execute the following command:

```
kubectl get pods
```
Now our deployments are complete, you will get pod name so now if you want to run this in kubernates then you have to give this command:

```
minikube service hello-python service
```

This is the pod name => hello-python service

So you will deen directly running this app in kubernates localhost at browser.




Thankyou...
