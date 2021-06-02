# PostgreSQL Management 101
```bash
systemctl status postgresql.service
su
su -l postgres

#check port
cat /etc/services | grep postgresql
```

CLI:
+ psql

## Load  sample
```
psql
CREATE DATABASE dvdrental;
\q
psql dvdrental < /home/slbtty/workbench-dbms/devrental_/dvdrental.rental
```
# Rune .sql

```
psql -d some_database -f nice.sql
```
# Misc

default data dir

/var/lib/postgres/data/

pSQL Use cluster->databases->schemas hierarchy
-> MySql only use schemas

TODO:
+ .pgpass?
+ Important feature -> PostGIS