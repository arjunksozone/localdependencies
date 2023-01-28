#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "postgres" <<-EOSQL
    CREATE DATABASE grafana;
    CREATE DATABASE ozonekong;
    CREATE DATABASE ozoneglobalkong;
    GRANT ALL PRIVILEGES ON DATABASE grafana TO postgres;
    GRANT ALL PRIVILEGES ON DATABASE ozonekong TO postgres;
    GRANT ALL PRIVILEGES ON DATABASE ozoneglobalkong TO postgres;
EOSQL