Q1) What ConfigMaps and Secrets are and when to use each?
Our application needs configuration — database URLs, feature flags, API keys. Hardcoding these into container images means rebuilding every 
time a value changes. Kubernetes solves this with ConfigMaps for non-sensitive config and Secrets for sensitive data.
  
ConfigMap: A ConfigMap is used to store non-sensitive configuration data as key–value pairs.  
Examples of ConfigMap data:
  - Application configuration
  - Environment variables
  - Configuration files
  - Feature flags
Secret: A Secret is used to store sensitive information.  
Examples:  
  - Passwords
  - API keys
  - Tokens
  - SSH keys
  - TLS certificates

When to Use Each  
- Use ConfigMap when:
  - Configuration is not sensitive  
  - Example:
    - App mode
    - Feature flags
    - Service URLs

- Use Secret when:  
  - Data is sensitive
  - Example:
    - Database password
    - API keys
    - TLS certificates
      
ConfigMap  or Secret can be injected in two ways:   
Environment Variables  
  
env:  
- name: APP_ENV  
  valueFrom:  
    configMapKeyRef:  
      name: app-config  
      key: APP_ENV  

Volume Mount  
  
volumes:  
- name: config-volume  
  configMap:  
    name: app-config

Secrets are base64 encoded and Kubernetes restricts their access.

Q2) The difference between environment variables and volume mounts?  
Environment Variables vs Volume Mounts (Simple Difference)   
- Environment Variables:  
ConfigMap or Secret values are injected as environment variables inside the container. These values do not update automatically if the ConfigMap 
or Secret changes.
- Volume Mounts:
ConfigMap or Secret is mounted as files inside a directory in the container. If the ConfigMap or Secret is updated, the files get updated 
automatically inside the Pod.

Q3) Why base64 is encoding, not encryption.
ANS: Base64 is encoding, not encryption because it does not protect the data.  
- Encoding means converting data into another format so it can be easily transmitted or stored.  
- Encryption means converting data into a secure form that requires a key to decrypt.
- 
Base64 only converts data into a different representation, and anyone can easily decode it back to the original value. It does not require
any secret key.

Q4) How ConfigMap updates propagate to volumes but not env vars.  
ConfigMap updates behave differently because of how they are injected into the Pod.  
- Environment Variables: Values are copied when the container starts. If the ConfigMap changes later, the container will not get the updated
value unless the Pod is restarted.
- Volume Mounts: ConfigMap data is mounted as files. When the ConfigMap is updated, Kubernetes automatically updates the files, so the Pod
can read the new values without restarting.
