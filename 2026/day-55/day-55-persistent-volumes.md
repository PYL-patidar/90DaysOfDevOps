Q1) Why containers need persistent storage?  
ANS: Containers are ephemeral, which means they can crash, stop or be recreated at any time.  
When a container is recreated, its internal data are lost.  
To ensure that important application data is not lost, Kubernetes provide Persistent Volume(PV), which allow data to be store outside the 
container so it remain safe even if Container or Pod restart.  

Q2) What PVs and PVCs are and how they relate.
ANS: A Persistent Volume (PV) is a piece of storage available in the Kubernetes cluster that is used to store application data.  
A Persistent Volume Claim (PVC) is a request for storage made by a user or application.   
  
The PVC requests storage, and Kubernetes binds the PVC to a suitable PV. After binding, the Pod can use that storage through the PVC.  

Q3) Static vs dynamic provisioning.
ANS: 
Static Provisioning:  
In static provisioning, the Persistent Volume (PV) is created manually by the administrator before it is used. The PV already exists in the   
cluster, and when a user creates a Persistent Volume Claim (PVC), Kubernetes binds that PVC with the available PV that matches the requirements.  
  
Dynamic Provisioning:  
In dynamic provisioning, we do not create PVs manually. Instead, the user only creates a PVC with a specific StorageClass, and Kubernetes  
automatically provisions a new PV based on that StorageClass to satisfy the request. This makes storage management easier and more flexible.  

Q4) Access modes and reclaim policies.  
Access modes:  
Access modes defines how Persistent Volume can be mounted by a Pod.  
Types of access mode:  
- ReadWriteOnce(RWO): The volume can be mounted as read-write by a single node only. Multiple Pods can use it, but they must run on the same node.  
- ReadOnlyMany(ROM) : The volume can be mounted as read-only by multiple nodes at the same time.  
- ReadWriteMany(RWM): The volume can be mounted as read-write by multiple nodes simultaneously.  
- ReadWriteOncePod(RWOP): The volume can be mounted as read-write by only one Pod in the entire cluster.

Reclaim Policy  
Reclaim policy defines what happens to Persistent Volume(PV) after the Persistent Volume Claim(PVC) is deleted.  
Type of Reclaim Policy:  
- Retain: The PV is not deleted automatically. The data remains, and the administrator must manually clean and reuse the storage.  
- Delete: When the PVC is deleted, the PV and its storage are automatically deleted.  
- Recycle(Deprecated): The volume was automatically cleaned (basic scrub like deleting files) and made available again.  
⚠️ This method is now deprecated in Kubernetes.
