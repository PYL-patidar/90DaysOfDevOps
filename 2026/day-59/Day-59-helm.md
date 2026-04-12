## Helm : Kubernetes Package Manager  
### Task 1:  
### Helm Installation:    
Helm works alongside kubectl and interacts with the cluster using the same kubeconfig.  
Helm was installed on Windows using Winget.  
Command used: `winget install Helm.Helm`  
Verification: `helm version`  

Q) What Helm is and the three core concepts?
Helm is a package manager for Kubernetes that helps us deploy and manage applications on a Kubernetes cluster easily.

Without Helm, we often need to manage multiple Kubernetes YAML files (Deployment, Service, ConfigMap, Secret, etc.). Helm packages
these files together into a reusable unit called a chart, so applications can be installed with a single command.

Example:
`helm install my-nginx bitnami/nginx`

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

### Helm Operations: Install, Customize, Upgrade, and Rollback

### 1. Installing a Helm Chart
Helm installs applications on a Kubernetes cluster using charts.
Example installation using a chart from Bitnami:
`helm install my-nginx bitnami/nginx`
Helm will create Kubernetes resources such as: Deployment, Service, ConfigMaps, Secrets
We can verify the release: `helm list`
When you install a chart, Helm creates a release.

### 2. Customizing a Helm Deployment
Helm charts contain default configuration in values.yaml.
You can view them: `helm show values bitnami/nginx`

Using --set
Override values directly from the command line:
`helm install nginx-set bitnami/nginx --set replicaCount=3 --set service.type=NodePort`

Using a Custom Values File
Example custom-values.yaml:
`replicaCount: 3
service:
  type: NodePort
  port: 80`
  
  Install using the file:
  `helm install nginx-file bitnami/nginx -f custom-values.yaml`
  Using a values file is the recommended practice in real DevOps environments.

### 3. Upgrading a Helm Release
When we change configuration or update the application, we can upgrade the release.
Example:
`helm upgrade nginx-file bitnami/nginx -f custom-values.yaml`
Or
`helm upgrade my-nginx bitnami/nginx --set replicaCount=5`

We can view the updated values: `helm get values nginx-file`

### 4. Rolling Back a Helm Release
If an upgrade causes problems, Helm allows you to rollback to a previous version.

Check release history: `helm history nginx-file`

Rollback to a previous revision: `helm rollback nginx-file 1`

Q) The structure of a Helm chart and how Go templating works
### Structure of a Helm Chart
A Helm chart is a directory that contains all the files required to deploy an application on Kubernetes.

Typical chart structure:
`mychart/
│
├── Chart.yaml
├── values.yaml
├── charts/
├── templates/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml
│   └── _helpers.tpl
│
└── README.md`

`Chart.yml`: This file contains metadata about the chart.
`values.yaml`: This file contains default configuration values used by the chart.
`templates/ `: This directory contains Kubernetes resource templates.
Examples:
templates/
   deployment.yaml
   service.yaml
   configmap.yaml

`charts/`: This folder contains dependent charts.
Example: if your application depends on Redis, its chart can be placed here.

### How Go Templating Works in Helm

Helm uses Go template language to dynamically generate Kubernetes manifests.
Templates allow Helm to replace variables with values at runtime.
Basic syntax: `{{ expression }}`
Example Template
deployment.yaml inside the templates folder:
`apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ .Release.Name }}
spec:
  replicas: {{ .Values.replicaCount }}`

Important Template Variables
`.Values` : values from values.yaml
`.Chart` : chart metadata
`.Release` : release information
`.Release` : release information

- Example of Template Rendering
If values.yaml contains:
`replicaCount: 3`

and template contains:
`replicas: {{ .Values.replicaCount }}`

- Rendering Templates Before Installing
You can see the generated YAML using:
helm template my-nginx bitnami/nginx
This shows the final Kubernetes manifests that Helm will apply.
