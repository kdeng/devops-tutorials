# Install traefik ingress controller in GKE

## Traefik V1 solution

### Install traefik V1

```bash
kubectl apply -f ./traefik-1.x/01-traefik-rabc.yaml
kubectl apply -f ./traefik-1.x/02-traefik-deployment.yaml
kubectl apply -f ./traefik-1.x/03-traefik-ingress.yaml
```

### Install applications

```bash
helm upgrade --install app ./app/. --set global.namespace=default
```

### Install ingress

```bash
kubectl apply -f traefik-ingress-v1.yaml
```


## Traefik V2 solution

### Install traefik V2

```bash
helm upgrade --install traefik ./traefik-helm-chart --set dashboard.enabled=true,servrbac.enabled=true --namespace default
```

### Install applications

```bash
helm upgrade --install app ./app/. --set global.namespace=default
```

### Install ingress

```bash
kubectl apply -f traefik-ingress-v2.yaml
```
