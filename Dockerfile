FROM postgres:16

RUN apt-get update && apt-get install -y \
    postgresql-server-dev-16 \
    build-essential \
    && rm -rf /var/lib/apt/lists

COPY pgbigm/pg_bigm-1.2-20240606.tar.gz /tmp/

RUN cd /tmp \
    && tar zxf pg_bigm-1.2-20240606.tar.gz \
    && cd pg_bigm-1.2-20240606 \
    && make USE_PGXS=1 PG_CONFIG=/usr/lib/postgresql/16/bin/pg_config \
    && make USE_PGXS=1 PG_CONFIG=/usr/lib/postgresql/16/bin/pg_config install \
    && cd /tmp \
    && rm -rf pg_bigm-x.y-YYYYMMDD pg_bigm-x.y-YYYYMMDD.tar.gz