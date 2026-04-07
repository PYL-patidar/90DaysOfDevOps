Q1) What StatefulSets are and when to use them vs Deployments?
Kubernetes Statefulset and Deployment:
Both Statefulset and Deployment are controller used to manage pods, but they are designed for different type of applications.

Deployment: It is used for stateless applications.  
1) Pods are interchangable and identical
2) Pod name are random.
3) Pod can be deleted and created in any order.
4) Usually no dedicated persistent storage.
5) A Service provides a single endpoint and load balancer traffic.

Common Use Cases:  
- Web servers
- Apis
- Microservices
- Frontend application

Statefulset: A Statefulset is used to run stateful application where identity and storage mush persis.
1) Pods have stable Name.
2) Pods have stable network identity.
3) Each pod has its own persistent storage.
4) Pods start and terminate in order.
5) Usually used with Headless Service.

Common Use Case:
- Databases
- Application requireing stable identity
- Example: MYSQL, MongoDB, Kafka, Zookeeper

## Deployment Vs Statefulset 
  
| Feature | Deployment | StatefulSet |
| Application type | Stateless applications | Stateful applications |
| Pod Identity | Random and interchangable | Stable identity |
| Pod Name | Randomly generate | Predictable (app-0, app-1 ....) |
| Order | Pods created in parallel | Pods created in order |
| Storage | Usually ephemeral | Persistent storage pr pod |
| Network Identity | not Stable DNS per pod | Stable DNS per pod |
| Service type | Normal Services | Headless Service |


Q) How Headless Services, stable DNS, and volumeClaimTemplates work?
Headless Service: 
In Kubernetes, a normal service provides a single clusterIP and perform load balancing between pods.
However, in stateful application, we often need to communicate with a specific pod rather than any random pod. 
To solve this, kubernetes provides a Headless Service.
Key Points:
- A Headless is created by setting:
  `ClusterIp: None`
- It does not assign a cluster IP.
- It doesnot perform load balancing.
- Instead, it returns the IP addresses of individual pods

Purpose: Headless Service allows direct communication with individual pods, which is importent for StatefulSet application.

Stable DNS:
In StatefulSet, each pod had a stable and predictable pod name.
When a Headless Service is used with Statefulset, Kubernetes automaticaly creates DNS records for each pod.  
  
DNS Format  
`<pod-name>.<service-name>.<namespace>.svc.cluster.local`

volumeClaimTemplate:
Stateful application usually required persistent storage.
In a Statefulset, kubernetes use volumeClaimTemplate to automatically create a seperate persistentVolumeClaim for each pod.
