# Screenshots
To help review your infrastructure, please include the following screenshots in this directory::

## Deployment Pipeline
* DockerHub showing containers that you have pushed
![](screencapture-hub-docker-2022-01-03-03_29_07.png)
* GitHub repository’s settings showing your Travis webhook (can be found in Settings - Webhook)
* Travis CI showing a successful build and deploy job
![](screencapture-app-travis-ci-2022-01-03-03_35_52.png)
## Kubernetes
* To verify Kubernetes pods are deployed properly
```bash
kubectl get pods
```
![](pods.png)
* To verify Kubernetes services are properly set up
```bash
kubectl describe services
```
![](./services-1.png)![](./services-2.png)

* To verify that you have horizontal scaling set against CPU usage
```bash
kubectl describe hpa
```

![](./hpa.png)

* To verify that you have set up logging with a backend application
```bash
kubectl logs {pod_name}
```

![](./logs.png)
