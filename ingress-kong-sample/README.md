# Using Kong ingress controller in GKE

## Install Kong ingress controller

```bash
kubectl apply -f https://bit.ly/k4k8s
```

## Install application by using helm

```bash
helm upgrade --install app ./app/. --set global.namespace=default
```

## Install ingress resource

```bash
kubectl apply -f ingress.yaml -n default
```

Howevery, you could use kong service annotation alternatively.

```bash
kubectl apply -f kong-ingress.yaml -n default
```
