# 이미지로 pods 기동 
kubectl run nginx --image=sennes2/nginx --port=80
kubectl get deploy
# 20개로 scale out
kubectl scale deploy nginx --replicas=20
kubectl get po
# autoscale
kubectl autoscale rs nginx-6ffffd6dbf --max=30
kubectl get hpa


# 결과 : pod 20개
[root@node1 ~]# kubectl get po
NAME                     READY   STATUS    RESTARTS   AGE
nginx-6ffffd6dbf-2rx49   1/1     Running   0          82s
nginx-6ffffd6dbf-5gbxc   1/1     Running   0          82s
nginx-6ffffd6dbf-5j6ww   1/1     Running   0          82s
nginx-6ffffd6dbf-689tg   1/1     Running   0          82s
nginx-6ffffd6dbf-8fnw7   1/1     Running   0          5m54s
nginx-6ffffd6dbf-9kj8g   1/1     Running   0          82s
nginx-6ffffd6dbf-g8rl8   1/1     Running   0          82s
nginx-6ffffd6dbf-gkzf7   1/1     Running   0          82s
nginx-6ffffd6dbf-hfrqk   1/1     Running   0          82s
nginx-6ffffd6dbf-hhl55   1/1     Running   0          82s
nginx-6ffffd6dbf-hnvbg   1/1     Running   0          82s
nginx-6ffffd6dbf-hxd4j   1/1     Running   0          82s
nginx-6ffffd6dbf-m7kcf   1/1     Running   0          82s
nginx-6ffffd6dbf-nxrcr   1/1     Running   0          82s
nginx-6ffffd6dbf-q7vvq   1/1     Running   0          82s
nginx-6ffffd6dbf-s7rx9   1/1     Running   0          82s
nginx-6ffffd6dbf-vrxr4   1/1     Running   0          82s
nginx-6ffffd6dbf-wx6xn   1/1     Running   0          82s
nginx-6ffffd6dbf-xhz65   1/1     Running   0          82s
nginx-6ffffd6dbf-zk8f9   1/1     Running   0          82s

# 결과 : scale out 결과
[root@node1 ~]# kubectl get hpa
NAME               REFERENCE                     TARGETS         MINPODS   MAXPODS   REPLICAS   AGE
nginx-6ffffd6dbf   ReplicaSet/nginx-6ffffd6dbf   <unknown>/80%   1         30        20         3m1s



