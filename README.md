# brick-data-retrieval-demo

This is the data + code for [this tutorial video](https://www.youtube.com/watch?v=kZYNXoiM8gk)

```bash
# unzip data files
unzip bldg2-data.zip

# start docker containers
./scripts/start_docker_containers.sh

# load timeseries data (wait for docker containers to start before running)
./scripts/setup.sh
```

Adjust passwords in `scripts/start_docker_containers.sh`.

The `scripts/cleanup.sh` script will delete the docker containers and network and you can run the start/setup scripts again
