
# PGCOPYDB

This repository contains dockerfile, docker-compose and deployment to run pgcopydb in docker or kubernetes.

## Installation

Run this in docker or kubernetes.

```bash
  git clone https://github.com/asabhi6776/pgcopydb.git
  cd pgcopydb
  docker-compose up -d
  # In kubernetes
  kubectl apply -f deployment.yaml
```

## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`PGCOPYDB_SOURCE_PGURI='port=5432 hostsource_pg_ip dbname=dbname user=username password=password'`

`PGCOPYDB_TARGET_PGURI='port=5432 host=destination_pg_ip dbname=dbname user=username password=password'`

## Documentation

[Documentation](https://pgcopydb.readthedocs.io/)

## License

[MIT](https://choosealicense.com/licenses/mit/)
