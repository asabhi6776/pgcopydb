FROM --platform=amd64 ubuntu:22.04

RUN apt-get update ; apt-get --no-install-recommends install curl wget git ca-certificates lsb-release gnupg -y



RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7FCC7D46ACCC4CF8 


RUN apt-get update ; apt-get install pgcopydb -y

RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt-get update ; apt-get install postgresql-client-15 -y

ENTRYPOINT [ "pgcopydb", "copy-db",  "--table-jobs", "2", "--index-jobs", "2" ]