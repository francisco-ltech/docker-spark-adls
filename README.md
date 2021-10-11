# Purpose of this lab

Try out the datamechanics/spark:3.1-latest docker image with a simple spark app.

# Build docker image

```
$ docker build  --no-cache -t wpp-dpp/ingestion:latest .
```

# Run docker image

```
$ docker run wpp-dpp/ingestion driver local:///opt/wpp-dpp/ingestion/src/main.py
```
