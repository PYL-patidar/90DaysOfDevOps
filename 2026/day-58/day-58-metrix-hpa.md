Conseptual clearity need before hands-on
## Scaling
If our application regularly reaches its limits because of increasing traffic, simply setting limits is not enough.
We need scaling to handle higher load.

For example:
  - Users suddenly start accessing the application
  - Traffic increases rapidly
  - The existing Pod reaches its CPU or memory limits
When this happens:
  - Application response becomes slow
  - Requests may start failing
  - User experience becomes poor

To solve this problem, Kubernetes provides Scaling.
Scaling means:
Increasing or decreasing the number of Pods running for an application based on the workload.
Instead of relying on one Pod, Kubernetes can run multiple Pods of the same application to distribute the traffic.

Scaling can be done in two ways: manual scaling and automatic scaling.

Q1) What the Metrics Server is and why HPA needs it

Manual Scaling
In manual scaling, we manually increase or decrease the number of Pods.
For example, if the application starts receiving more traffic and the existing Pods are not able to handle the load, then we can manually increase the replicas of the Deployment.

To solve the limitations of manual scaling, Kubernetes provides automatic scaling.

In automatic scaling, the system automatically decides:
  - when to increase Pods
  - when to decrease Pods

This decision is based on resource utilization such as CPU or memory usage.

## Monitoring Resource Utilization:
To perform automatic scaling, Kubernetes first needs to know how many resources the application is using.

For this, we need a component that can collect and provide resource usage metrics such as:
- CPU usage
- Memory usage
In Kubernetes, this is done using:
Kubernetes Metrics Server
The Metrics Server collects resource usage data from nodes and Pods in the cluster.

It then provides this information to Kubernetes so that the system can understand how much CPU or memory the application is currently using.
Based on these utilization metrics, Kubernetes can make decisions such as when to increase or decrease the number of Pods.

This data is mainly used by components like: Horizontal Pod Autoscaler

Q1) What the Metrics Server is and why HPA needs it.
Metrics Server is a small service in Kubernetes that collects resource usage data from all nodes and pods in the cluster.
It gathers metrics like: CPU usage, Memory usage
It gets this data from the kubelet running on each node and then stores it temporarily so Kubernetes components can access it.

Q) Why Horizontal Pod Autoscaler (HPA) needs Metrics Server?
The Horizontal Pod Autoscaler needs resource usage data to decide when to increase or decrease Pods.
But Kubernetes does not collect CPU and memory usage metrics by default in a way that HPA can use directly.
That’s why we need: Kubernetes Metrics Server

- Metrics Server collects metrics
It gathers CPU and memory usage from nodes and kubelets in the cluster.

- Metrics are exposed through the Kubernetes API
Commands like this use those metrics:
`kubectl top pods
kubectl top nodes`

- HPA reads these metrics
The Horizontal Pod Autoscaler checks the current utilization.

Q) How HPA calculates desired replicas
