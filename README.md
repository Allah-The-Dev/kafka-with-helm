# kafka-with-helm

## first create kafka namespace
kubectl apply -f ./namespace.yaml

## install kafka helm chart
helm install kafka-server ./kafka-server -n kafka
