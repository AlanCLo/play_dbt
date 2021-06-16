# play_dbt
Just a play area for dbt after following some tutorials

Followed some tutes but using postgres instead of snowflake. Also added docker-compose to make it easy to start

Refs:
* https://github.com/davidgasquez/dbt-docker
* https://docs.getdbt.com/reference/warehouse-profiles/postgres-profile
* https://github.com/konosp/dbt-airflow-docker-compose
* https://github.com/jeremyholtzman/jrtests-learn-dbt


## run things

Start it up
```
# Build dbt container
docker build -t local/dbt .

# Run
export POSTGRES_PASSWORD=(pick a password)
### Edit profile_data/profiles.yml and update the password there too
docker-compose up -d

# Jump inside the container to run dbt commands
docker exec -it dbt bash
```

dbt commands to do inside the container
```
# test setup
dbt debug --config-dir

# browse
dbt list

# run
dbt run

# test
dbt test
```

Use adminer to check out the changes. Its at `DOCKER_IP:8080`

Stop it all
```
docker-compose down

# Remove the postgresql volume if you like with docker volume rm ...
```
