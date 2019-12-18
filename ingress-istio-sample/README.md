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
kubectl apply -f <(istioctl kube-inject -f 01-helloworld-deployment.yaml)
```

## Install gateways

### Install gateway for single service

```bash
kubectl apply -f 02-helloworld-gateway-v1.yaml
```

### Install gateway for mutiple subsets

```bash
kubectl apply -f 02-helloworld-gateway-v2.yaml
```

### Install external proxy gateway

```bash
kubectl apply -f 03-httpbin-gateway.yaml
```

```bash
# Test
curl http://<INGRESS-IP>:<PORT>/status/418 -Hhost:httpbin.org
```
