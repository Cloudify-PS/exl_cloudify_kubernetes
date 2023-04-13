# exl_cloudify_kubernetes

Cloudify Kubernetes feature demo.

From e-mail:
- UC 1: How we can manage multi cluster kubernetes from cloudify. (Blueprint multi-cluster)
- UC 2: How we can manage distributed service deployments and automate application governance. (Kubernetes functionality)
    - https://kubernetes.io/docs/concepts/workloads/controllers/
    - https://kubernetes.io/docs/concepts/workloads/controllers/deployment/
    - https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/
    - https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/
    - https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
    - https://kubernetes.io/docs/concepts/workloads/controllers/job/
- UC 3: Kubernetes full lifecycle management from cloudify including auto scale and heal, mass upgrade, updates. (Blueprint EKS or AKS - update, heal, blueprint update)
- UC 4: How we can deploy the same service which is running in one cluster to multiple clusters. (Blueprint multi-cluster)
- UC 5: How we can use cloudify to integrate kubernetes with external database, network, storage. (Plugins and Blueprint k3s-rds)(external DC on AWS RDS + k3s cluster on EC2 instance)
- UC 6: How we can set policies for better workload placement (based on location, resource availablity) (Kubernetes functionality)
    - https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/
    - https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/
