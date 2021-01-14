we will see how to run the 'hello from python' in flask then we will deploy it in kubernates with the help of docker and google cloud.

Let's deploy our small hello-python flask application in kubernates
Now if we want to apply the deployment file then we should go into that directory in local
```
cd /home/piyush/Desktop/Empowerinnovate/kubernates/hello-python
```

First you need to authenticate your google cloud
```
gcloud auth login
```

Let's initialize the google cloud
```
gcloud init
```

We have to create first project in google cloud
gcloud projects create [PROJECT_ID] --name=[PROJECT_NAME]
```
gcloud projects create k8s-621999 --name=kubernates
```


Now let's create the cluster of kubernates
gcloud container clusters create [CLUSTER_NAME] --num-nodes=2
```
gcloud container clusters create translator3 --num-nodes=2
```

After creating cluster we should give the permission(credentials) for that container cluster"
```
gcloud container clusters get-credentials translator3 --zone us-east1-b --project k8s-621999
```


Deploy the yaml file
```
kubectl apply -f deployment.yaml --record=true
```


get the services
```
kubectl get services
```


Get the pods
```
kubectl get pods
```




Thankyou...
