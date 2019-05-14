# ![](https://gravatar.com/avatar/11d3bc4c3163e3d238d558d5c9d98efe?s=64) aptible/postgresql

[![Docker Repository on Quay.io](https://quay.io/repository/aptible/postgresql/status "Docker Repository on Quay.io")](https://quay.io/repository/aptible/postgresql)
[![Build Status](https://travis-ci.org/aptible/docker-postgresql.svg?branch=master)](https://travis-ci.org/aptible/docker-postgresql)

[![](http://dockeri.co/image/aptible/postgresql)](https://registry.hub.docker.com/u/aptible/postgresql/)

PostgreSQL, on top of Debian Jessie.

## Installation and Usage

    docker pull quay.io/aptible/postgresql:${VERSION:-latest}

This is an image conforming to the [Aptible database specification](https://support.aptible.com/topics/paas/deploy-custom-database/). To run a server for development purposes, execute

    docker create --name data quay.io/aptible/postgresql
    docker run --volumes-from data -e USERNAME=aptible -e PASSPHRASE=pass -e DATABASE=db quay.io/aptible/postgresql --initialize
    docker run --volumes-from data -P quay.io/aptible/postgresql

The first command sets up a data container named `data` which will hold the configuration and data for the database. The second command creates a PostgreSQL instance with a username, passphrase and database name of your choice. The third command starts the database server.

### SSL

The PostgreSQL server is configured to enforce SSL for any TCP connection. It uses a self-signed certificate generated at startup time, or a certificate / key pair found in SSL_CERTIFICATE and SSL_KEY.

## Available Versions (Tags)

* `latest`: Currently PostgreSQL 11
* `11`: PostgreSQL 11
* `10`: PostgreSQL 10
* `9.6`: PostgreSQL 9.6
* `9.5`: PostgreSQL 9.5
* `9.4`: PostgreSQL 9.4
* `9.3`: PostgreSQL 9.3 (EOL 2018-11-08)

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2019 [Aptible](https://www.aptible.com) and contributors.
