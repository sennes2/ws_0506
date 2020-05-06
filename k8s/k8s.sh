kubectl run nginx --image=sennes2/nginx --port=80
kubectl get deploy
kubectl scale deploy nginx --replicas=20
kubectl get po
kubectl autoscale rs nginx-6ffffd6dbf --max=30
kubectl get hpa
