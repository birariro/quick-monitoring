CREATE USER 'prometheus-exporter'@'%' IDENTIFIED BY '0000' WITH MAX_USER_CONNECTIONS 3;
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'prometheus-exporter'@'%';