### Image build

```
mkdir -p build
export TMPDIR=$(pwd)/build

VERSION=latest

podman build \
  -f Dockerfile \
  -t ghcr.io/randomcoww/conntrackd:$VERSION
```

```
podman push ghcr.io/randomcoww/conntrackd:$VERSION
```