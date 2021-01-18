$env:CHAOS_MESH_REPO_PATH = ""

#create CRDs
kubectl apply -f $env:CHAOS_MESH_REPO_PATH/manifests/crd.yaml

#create namespace
kubectl create ns chaos-mesh

#install chaos-mesh chart 
helm upgrade --install chaos-mesh  $env:CHAOS_MESH_REPO_PATH/helm/chaos-mesh -n chaos-mesh --set dashboard.create=true --set dashboard.securityMode=false

#open dashboard chart
minikube service chaos-dashboard -n chaos-mesh
