Q1) What namespaces are and why you would use them?
ANS: Namespace in Kubernetes is a logical partition inside a cluster that helps organize, isolate and manage resources like pods, services and
deployments.

Q2) Your Deployment manifest and an explanation of each section.
  - apiVersion: Defines the Kubernetes API version used to create the resource.
  - kind: Specifies the type of resources, here is it Deployment.
  - metadata: Contains basic information like name, label of Deployment.
  - spec: Defines the desired state of the Deployment.
  - replicas: Specifies how many Pods copied should run.
  - selector: Tell the Deployment which pod it should manages using labels.
  - template: Defines the Pod template that will be created. it is a blueprint for pod creation.
  - container: Defines the Pod template that will be created.
  - containerPort: Defines the port on which the container runs.

Q3) What happens when you delete a Pod managed by a Deployment vs a standalone Pod?
ANS: If a Standalone Pod is deleted, it is removed permanently because no controller id managing it. Kubernetes will not recreate it automaatically.
If a pod is managed by a Deployment, the Deployment ensures the desired number of replicas are running. When a Pod is deleted or crashes, the Deployment automatically creates a new Pod to maintain the required state.

Q3) How scaling works (both imperative and declarative)?
Imperative Scaling: Scale using a command directly.
Example:  
`kubectl scale deployment nginx-deployment --replicas=5`

Declarative Scaling: Define the number of replicas inside the YAML manifest.
Example:  
`spec:
  replicas: 5`
`kubectl apply -f deployment.yaml`

Q4) How rolling updates and rollbacks work?
Rolling Update  
A Rolling Update updates the application gradually.  
  - Kubernetes creates new Pods with the updated version.
  - At the same time, it removes old Pods step-by-step.
  - This ensures the application remains available with no downtime.
Example command:  
`kubectl set image deployment/nginx-deployment nginx=nginx:1.21`

Rollback  
A Rollback is used when the new update has a problem.  
  - Kubernetes reverts the Deployment to the previous working version.
  - Old Pods are recreated with the previous configuration.
Example command:  
`kubectl rollout undo deployment/nginx-deployment`
