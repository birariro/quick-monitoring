# monitoring on Docker

[![version](https://img.shields.io/badge/prometheus-latest-00bfb3?style=flat&logo=prometheus)](https://github.com/prometheus/prometheus)
[![version](https://img.shields.io/badge/grafana-latest-00bfb3?style=flat&logo=grafana)](https://github.com/grafana/grafana)
[![version](https://img.shields.io/badge/OpenSearch-2.6.0-00bfb3?style=flat&logo=elastic-stack)](https://github.com/opensearch-project)

<img width="1000" alt="image" src="https://user-images.githubusercontent.com/52993842/235631888-3a50563b-8f97-4674-b148-d654f24027fe.png">


Docker images:

* [mysqld-exporter](https://hub.docker.com/r/prom/mysqld-exporter/)
* [prometheus](https://hub.docker.com/r/prom/prometheus)
* [grafana](https://hub.docker.com/r/grafana/grafana)
* [opensearch](https://hub.docker.com/r/opensearchproject/opensearch)
 
---


### Host setup

* [Docker Engine][docker-install] version **18.06.0** or newer
* [Docker Compose][compose-install] version **1.26.0** or newer (including [Compose V2][compose-v2])
* 2.0 GB of RAM


By default, the stack exposes the following ports:

* 9104: db-exporter
* 9094: prometheus
* 9095: grafana
* 9200: openSearch HTTP
* 9600: openSearch TCP transport
* 5601: dashboard

## Usage

### Bringing up the stack

Clone this repository onto the Docker host that will run the stack with the command below:

```sh
git clone https://github.com/k4keye/quick-monitoring.git
```

Then, start the stack components locally with Docker Compose:

```sh
docker-compose up
```

> **Note**  
> You can also run all services in the background (detached mode) by appending the `-d` flag to the above command.

Give grafana Dashboards about a minute to initialize, then access the grafana Dashboards web UI by opening <http://localhost:9095> in a web
browser and use the following (default) credentials to log in:

* user: *admin*
* password: *admin*

### Initial setup

### Cleanup


In order to entirely shutdown the stack and remove all persisted data, use the following Docker Compose command:

```sh
docker-compose down -v
```


#Tools License

- [grafana License - AGPL](https://grafana.com/licensing/)
- [prometheus License - Apache 2.0](https://github.com/prometheus/prometheus/blob/main/LICENSE)
- [mysqld_exporter License - Apache 2.0](https://github.com/prometheus/mysqld_exporter/blob/main/LICENSE)


- [AGPL](https://sktelecom.github.io/guide/use/obligation/agpl-3.0/)
- [Apache 2.0](https://sktelecom.github.io/guide/use/obligation/apache-2.0/)


