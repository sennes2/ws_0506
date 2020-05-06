# ws_0506
# dockerfiles-nginx-user-adderable
FROM ubuntu
add: net-tools,curl,tree,nginx

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t sennes2/nginx .
	docker run -d --name n1 sennes2/nginx
```


# 결과
ubuntu@u1:~/ws/ws_0506$ sudo docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
16c101975c5b        sennes2/nginx       "nginx -g 'daemon of…"   36 seconds ago      Up 35 seconds       0.0.0.0:8888->80/tcp   n1

ubuntu@u1:~/ws/ws_0506$ curl localhost:8888
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
