#! /bin/bash
docker rm m2m-postgresSQL
docker run --name m2m-postgresSQL -e POSTGRES_PASSWORD=postgres -e  POSTGRES_DB=aimlink -p 5432:5432 -d postgres:9.4
