# Artifactory with MySQL Data Base

# Proof of Concept

Spin up an Artifactory using MySQL Data Bate

## Environment Version

Must have Docker and Docker Compose.
Tested using follwing versions:
 - Docker version 17.09.0-ce, build afdb6d4
 - docker-compose version 1.16.1, build 6d1ac219

## Running

```bash
# make sure you have execution privileges
$ chmod +x run.sh

# Spining up
$ ./run.sh up
Spining up MySQL
artifactory_mysql_1 is up-to-date
waiting MySQL get ready
Spining up Artifactory
artifactory_mysql_1 is up-to-date
Creating artifactory_artifactory_1 ... 
Creating artifactory_artifactory_1 ... done
[fail] Artifactory is not health yet
[fail] Artifactory is not health yet
[fail] Artifactory is not health yet
[ok] Artifactory is Health!!

# Shutting down
$ ./run.sh down
Stopping artifactory_artifactory_1 ... done
Stopping artifactory_mysql_1       ... done
Removing artifactory_artifactory_1 ... done
Removing artifactory_mysql_1       ... done
Removing network artifactory_default
```

Access http://localhost:8081 to see if it is working.


