## Helm : Kubernetes Package Manager
### Task 1:

Q) What Helm is and the three core concepts?

Helm is a package manager for Kubernetes that helps us deploy and manage applications on a Kubernetes cluster easily.

Without Helm, we often need to manage multiple Kubernetes YAML files (Deployment, Service, ConfigMap, Secret, etc.). Helm packages
these files together into a reusable unit called a chart, so applications can be installed with a single command.

Example:
`helm install my-nginx bitnami/nginx`

Here Helm automatically creates all the required Kubernetes resources using templates.
Helm works alongside kubectl and interacts with the cluster using the same kubeconfig.

### Three Core Concepts of Helm
1. Repository
A repository is a collection of Helm charts stored in a remote location.
Add the Bitnami repository: `helm repo add bitnami https://charts.bitnami.com/bitnami`
After adding a repo, we can search and install charts from it.
Example:
Update: `helm repo update`
Search: `helm search repo nginx` and `helm search repo bitnami`
Verify: How many charts does Bitnami have?
ANS: 100+ charts are availbale on bitnami repo

3. Release:
A release is a specific installation of a chart in our cluster.
Example:
Deploy nginx: `helm install my-nginx bitnami/nginx`
Inspect the release: `helm list`, `helm status my-nginx`, `helm get manifest my-nginx`

5.  Chart:
A chart is a packaged collection of Kubernetes resource templates that defines how an application should run on Kubernetes.
It contains files like:

`Chart.yaml
values.yaml
templates/
charts/`

Q2) How to install, customize, upgrade, and rollback
### Helm Installation:
Helm was installed on Windows using Winget.
Command used: `winget install Helm.Helm`
Verification: `helm version`
When you install a chart, Helm creates a release.
