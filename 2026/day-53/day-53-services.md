Q1) What problem Services solve and how they relate to Pods and Deployments?
ANS: A Deployment runs multiple Pods, but each Pod have its own IP address which can changes if the Pod is recreated. A Service solved this
probelm by providing a stable IP addredd and DNS Name to access the Pod. It automatically routes requests to the available Pods.

