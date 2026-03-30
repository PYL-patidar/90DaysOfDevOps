Q1) What problem Services solve and how they relate to Pods and Deployments?  
ANS: A Deployment runs multiple Pods, but each Pod have its own IP address which can changes if the Pod is recreated. A Service solved this
probelm by providing a stable IP addredd and DNS Name to access the Pod. It automatically routes requests to the available Pods.  

Q2) Service manifests with an explanation of each type ClusterIP, NodePort, LoadBalancer.  
- ClusterIP Service: ClusterIP is the default service type in Kubernetes. It exposes the application only inside the cluster and provide a stable IP and DNS Name for communication between Pods.  
- NodePort Service: A NodePort Service exposes your application on a port on every node in the cluster. This lets you access the Service from outside the cluster.  
- LoadBalancer Service: LoadBalancer exposes the Service to the internet using a cloud provider’s load balancer. It automatically distributes traffic to the backend Pods.  

Q3) Difference between ClusterIP, NodePort, and LoadBalancer:

| Service Type | Access Level | How it Works |
|--------------|--------------|--------------|
| ClusterIP | Inside the cluster only | Exposes the Service using an internal IP. Other Pods inside the cluster can access it, but it is not accessible from outside the cluster. |
| NodePort | Inside and outside the cluster | Exposes the Service on a specific port of each node. External users can access the application using NodeIP:NodePort. |
| LoadBalancer | Public internet access | Creates an external load balancer (usually in cloud environments) and provides a public IP to access the application. Traffic is automatically distributed to the Pods. |

In short:   
ClusterIP → Internal communication inside the cluster  
NodePort → External access using Node IP and port  
  
Q4) How Kubernetes DNS works for service discovery?  
ANS: Kubernetes DNS allows Pods to discover and communicate with Service useing DNS Name and IP addresses.    
When a Service is created, Kubernetes automatically create a DNS entry for that Service.  
Pods inside the cluster can access the Service using the DNS name in this format:      
`<service-name>.<namespace>.svc.cluster.local`  
Example:  
If a Service name is web-app in the default namespace, Pods can access it using:  
`web-app.default.svc.cluster.local`  

Q5) What Endpoints are and how to inspect them?  
Endpoints represent the actual IP addresses of the Pods that a Service sends traffic to.
When a Service selects Pods using labels, Kubernetes automatically creates an Endpoints object that contains the IP addresses and ports of those Pods.  
How to inspect Endpoints  
1. List all Endpoints  
`kubectl get endpoints`
  
2. Check Endpoints of a specific Service  
`kubectl get endpoints <service-name>`
  
3. Get detailed information  
`kubectl describe endpoints <service-name>`
