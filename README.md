# docker-prometheus

__Attention: This Docker image is specifically designed for the
[gaming platform](https://github.com/gaming-platform)
and shouldn't be used in other projects. Tags may undergo
breaking changes and could be subject to removal.__

This repository provides a `Prometheus` image for the
[gaming platform](https://github.com/gaming-platform).

## Usage

__Name__  
`ghcr.io/gaming-platform/docker-mysql:2.45`

__Configuration__  
For `docker` service discovery, the container can be configured as follows:

```yaml
prometheus:
  image: ghcr.io/gaming-platform/docker-prometheus:2.45
  command: --config.file=/etc/prometheus/docker.yml
  volumes:
    - /var/run/docker.sock:/var/run/docker.sock
```

For `dockerswarm` service discovery, the container can be configured as follows:

```yaml
prometheus:
  image: ghcr.io/gaming-platform/docker-prometheus:2.45
  command: --config.file=/etc/prometheus/dockerswarm.yml
  volumes:
    - /var/run/docker.sock:/var/run/docker.sock
```

In both cases, services should be labeled as follows:

```yaml
services:
  app:
    image: prom/node-exporter:v1.6.0
    labels:
      - "prometheus-job=jobname"   # required
      - "prometheus-port=80"       # optional
      - "prometheus-path=/metrics" # optional
```
