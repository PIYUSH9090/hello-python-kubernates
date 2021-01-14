echo "Let's deploy our small hello-python flask application in kubernates"
echo "Now if we want to apply the deployment file then we should go into that directory in local"

cd /home/piyush/Desktop/Empowerinnovate/kubernates/hello-python

echo "First you need to authenticate your google cloud"

gcloud auth login

echo "Let's initialize the google cloud"

gcloud init

echo "We have to create first project in google cloud"
echo "gcloud projects create [PROJECT_ID] --name=[PROJECT_NAME]"
gcloud projects create k8s-621999 --name=kubernates

echo "Now let's create the cluster of kubernates"
echo "gcloud container clusters create [CLUSTER_NAME] --num-nodes=2"
gcloud container clusters create translator3 --num-nodes=2

echo "After creating cluster we should give the permission(credentials) for that container cluster"

gcloud container clusters get-credentials translator3 --zone us-east1-b --project k8s-621999

echo "Deploy the yaml file"

kubectl apply -f deployment.yaml --record=true

echo "get the services"

kubectl get services

echo "Get the pods"

kubectl get pods