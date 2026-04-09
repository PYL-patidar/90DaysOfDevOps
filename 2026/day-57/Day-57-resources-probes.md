Q) Requests vs limits (scheduling vs enforcement)  

In Kubernetes, resources and limits control how resources scheduled and enforces for a pod.  

Request -> Used for Scheduling  
Requests = minimum resources the container needs to start.  
- Kubernetes Scheduler check requests to decide which node can run the Pod.  
- The node must have at least this much free resource.  
  
Limits-> Used for Enforcement  
Limit = maximum resources the container is allowed to use.  
- Kubernetes enforces limits at runtime.  
If it tries to use more:  
CPU → Kubernetes slows it down (throttle)  
Memory → Container is killed (OOMKilled)  
  
Q) What happens when CPU or memory limits are exceeded    
When CPU limit is exceeded:  
If a container tries to use more CPU than its limit:  
- Kubernetes does NOT kill the container  
- Instead, it throttles (slows down) the CPU usage
Result:  
  - Application runs slowed
  - Container keeps running
  
When Memory limit is exceeded:  
If a container uses more memory than its limit:  
- Kubernetes kills the container  
Result:  
  - Container terminated  
  - Pod status shows OOMKilled (Out Of Memory)  
  
Q) Liveness vs readiness vs startup probes?  
Probes in Kubernetes, helps kubernetes check application health and if it is unhealthy automatically take action like restarting containers
and controling  traffics.  
It is a health check mechanism used by Kubernetes to monitor a container.  
These are three types: Liveness, Readiness and Startup Probes.  

## Liveness Probs:
Purpose    
Checks if the container is still alive (running properly).  
- If the liveness probe fails, Kubernetes restarts the container.
- Useful when an app gets stuck or deadlocked.
Real-life Example    
Imagine:  
- our application hangs but the process is still running.  
- Liveness probe detects it and restarts the container automatically.  
  
## Readiness Probe:  
Purpose  
Checks if the container is ready to receive traffic.  
- If the readiness probe fails, Kubernetes removes the Pod from the Service load balancer.
- The container is NOT restarted.  
Real-life Example    
Our app:    
- Needs database connection before serving requests.  
- Until DB is ready → readiness probe fails → no traffic sent.  
  
## Startup probe:  
Purpose  
Used for slow starting applications.  
- Kubernetes waits for startup probe to succeed before running liveness/readiness probes.
- Prevents containers from restarting during startup

