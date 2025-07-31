# munta

Munta is your locally hosted one-stop-shop for all your audio and pictures conversion needs. It is a containerized web frontend for `ffmpeg`. It is aimed at supporting only libre codecs. Some handy filters (like vignette for pictures and echo for audio) are also available through the conversion process.

## Setup

1. Clone this repository:

```
git clone https://github.com/grinningmosfet/docs-lenid.git
```

2. Build the container using the provided `Dockerfile`:

```
cd docs-lenid
docker build -t docs-lenid .
```

3. Run the freshly built container:

```
docker run -p 8080:80 docs-lenid
```

4. Open your internet browser, go to `127.0.0.1:8080` and enjoy!