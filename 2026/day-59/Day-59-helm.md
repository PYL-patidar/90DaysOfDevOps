## Helm 
Helm is a package manager for Kubernetes that helps you deploy and manage applications on a Kubernetes cluster easily.

Without Helm, you often need to manage multiple Kubernetes YAML files (Deployment, Service, ConfigMap, Secret, etc.). Helm packages
these files together into a reusable unit called a chart, so applications can be installed with a single command.

Example:
`helm install my-nginx bitnami/nginx`

Here Helm automatically creates all the required Kubernetes resources using templates.

Helm works alongside kubectl and interacts with the cluster using the same kubeconfig.

### Three Core Concepts of Helm
1. Repository
A repository is a collection of Helm charts stored in a remote location.

2. Release:
A release is a running instance of a chart deployed in the Kubernetes cluster.
a specific installation of a chart in your cluster
3.  Chart:
A chart is a packaged collection of Kubernetes resource templates that defines how an application should run on Kubernetes.


When you install a chart, Helm creates a release.
