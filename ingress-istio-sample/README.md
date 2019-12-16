# Install istio ingress controller


## Install istio

```bash
curl -L https://istio.io/downloadIstio | sh -

cd istio-1.4.2

export PATH=$PWD/bin:$PATH

istioctl manifest apply

# Or

istioctl manifest apply --set values.global.mtls.enabled=true --set values.global.controlPlaneSecurityEnabled=true
```

## Install application

```bash
kubectl apply -f <(istioctl kube-inject -f helloworld.yaml)
```

## Install gateway

```bash
kubectl apply -f helloworld-gateway.yaml
```

