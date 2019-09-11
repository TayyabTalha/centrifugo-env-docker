Docker image for [Centrifugo](https://github.com/centrifugal/centrifugo) real-time messaging server configure by ENV.

```
docker run --ulimit nofile=65536:65536 -v /host/dir/with/config/file:/centrifugo -p 8000:8000 centrifugo/centrifugo centrifugo -c config.json
```
