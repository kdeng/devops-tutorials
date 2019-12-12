# How to install nginx ingress in GKE

## Installation

### Add helm stable repo

```bash
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
```

### Update helm stable repo

```bash
helm repo update
```

### Install nginx-ingress controller

**All resources will be installed with default namespace**

```bash
helm install nginx-ingress stable/nginx-ingress --set rbac.create=true --set controller.publishService.enabled=true
```

### Install application helm charts

```bash
helm update --install app ./app/. --namespace default
```

### Install ingress

```bash
kubectl apply -f ingress.yaml
```

## Check

### Describe load balancing external IP

```bash
kubectl get service -n default
```

You will see

```bash
NAMESPACE     NAME                            TYPE           CLUSTER-IP     EXTERNAL-IP     PORT(S)                      AGE
default       app-demo-service                NodePort       10.*.*.*       <none>          8082:30065/TCP               26m
default       kubernetes                      ClusterIP      10.*.*.*       <none>          443/TCP                      60m
default       nginx-demo-service              NodePort       10.*.*.*       <none>          8081:30298/TCP               26m
default       nginx-ingress-controller        LoadBalancer   10.*.*.*       3*.29*.29.2*    80:31006/TCP,443:31670/TCP   29m
```

__3*.29*.29.2*__ will the external IP address of load balancer.

Open your browser with http://3*.29*.29.2*/app/ to access app-demo service, or http://3*.29*.29.2*/nginx/ to access nginx default page.
