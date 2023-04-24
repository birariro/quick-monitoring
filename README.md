# monitoring on Docker

[![version](https://img.shields.io/badge/prometheus-latest-00bfb3?style=flat&logo=prometheus)](https://www.elastic.co/blog/category/releases)
[![version](https://img.shields.io/badge/grafana-latest-00bfb3?style=flat&logo=grafana)](https://www.elastic.co/blog/category/releases)


<img width="1000" alt="image" src="https://user-images.githubusercontent.com/52993842/233903291-9381a0af-9ffb-49d5-8661-a97d428b118c.png">


Docker images:

* [mysqld-exporter](https://hub.docker.com/r/prom/mysqld-exporter/)
* [prometheus](https://hub.docker.com/r/prom/prometheus)
* [grafana](https://hub.docker.com/r/grafana/grafana)

---


### Host setup

* [Docker Engine][docker-install] version **18.06.0** or newer
* [Docker Compose][compose-install] version **1.26.0** or newer (including [Compose V2][compose-v2])
* 2.0 GB of RAM


By default, the stack exposes the following ports:

* 9104: db-exporter
* 9094: prometheus
* 9095: grafana

## Usage

### Bringing up the stack

Clone this repository onto the Docker host that will run the stack with the command below:

```sh
git clone https://github.com/k4keye/docker-monitoring.git
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

- [grafana License - AGPL](https://hub.docker.com/r/prom/mysqld-exporter/)
- [prometheus License - Apache 2.0](https://github.com/prometheus/prometheus/blob/main/LICENSE)
- [mysqld_exporter License - Apache 2.0](https://github.com/prometheus/mysqld_exporter/blob/main/LICENSE)


- [AGPL](https://sktelecom.github.io/guide/use/obligation/agpl-3.0/)
- [Apache 2.0](https://sktelecom.github.io/guide/use/obligation/apache-2.0/)


