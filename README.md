### Image build

```
VERSION=latest
TAG=ghcr.io/randomcoww/conntrackd:$VERSION

buildah build \
  -f Dockerfile \
  -t localtemp

container=$(buildah from localtemp)
buildah run --net=none $container -- rm /etc/hosts
buildah commit $container $TAG

buildah push ghcr.io/randomcoww/conntrackd:$VERSION
```