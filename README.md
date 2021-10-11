# Purpose of this lab

Mount ADLS Gen2 container onto local file system for Spark apps to read/write files without using abfss protocol.

Mounting is enabled by [Blobfuse](https://github.com/Azure/azure-storage-fuse) - A Microsoft supported Azure Storage FUSE driver.

This docker image extends the [Spark image from DataMechanics](https://hub.docker.com/r/datamechanics/spark).

# Pre-requisites:

## Create your fuse_connection.cfg configuraion file

Blobfuse provides a file to store your ADLS Gen2 details.
Rename fuse_connection.cfg.example to fuse_connection.cfg and replace the values for:

- accountName <your_storage_account_name>
- accountKey <your_storage_account_key>
- containerName <your_container_name>

# Build the docker image & container with docker-compose

```
$ docker-compose up --build -d
```
