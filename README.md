Software-defined radio (SDR) container
======================================

SDR tools provided by Debian buster and others built from source

Run
---

```
$ docker run \
    -it --rm \
    --name battlenet \
    -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
    -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
    -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
    -e DISPLAY=$DISPLAY \
    --device /dev/dri \
    sdr
```
