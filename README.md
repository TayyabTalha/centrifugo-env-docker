Docker image for [Centrifugo](https://github.com/centrifugal/centrifugo) real-time messaging server configure by ENV.

```
docker build . --tag=tayyab/centrifugo
docker run --rm --ulimit nofile=65536:65536 -p 8000:8000 -e SECREAT=9223d5ab-4bef-4d6f-a8b3-86e3c19e1d15 -e ADMIN_PASSWORD=0e333f9-4392-47e2-b2c1-7c612863cb22 -e ADMIN_SECREAT=d2c42019-7f22-3343-88f5-cbbd48624e1b  -e API_KEY=cbbd48624e1b--a8b3-86e3c19e1d15 tayyab/centrifugo
```
