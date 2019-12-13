# Using ambassador ingress controller in GKE

## Install ambassdor ingress controller

```bash
helm install ambassador stable/ambassador --namespace default
```

## Install application services

```bash
helm upgrade --install app ./app/. --set global.namespace=default
```

## Install ingress services

```bash
kubectl apply -f ingress.yaml --namespace default
```

