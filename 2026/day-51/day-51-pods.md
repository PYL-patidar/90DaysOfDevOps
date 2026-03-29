In Kubernetes manifest file(yml), there are 4 important required fields that Kubernetes uses to understand what is you want to create.  

1) apiVersion:  
It tells Kubernetes which api version we are using to create resource.  
Example values:  
v1 → Pod, Service  
apps/v1 → Deployment, ReplicaSet   
  
2) kind:  
It tells Kubernetes what type of object we want to create.  
Example:  
kind: Pod, Deployment, Service  

3) metadata:  
It store the information about the object, like its name and labels.  
Example:  
`metadata:
  name: obj-name
  labels:
    app: label-name`

4) spec:  
Defines the actual configuration about the resource.  
Example:  
`spec:
    containers:
       - name: nginx-cont
         image: nginx:latest
         ports:
         -  containerPort: 80`


Final YML for Pod  
`apiVersion: v1
 kind: Pod
 metadata:
   name: nginx-pod
 spec:
   containers:`
   `- name: nginx
     image: nginx`
